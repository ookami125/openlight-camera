package openlight.co.camera.enums;

import java.util.ArrayList;
import java.util.List;
import openlight.co.camera.R;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum FtuView {
    WELCOME_SCREEN(0),
    ZOOM_SCREEN(R.string.ftu_tutorial_zoom),
    PRIME_SCREEN(R.string.ftu_tutorial_zoom),
    WHEEL_SCREEN(R.string.ftu_tutorial_exposure),
    FOCUS_SCREEN(R.string.ftu_tutorial_focus),
    FINISH_SCREEN(0),
    EDIT_IMAGE(R.string.ftu_tutorial_edit),
    IMAGE_QUALITY(R.string.ftu_tutorial_image_quality),
    FOCUS_FAILED(0),
    VIDEO_SCREEN(R.string.ftu_tutorial_video),
    VIDEO_SCREEN_SPECS(R.string.ftu_tutorial_video),
    VIDEO_SCREEN_LIMITATION(R.string.ftu_tutorial_video),
    VIDEO_SCREEN_FINISH(R.string.ftu_tutorial_video);
    
    private static final String TAG = FtuView.class.getSimpleName();
    private final int mResId;

    FtuView(int i) {
        this.mResId = i;
    }

    public int getResId() {
        return this.mResId;
    }

    public FtuView getNext() {
        String str = TAG;
        LogUtil.d(str, "FTU next ordinal : " + ordinal());
        if (ordinal() < values().length - 1) {
            return values()[ordinal() + 1];
        }
        return null;
    }

    public static FtuView getFtuViewFromResId(int i) {
        FtuView[] values;
        for (FtuView ftuView : values()) {
            if (ftuView.getResId() == i) {
                return ftuView;
            }
        }
        throw new IllegalArgumentException("No matching Ftu view found for resource id " + i);
    }

    public static List<Integer> getFtuLabelResourceIds() {
        ArrayList arrayList = new ArrayList();
        for (FtuView ftuView : values()) {
            arrayList.add(Integer.valueOf(ftuView.getResId()));
        }
        return arrayList;
    }
}