package openlight.co.camera;

import java.util.HashMap;
import java.util.Map;
import openlight.co.lib.utils.FeatureManager;

/* loaded from: /tmp/jadx-13519048814434252820.dex */
public enum CameraMode {
    AUTO(true, 2131624161, 2131624161, false, false, true) { // from class: openlight.co.camera.CameraMode.1
        @Override // openlight.co.camera.CameraMode
        public boolean isAuto() {
            return true;
        }
    },
    ISO(true, 2131624162, 2131624164, true, false, true) { // from class: openlight.co.camera.CameraMode.2
        @Override // openlight.co.camera.CameraMode
        public boolean isIso() {
            return true;
        }
    },
    SHUTTER(true, 2131624166, 2131624165, false, true, true) { // from class: openlight.co.camera.CameraMode.3
        @Override // openlight.co.camera.CameraMode
        public boolean isShutter() {
            return true;
        }
    },
    MANUAL(true, 2131624163, 2131624163, true, true, false) { // from class: openlight.co.camera.CameraMode.4
        @Override // openlight.co.camera.CameraMode
        public boolean isManual() {
            return true;
        }
    },
    VIDEO(FeatureManager.get().getBoolean("video.feature", true), 2131624169, 2131624168, false, false, false) { // from class: openlight.co.camera.CameraMode.5
        @Override // openlight.co.camera.CameraMode
        public boolean isVideo() {
            return true;
        }
    };
    
    private static Map<Integer, CameraMode> mEnabledModes;
    private final boolean mEvAdjustable;
    private final boolean mIsEnabled;
    private final boolean mIsoAdjustable;
    private final int mResId;
    private final int mShortResId;
    private final boolean mSsAdjustable;

    public boolean isAuto() {
        return false;
    }

    public boolean isIso() {
        return false;
    }

    public boolean isManual() {
        return false;
    }

    public boolean isShutter() {
        return false;
    }

    public boolean isVideo() {
        return false;
    }

    CameraMode(boolean z, int i, int i2, boolean z2, boolean z3, boolean z4) {
        this.mIsEnabled = z;
        this.mResId = i;
        this.mShortResId = i2;
        this.mIsoAdjustable = z2;
        this.mSsAdjustable = z3;
        this.mEvAdjustable = z4;
    }

    public String getLabel() {
        return CameraApp.get().getResources().getString(this.mResId);
    }

    public String getShortLabel() {
        return CameraApp.get().getResources().getString(this.mShortResId);
    }

    public boolean isEvAdjustable() {
        return this.mEvAdjustable;
    }

    public boolean isIsoAdjustable() {
        return this.mIsoAdjustable;
    }

    public boolean isSsAdjustable() {
        return this.mSsAdjustable;
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public static CameraMode getModeByLabel(String str) {
        CameraMode[] values;
        if (str != null) {
            for (CameraMode cameraMode : values()) {
                if (str.contains(cameraMode.toString().toLowerCase())) {
                    return cameraMode;
                }
            }
        }
        throw new IllegalArgumentException("No matching mode found for label " + str);
    }

    public static CameraMode getMode(String str) {
        if (str != null) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException unused) {
                return getModeByLabel(str);
            }
        }
        throw new IllegalArgumentException("mode string is null");
    }

    public static Map<Integer, CameraMode> getEnabledModes() {
        CameraMode[] values;
        if (mEnabledModes == null) {
            mEnabledModes = new HashMap();
            int i = 0;
            for (CameraMode cameraMode : values()) {
                if (cameraMode.isEnabled()) {
                    mEnabledModes.put(Integer.valueOf(i), cameraMode);
                    i++;
                }
            }
        }
        return mEnabledModes;
    }

    public static CameraMode forIndex(int i) {
        return getEnabledModes().get(Integer.valueOf(i));
    }

    public static int indexForMode(CameraMode cameraMode) {
        for (Map.Entry<Integer, CameraMode> entry : getEnabledModes().entrySet()) {
            if (entry.getValue().equals(cameraMode)) {
                return entry.getKey().intValue();
            }
        }
        throw new IllegalArgumentException("No matching index found for mode " + cameraMode);
    }

    public static String[] getLabels() {
        Map<Integer, CameraMode> enabledModes = getEnabledModes();
        String[] strArr = new String[enabledModes.size()];
        for (Map.Entry<Integer, CameraMode> entry : enabledModes.entrySet()) {
            strArr[entry.getKey().intValue()] = entry.getValue().getLabel();
        }
        return strArr;
    }

    public static String[] getShortLabels() {
        Map<Integer, CameraMode> enabledModes = getEnabledModes();
        String[] strArr = new String[enabledModes.size()];
        for (Map.Entry<Integer, CameraMode> entry : enabledModes.entrySet()) {
            strArr[entry.getKey().intValue()] = entry.getValue().getShortLabel();
        }
        return strArr;
    }

    public static int getMaxIndex() {
        return getEnabledModes().size() - 1;
    }

    public static boolean isPictureMode(CameraMode cameraMode) {
        return cameraMode == AUTO || cameraMode == ISO || cameraMode == SHUTTER || cameraMode == MANUAL;
    }

    public static boolean isVideoMode(CameraMode cameraMode) {
        return cameraMode == VIDEO;
    }
}