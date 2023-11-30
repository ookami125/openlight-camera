package android.support.transition;

import android.graphics.Matrix;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;

@RequiresApi(14)
/* loaded from: /tmp/jadx-11175800792829446388.dex */
interface ViewUtilsImpl {
    void clearNonTransitionAlpha(@NonNull View view);

    ViewOverlayImpl getOverlay(@NonNull View view);

    float getTransitionAlpha(@NonNull View view);

    WindowIdImpl getWindowId(@NonNull View view);

    void saveNonTransitionAlpha(@NonNull View view);

    void setAnimationMatrix(@NonNull View view, Matrix matrix);

    void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4);

    void setTransitionAlpha(@NonNull View view, float f);

    void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix);

    void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix);
}