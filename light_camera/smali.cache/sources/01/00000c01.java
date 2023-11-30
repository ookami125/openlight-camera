package net.hockeyapp.android.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.Scanner;
import java.util.regex.Pattern;
import net.hockeyapp.android.UpdateInfoListener;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class VersionHelper {
    public static final String VERSION_MAX = "99.0";
    private int mCurrentVersionCode;
    private UpdateInfoListener mListener;
    private JSONObject mNewest;
    private ArrayList<JSONObject> mSortedVersions;

    private Object getSeparator() {
        return "<hr style='border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;' />";
    }

    public VersionHelper(Context context, String str, UpdateInfoListener updateInfoListener) {
        this.mListener = updateInfoListener;
        loadVersions(context, str);
        sortVersions();
    }

    private void loadVersions(Context context, String str) {
        this.mNewest = new JSONObject();
        this.mSortedVersions = new ArrayList<>();
        this.mCurrentVersionCode = this.mListener.getCurrentVersionCode();
        try {
            JSONArray jSONArray = new JSONArray(str);
            int currentVersionCode = this.mListener.getCurrentVersionCode();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                boolean z = true;
                boolean z2 = jSONObject.getInt("version") > currentVersionCode;
                if (jSONObject.getInt("version") != currentVersionCode || !isNewerThanLastUpdateTime(context, jSONObject.getLong("timestamp"))) {
                    z = false;
                }
                if (z2 || z) {
                    this.mNewest = jSONObject;
                    currentVersionCode = jSONObject.getInt("version");
                }
                this.mSortedVersions.add(jSONObject);
            }
        } catch (NullPointerException | JSONException unused) {
        }
    }

    private void sortVersions() {
        Collections.sort(this.mSortedVersions, new Comparator<JSONObject>() { // from class: net.hockeyapp.android.utils.VersionHelper.1
            @Override // java.util.Comparator
            public int compare(JSONObject jSONObject, JSONObject jSONObject2) {
                return jSONObject.getInt("version") > jSONObject2.getInt("version") ? 0 : 0;
            }
        });
    }

    public String getVersionString() {
        return failSafeGetStringFromJSON(this.mNewest, "shortversion", "") + " (" + failSafeGetStringFromJSON(this.mNewest, "version", "") + ")";
    }

    @SuppressLint({"SimpleDateFormat"})
    public String getFileDateString() {
        return new SimpleDateFormat("dd.MM.yyyy").format(new Date(failSafeGetLongFromJSON(this.mNewest, "timestamp", 0L) * 1000));
    }

    public long getFileSizeBytes() {
        boolean booleanValue = Boolean.valueOf(failSafeGetStringFromJSON(this.mNewest, "external", "false")).booleanValue();
        long failSafeGetLongFromJSON = failSafeGetLongFromJSON(this.mNewest, "appsize", 0L);
        if (booleanValue && failSafeGetLongFromJSON == 0) {
            return -1L;
        }
        return failSafeGetLongFromJSON;
    }

    private static String failSafeGetStringFromJSON(JSONObject jSONObject, String str, String str2) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException unused) {
            return str2;
        }
    }

    private static long failSafeGetLongFromJSON(JSONObject jSONObject, String str, long j) {
        try {
            return jSONObject.getLong(str);
        } catch (JSONException unused) {
            return j;
        }
    }

    public String getReleaseNotes(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("<html>");
        sb.append("<body style='padding: 0px 0px 20px 0px'>");
        Iterator<JSONObject> it = this.mSortedVersions.iterator();
        int i = 0;
        while (it.hasNext()) {
            JSONObject next = it.next();
            if (i > 0) {
                sb.append(getSeparator());
                if (z) {
                    sb.append(getRestoreButton(i, next));
                }
            }
            sb.append(getVersionLine(i, next));
            sb.append(getVersionNotes(i, next));
            i++;
        }
        sb.append("</body>");
        sb.append("</html>");
        return sb.toString();
    }

    private String getRestoreButton(int i, JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        String versionID = getVersionID(jSONObject);
        if (!TextUtils.isEmpty(versionID)) {
            sb.append("<a href='restore:" + versionID + "'  style='background: #c8c8c8; color: #000; display: block; float: right; padding: 7px; margin: 0px 10px 10px; text-decoration: none;'>Restore</a>");
        }
        return sb.toString();
    }

    private String getVersionID(JSONObject jSONObject) {
        try {
            return jSONObject.getString("id");
        } catch (JSONException unused) {
            return "";
        }
    }

    private String getVersionLine(int i, JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        int versionCode = getVersionCode(this.mNewest);
        int versionCode2 = getVersionCode(jSONObject);
        String versionName = getVersionName(jSONObject);
        sb.append("<div style='padding: 20px 10px 10px;'><strong>");
        if (i == 0) {
            sb.append("Newest version:");
        } else {
            sb.append("Version " + versionName + " (" + versionCode2 + "): ");
            if (versionCode2 != versionCode && versionCode2 == this.mCurrentVersionCode) {
                this.mCurrentVersionCode = -1;
                sb.append("[INSTALLED]");
            }
        }
        sb.append("</strong></div>");
        return sb.toString();
    }

    private int getVersionCode(JSONObject jSONObject) {
        try {
            return jSONObject.getInt("version");
        } catch (JSONException unused) {
            return 0;
        }
    }

    private String getVersionName(JSONObject jSONObject) {
        try {
            return jSONObject.getString("shortversion");
        } catch (JSONException unused) {
            return "";
        }
    }

    private String getVersionNotes(int i, JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        String failSafeGetStringFromJSON = failSafeGetStringFromJSON(jSONObject, "notes", "");
        sb.append("<div style='padding: 0px 10px;'>");
        if (failSafeGetStringFromJSON.trim().length() == 0) {
            sb.append("<em>No information.</em>");
        } else {
            sb.append(failSafeGetStringFromJSON);
        }
        sb.append("</div>");
        return sb.toString();
    }

    public static int compareVersionStrings(String str, String str2) {
        if (str == null || str2 == null) {
            return 0;
        }
        try {
            Scanner scanner = new Scanner(str.replaceAll("\\-.*", ""));
            Scanner scanner2 = new Scanner(str2.replaceAll("\\-.*", ""));
            scanner.useDelimiter("\\.");
            scanner2.useDelimiter("\\.");
            while (scanner.hasNextInt() && scanner2.hasNextInt()) {
                int nextInt = scanner.nextInt();
                int nextInt2 = scanner2.nextInt();
                if (nextInt < nextInt2) {
                    return -1;
                }
                if (nextInt > nextInt2) {
                    return 1;
                }
            }
            if (scanner.hasNextInt()) {
                return 1;
            }
            return scanner2.hasNextInt() ? -1 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean isNewerThanLastUpdateTime(Context context, long j) {
        if (context == null) {
            return false;
        }
        try {
            return j > (new File(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).sourceDir).lastModified() / 1000) + 1800;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String mapGoogleVersion(String str) {
        return (str == null || str.equalsIgnoreCase("L")) ? "5.0" : str.equalsIgnoreCase("M") ? "6.0" : str.equalsIgnoreCase("N") ? "7.0" : Pattern.matches("^[a-zA-Z]+", str) ? VERSION_MAX : str;
    }
}