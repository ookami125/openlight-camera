package openlight.co.lib.utils;

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class FeatureManager {
    private static final String FEATURE_PROP_FILE_NAME = "features.prop";
    private static final String TAG = "FeatureManager";

    private static final FeatureManager sInstance = new FeatureManager();

    private final Properties mProperties;

    private FeatureManager() {
        mProperties = new Properties();
        try (FileInputStream fis = new FileInputStream(
                new File(Environment.getExternalStorageDirectory(), FEATURE_PROP_FILE_NAME))) {
            mProperties.load(fis);
            Log.i(TAG, "Feature Property found, and properties loaded");
        } catch (IOException e) {
            Log.i(TAG, "Feature Property file not found, default properties used");
        }
    }

    public static FeatureManager get() {
        return sInstance;
    }

    public boolean getBoolean(String key) {
        return getBoolean(key, false);
    }

    public boolean getBoolean(String key, boolean defaultValue) {
        String value = mProperties.getProperty(key, null);
        return value != null ? Boolean.parseBoolean(value) : defaultValue;
    }

    public double getDouble(String key, double defaultValue) {
        String value = mProperties.getProperty(key, null);
        return value != null ? Double.parseDouble(value) : defaultValue;
    }

    public float getFloat(String key, float defaultValue) {
        String value = mProperties.getProperty(key, null);
        return value != null ? Float.parseFloat(value) : defaultValue;
    }

    public int getInt(String key) {
        String value = mProperties.getProperty(key, null);
        return value != null ? Integer.parseInt(value) : 0;
    }

    public int getInt(String key, int defaultValue) {
        String value = mProperties.getProperty(key, null);
        return value != null ? Integer.parseInt(value) : defaultValue;
    }

    public String getString(String key) {
        return mProperties.getProperty(key, null);
    }
}
