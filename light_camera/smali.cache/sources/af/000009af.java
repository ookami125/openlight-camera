package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public abstract class GlideDrawable extends Drawable implements Animatable {
    public static final int LOOP_FOREVER = -1;
    public static final int LOOP_INTRINSIC = 0;

    public abstract boolean isAnimated();

    public abstract void setLoopCount(int i);
}