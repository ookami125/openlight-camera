package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.engine.Resource;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class SimpleResource<T> implements Resource<T> {
    protected final T data;

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }

    public SimpleResource(T t) {
        if (t == null) {
            throw new NullPointerException("Data must not be null");
        }
        this.data = t;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final T get() {
        return this.data;
    }
}