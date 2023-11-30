package com.bumptech.glide.request.animation;

import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface GlideAnimation<R> {

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface ViewAdapter {
        Drawable getCurrentDrawable();

        View getView();

        void setDrawable(Drawable drawable);
    }

    boolean animate(R r, ViewAdapter viewAdapter);
}