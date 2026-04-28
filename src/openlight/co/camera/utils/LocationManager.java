package openlight.co.camera.utils;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Criteria;
import android.location.GpsStatus;
import android.location.Location;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import openlight.co.camera.listener.LocationReceiver;
import openlight.co.lib.utils.LogUtil;
import openlight.co.lib.utils.Utils;

@SuppressLint("UseSparseArrays")
public class LocationManager {
    private static final String TAG = "LocationManager";
    private static final long LOCATION_INTERVAL_MS = TimeUnit.MINUTES.toMillis(5);
    private static final long LOCATION_TTL_MS = TimeUnit.MINUTES.toMillis(10);
    private static final long ALARM_INTERVAL_MS = LOCATION_INTERVAL_MS * 2;
    private static final String FILE_NAME_DISABLE_LOCATION = "disable_location";
    private static final String GEODETIC_FILE_NAME = "geodetic.json";
    private static final int LOCATION_UPDATE_DIST = 200;
    private static final int NMEA_LAT = 2;
    private static final int NMEA_LAT_REF = 3;
    private static final int NMEA_LNG = 4;
    private static final int NMEA_LNG_REF = 5;
    private static final int NMEA_MSL_ABOVE_WGS_84 = 11;
    private static final int SECS_PER_DEGREE = 3600;
    private static final boolean USE_ALARM = false;
    private static final Type POINTS_TYPE = new TypeToken<HashMap<Integer, HashMap<Integer, GeodeticInfo>>>(){}.getType();

    @SuppressLint("StaticFieldLeak")
    private static LocationManager sInstance;

    private final int[] SEARCH_OFFSETS = {0, -1, 1};
    private final Context mContext;
    private final Criteria mCriteria;
    private final boolean mEnabled;
    private final Gson mGson = new Gson();
    private Handler mHandler;
    private volatile Location mLocation;
    private final android.location.LocationManager mLocationManager;
    private PendingIntent mLocationUpdateIntent;
    private final GpsStatus.NmeaListener mNmeaListener;
    private final HashMap<Integer, HashMap<Integer, GeodeticInfo>> mPoints;
    private final Runnable mSaveRunnable;
    private final BroadcastReceiver mScreenOnReceiver;

    private LocationManager(Context context, boolean enabled) {
        mScreenOnReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                LogUtil.d(TAG, "mScreenOnReceiver onReceive()");
                requestLocationUpdate();
            }
        };

        mSaveRunnable = new Runnable() {
            @Override
            public void run() {
                synchronized (mPoints) {
                    BufferedWriter writer = null;
                    try {
                        writer = new BufferedWriter(new FileWriter(getGeodeticFile()));
                        mGson.toJson(mPoints, POINTS_TYPE, writer);
                    } catch (IOException e) {
                        LogUtil.e(TAG, "Couldn't write geodetic.json", e);
                    } finally {
                        Utils.closeQuietly(writer);
                    }
                }
            }
        };

        mNmeaListener = new GpsStatus.NmeaListener() {
            @Override
            public void onNmeaReceived(long timestamp, String nmea) {
                if (!nmea.startsWith("$GPGGA")) return;
                LogUtil.d(TAG, "NMEA @ " + new Date(timestamp) + " " + nmea);
                String[] parts = nmea.split(",");
                String altStr = parts[NMEA_MSL_ABOVE_WGS_84];
                if (altStr.isEmpty()) return;
                String latStr = parts[NMEA_LAT];
                if (latStr.isEmpty()) return;
                int latSign = "N".equals(parts[NMEA_LAT_REF]) ? 1 : -1;
                int latKey = latSign * box(nmeaCoordToDouble(latStr));
                int lngSign = "E".equals(parts[NMEA_LNG_REF]) ? 1 : -1;
                int lngKey = lngSign * box(nmeaCoordToDouble(parts[NMEA_LNG]));
                float altitude = Float.parseFloat(altStr);
                synchronized (mPoints) {
                    HashMap<Integer, GeodeticInfo> inner = mPoints.get(latKey);
                    if (inner == null) {
                        inner = new HashMap<>();
                        mPoints.put(latKey, inner);
                    }
                    GeodeticInfo info = inner.get(lngKey);
                    if (info == null) {
                        info = new GeodeticInfo();
                        inner.put(lngKey, info);
                    }
                    info.apply(altitude);
                    LogUtil.d(TAG, "Updated correction at " + latKey + "," + lngKey + " to " + info);
                    scheduleSave();
                }
            }
        };

        mContext = context.getApplicationContext();
        mEnabled = enabled;
        if (!enabled) {
            LogUtil.i(TAG, "Disabling location service calls");
        }

        mCriteria = new Criteria();
        mCriteria.setPowerRequirement(3);
        mCriteria.setHorizontalAccuracy(3);
        mCriteria.setAltitudeRequired(true);
        mCriteria.setVerticalAccuracy(2);
        mCriteria.setSpeedRequired(true);
        mCriteria.setSpeedAccuracy(2);
        mCriteria.setBearingRequired(true);
        mCriteria.setBearingAccuracy(2);

        mLocationManager = enabled
            ? (android.location.LocationManager) mContext.getSystemService(android.location.LocationManager.class)
            : null;

        File geodetic = getGeodeticFile();
        HashMap<Integer, HashMap<Integer, GeodeticInfo>> points = null;
        if (geodetic.exists()) {
            BufferedReader reader = null;
            try {
                reader = new BufferedReader(new FileReader(geodetic));
                points = mGson.fromJson(reader, POINTS_TYPE);
            } catch (FileNotFoundException e) {
                LogUtil.e(TAG, "Couldn't read geodetic.json", e);
            } finally {
                Utils.closeQuietly(reader);
            }
        }
        mPoints = points != null ? points : new HashMap<>();
    }

    public static void init(Context context) {
        File disableFile = new File(Environment.getExternalStorageDirectory(), FILE_NAME_DISABLE_LOCATION);
        boolean enabled = !disableFile.exists();
        sInstance = new LocationManager(context, enabled);
    }

    public static LocationManager get() {
        return sInstance;
    }

    private int box(double degrees) {
        return (int)(degrees * SECS_PER_DEGREE);
    }

    private File getGeodeticFile() {
        return new File(mContext.getFilesDir(), GEODETIC_FILE_NAME);
    }

    private PendingIntent getLocationUpdateIntent() {
        if (mLocationUpdateIntent == null) {
            Intent intent = new Intent("openlight.co.intent.LOCATION_UPDATE");
            intent.setClass(mContext, LocationReceiver.class);
            mLocationUpdateIntent = PendingIntent.getBroadcast(mContext, 0x87a76, intent, 0x8000000);
        }
        return mLocationUpdateIntent;
    }

    private double nmeaCoordToDouble(String nmea) {
        int dotIndex = nmea.indexOf('.');
        int degrees = 0;
        if (dotIndex >= 2) {
            degrees = Integer.parseInt(nmea.substring(0, dotIndex - 2));
        }
        float minutes = Float.parseFloat(nmea.substring(Math.max(0, dotIndex - 2)));
        double result = (double)(degrees + minutes / 60.0f);
        return (double)(int)(result * 1000000.0) / 1000000.0;
    }

    private void scheduleSave() {
        mHandler.removeCallbacks(mSaveRunnable);
        mHandler.postDelayed(mSaveRunnable, 1000L);
    }

    public void checkLocationIsValid() {
        long locationTime = mLocation != null ? mLocation.getTime() : 0L;
        long elapsed = System.currentTimeMillis() - locationTime;
        if (elapsed > LOCATION_TTL_MS) {
            LogUtil.d(TAG, "Location TTL exceeded, clearing location");
            mLocation = null;
        }
        if (elapsed > LOCATION_INTERVAL_MS) {
            LogUtil.d(TAG, "Location interval exceeded, requesting location");
            requestLocationUpdate();
        }
    }

    public float correctionForLatLng(double lat, double lng) {
        synchronized (mPoints) {
            int latKey = box(lat);
            int lngKey = box(lng);
            LogUtil.d(TAG, "Find correction at " + latKey + "," + lngKey);
            for (int offset : SEARCH_OFFSETS) {
                HashMap<Integer, GeodeticInfo> inner = mPoints.get(latKey + offset);
                if (inner == null) continue;
                for (int offset2 : SEARCH_OFFSETS) {
                    GeodeticInfo info = inner.get(lngKey + offset2);
                    if (info == null) continue;
                    LogUtil.d(TAG, "Found " + info + " at " + (latKey + offset) + "," + (lngKey + offset2));
                    return info.correction;
                }
            }
            return 0.0f;
        }
    }

    public Location getLocation() {
        checkLocationIsValid();
        return mLocation;
    }

    public void requestLocationUpdate() {
        startListening();
        if (mEnabled && PermissionsManager.hasLocationPermission(mContext)) {
            LogUtil.d(TAG, "request location update");
            mLocationManager.requestSingleUpdate(mCriteria, getLocationUpdateIntent());
        }
    }

    public void startListening() {
        if (!mEnabled || mHandler != null || !PermissionsManager.hasLocationPermission(mContext)) return;
        LogUtil.d(TAG, "startListening");
        PendingIntent intent = getLocationUpdateIntent();
        mLocationManager.requestLocationUpdates(LOCATION_INTERVAL_MS, 200.0f, mCriteria, intent);
        mHandler = new Handler(Looper.getMainLooper());
        mHandler.post(new Runnable() {
            @Override
            public void run() {
                mLocationManager.addNmeaListener(mNmeaListener);
            }
        });
        mContext.registerReceiver(mScreenOnReceiver, new IntentFilter("android.intent.action.SCREEN_ON"), null, mHandler);
    }

    public void updateLocation(Location location) {
        if (location != null) {
            LogUtil.d(TAG, "[GPS] Got location update " + location);
            mLocation = location;
        }
    }

    private static class GeodeticInfo implements Serializable {
        float correction;
        int count;

        void apply(float value) {
            correction = (correction * count + value) / (++count);
        }

        @Override
        public String toString() {
            return "GeodeticInfo{count=" + count + ", correction=" + correction + '}';
        }
    }
}
