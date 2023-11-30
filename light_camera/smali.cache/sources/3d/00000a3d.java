package com.fihtdc.UploadAgentService.adapter;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.fihtdc.UploadAgentService.data.DeviceID;
import java.lang.reflect.Method;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FihDualTelephonyManager {
    public static final int PHONE_TYPE_CDMA_PHONE = 2;
    public static final int PHONE_TYPE_GSM_PHONE = 1;
    public static final int PHONE_TYPE_NO_PHONE = 0;
    public static final int PHONE_TYPE_SIP_PHONE = 3;
    private static final int SDK_INT_LOLLIPOP = 21;
    private static final String TAG = "com.fihtdc.AprUploadService";

    public static DeviceID getDeviceID(Context context) {
        int i = Build.VERSION.SDK_INT;
        Log.i(TAG, "Android SDK: " + i);
        if (i < 21) {
            Log.i(TAG, "getDeviceIDFor4X");
            return getDeviceIDFor4X(context);
        }
        Log.i(TAG, "getDeviceIDFor5X");
        return getDeviceIDFor5X(context);
    }

    private static DeviceID getDeviceIDFor5X(Context context) {
        DeviceID deviceID = new DeviceID();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            Class<?> cls = Class.forName("android.telephony.TelephonyManager");
            Method method = cls.getMethod("getDeviceId", Integer.TYPE);
            Method method2 = cls.getMethod("getCurrentPhoneType", null);
            String str = (String) method.invoke(telephonyManager, 0);
            String str2 = (String) method.invoke(telephonyManager, 1);
            int intValue = ((Integer) method2.invoke(telephonyManager, null)).intValue();
            if (1 == intValue) {
                deviceID.Imei = str;
            } else if (2 == intValue) {
                deviceID.Meid = str;
            }
            if (1 == intValue) {
                deviceID.Imei2 = str2;
            } else if (2 == intValue) {
                deviceID.Meid2 = str2;
            }
        } catch (Exception unused) {
            deviceID.Imei = "null";
            deviceID.Imei2 = "null";
            deviceID.Meid = "null";
            deviceID.Meid2 = "null";
            deviceID.hasFihTelephonyManager = false;
        }
        return deviceID;
    }

    private static DeviceID getDeviceIDFor4X(Context context) {
        DeviceID deviceID = new DeviceID();
        try {
            Class<?> cls = Class.forName("com.fihtdc.telephony.TelephonyManagerFihAdaptorDual");
            Method method = cls.getMethod("getDeviceId", Integer.TYPE);
            Method method2 = cls.getMethod("getPhoneType", Integer.TYPE);
            Object newInstance = cls.getConstructor(Context.class).newInstance(context);
            String str = (String) method.invoke(newInstance, 0);
            String str2 = (String) method.invoke(newInstance, 1);
            int intValue = ((Integer) method2.invoke(newInstance, 0)).intValue();
            int intValue2 = ((Integer) method2.invoke(newInstance, 1)).intValue();
            if (1 == intValue) {
                deviceID.Imei = str;
            } else if (2 == intValue) {
                deviceID.Meid = str;
            }
            if (1 == intValue2) {
                deviceID.Imei2 = str2;
            } else if (2 == intValue2) {
                deviceID.Meid2 = str2;
            }
            deviceID.hasFihTelephonyManager = true;
        } catch (Exception unused) {
            deviceID.Imei = "null";
            deviceID.Imei2 = "null";
            deviceID.Meid = "null";
            deviceID.Meid2 = "null";
            deviceID.hasFihTelephonyManager = false;
        }
        return deviceID;
    }

    public static String getIMEI(Context context) {
        int i = Build.VERSION.SDK_INT;
        Log.i(TAG, "Android SDK: " + i);
        if (i < 21) {
            Log.i(TAG, "getIMEIFor4X");
            return getIMEIFor4X(context);
        }
        Log.i(TAG, "getIMEIFor5X");
        return getIMEIFor5X(context);
    }

    public static String getIMEIFor5X(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            Class<?> cls = Class.forName("android.telephony.TelephonyManager");
            return 1 == ((Integer) cls.getMethod("getCurrentPhoneType", null).invoke(telephonyManager, null)).intValue() ? (String) cls.getMethod("getDeviceId", Integer.TYPE).invoke(telephonyManager, 0) : "null";
        } catch (Exception unused) {
            return "null";
        }
    }

    private static String getIMEIFor4X(Context context) {
        try {
            Class<?> cls = Class.forName("com.fihtdc.telephony.TelephonyManagerFihAdaptorDual");
            Method method = cls.getMethod("getDeviceId", Integer.TYPE);
            Method method2 = cls.getMethod("getPhoneType", Integer.TYPE);
            Object newInstance = cls.getConstructor(Context.class).newInstance(context);
            return 1 == ((Integer) method2.invoke(newInstance, 0)).intValue() ? (String) method.invoke(newInstance, 0) : "null";
        } catch (Exception unused) {
            return "null";
        }
    }
}