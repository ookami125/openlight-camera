package openlight.co.camera.enums;

import java.util.HashMap;
import openlight.co.camera.R;
import openlight.co.camera.utils.CamPrefsUtils;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum MeteringMode {
    DEFAULT(CamPrefsUtils.CAM_TOUCH_WEIGHTED, R.drawable.metering_spot_weighted_4x, R.drawable.metering_spot_weighted_selected_4x),
    CENTER(CamPrefsUtils.CAM_METERING_CENTER_WEIGHTED, R.drawable.metering_center_weighted_4x, R.drawable.metering_center_weighted_selected_4x);
    
    private static final HashMap<String, MeteringMode> sTagToMode = new HashMap<>();
    private final int mMeteringIcon;
    private final int mMeteringSelectedIcon;
    private final String mMeteringTag;

    static {
        MeteringMode[] values;
        for (MeteringMode meteringMode : values()) {
            sTagToMode.put(meteringMode.mMeteringTag, meteringMode);
        }
    }

    MeteringMode(String str, int i, int i2) {
        this.mMeteringTag = str;
        this.mMeteringIcon = i;
        this.mMeteringSelectedIcon = i2;
    }

    public int getMeteringIcon() {
        return this.mMeteringIcon;
    }

    public int getMeteringSelectedIcon() {
        return this.mMeteringSelectedIcon;
    }

    public static MeteringMode forTag(String str) {
        return sTagToMode.get(str);
    }
}