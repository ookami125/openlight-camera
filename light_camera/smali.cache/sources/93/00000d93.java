package openlight.co.camera.view.dragger;

import android.graphics.RectF;
import openlight.co.camera.CameraMode;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ModeBoundary {
    private static final String TAG = "ModeBoundary";
    private final CameraMode mMode;
    public final RectF mRect;

    public ModeBoundary(CameraMode cameraMode, RectF rectF) {
        this.mMode = cameraMode;
        this.mRect = rectF;
    }

    public CameraMode getMode() {
        return this.mMode;
    }

    public RectF getBoundedRectangle() {
        return this.mRect;
    }

    public boolean isTouchWithinBounds(RectF rectF, float f, float f2) {
        return f2 > rectF.top && f2 < rectF.bottom;
    }
}