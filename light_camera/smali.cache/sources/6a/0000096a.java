package com.bumptech.glide.load.model;

import com.bumptech.glide.load.data.DataFetcher;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface ModelLoader<T, Y> {
    DataFetcher<Y> getResourceFetcher(T t, int i, int i2);
}