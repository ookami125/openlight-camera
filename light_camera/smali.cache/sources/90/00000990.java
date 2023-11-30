package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface BitmapDecoder<T> {
    Bitmap decode(T t, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) throws Exception;

    String getId();
}