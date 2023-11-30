package net.hockeyapp.android.utils;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.view.ViewCompat;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ViewHelper {
    public static Drawable getGradient() {
        return new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{ViewCompat.MEASURED_STATE_MASK, 0});
    }
}