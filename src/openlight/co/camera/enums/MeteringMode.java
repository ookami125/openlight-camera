package openlight.co.camera.enums;

import java.util.HashMap;

public enum MeteringMode {
    DEFAULT("touch-weighted", 0x7f080113, 0x7f080114),
    CENTER("center-weighted", 0x7f08010f, 0x7f080110);

    private static final HashMap<String, MeteringMode> sTagToMode = new HashMap<>();

    static {
        for (MeteringMode mode : values()) {
            sTagToMode.put(mode.mMeteringTag, mode);
        }
    }

    private final String mMeteringTag;
    private final int mMeteringIcon;
    private final int mMeteringSelectedIcon;

    MeteringMode(String meteringTag, int meteringIcon, int meteringSelectedIcon) {
        mMeteringTag = meteringTag;
        mMeteringIcon = meteringIcon;
        mMeteringSelectedIcon = meteringSelectedIcon;
    }

    public static MeteringMode forTag(String tag) {
        return sTagToMode.get(tag);
    }

    public int getMeteringIcon() { return mMeteringIcon; }
    public int getMeteringSelectedIcon() { return mMeteringSelectedIcon; }
}
