package openlight.co.camera.enums;

import java.util.ArrayList;
import java.util.List;
import openlight.co.lib.utils.LogUtil;

public enum FtuView {
    WELCOME_SCREEN(0),
    ZOOM_SCREEN(0x7f0e0075),
    PRIME_SCREEN(0x7f0e0075),
    WHEEL_SCREEN(0x7f0e0071),
    FOCUS_SCREEN(0x7f0e0072),
    FINISH_SCREEN(0),
    EDIT_IMAGE(0x7f0e0070),
    IMAGE_QUALITY(0x7f0e0073),
    FOCUS_FAILED(0),
    VIDEO_SCREEN(0x7f0e0074),
    VIDEO_SCREEN_SPECS(0x7f0e0074),
    VIDEO_SCREEN_LIMITATION(0x7f0e0074),
    VIDEO_SCREEN_FINISH(0x7f0e0074);

    private static final String TAG = FtuView.class.getSimpleName();

    private final int mResId;

    FtuView(int resId) {
        mResId = resId;
    }

    public static FtuView getFtuViewFromResId(int resId) {
        for (FtuView view : values()) {
            if (view.getResId() == resId) return view;
        }
        throw new IllegalArgumentException("No matching Ftu view found for resource id " + resId);
    }

    public static List<Integer> getFtuLabelResourceIds() {
        List<Integer> result = new ArrayList<>();
        for (FtuView view : values()) {
            result.add(view.getResId());
        }
        return result;
    }

    public FtuView getNext() {
        LogUtil.d(TAG, "FTU next ordinal : " + ordinal());
        FtuView[] all = values();
        return ordinal() < all.length - 1 ? all[ordinal() + 1] : null;
    }

    public int getResId() { return mResId; }
}
