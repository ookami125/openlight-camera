package openlight.co.lib.utils;

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FeatureManager {
    private static final String FEATURE_PROP_FILE_NAME = "features.prop";
    private static final String TAG = "FeatureManager";
    private static final FeatureManager sInstance = new FeatureManager();
    private final Properties mProperties = new Properties();

    public static FeatureManager get() {
        return sInstance;
    }

    public int getInt(String str) {
        String property = this.mProperties.getProperty(str, null);
        if (property == null) {
            return 0;
        }
        return Integer.parseInt(property);
    }

    public int getInt(String str, int i) {
        String property = this.mProperties.getProperty(str, null);
        return property == null ? i : Integer.parseInt(property);
    }

    public float getFloat(String str, float f) {
        String property = this.mProperties.getProperty(str, null);
        return property == null ? f : Float.parseFloat(property);
    }

    public double getDouble(String str, double d) {
        String property = this.mProperties.getProperty(str, null);
        return property == null ? d : Double.parseDouble(property);
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        String property = this.mProperties.getProperty(str, null);
        return property == null ? z : Boolean.parseBoolean(property);
    }

    public String getString(String str) {
        return this.mProperties.getProperty(str, null);
    }

    private FeatureManager() {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(Environment.getExternalStorageDirectory(), FEATURE_PROP_FILE_NAME));
            this.mProperties.load(fileInputStream);
            Log.i(TAG, "Feature Property found, and properties loaded");
            fileInputStream.close();
        } catch (IOException unused) {
            Log.i(TAG, "Feature Property file not found, default properties used");
        }
    }
}