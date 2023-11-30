package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.Resource;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface Transformation<T> {
    String getId();

    Resource<T> transform(Resource<T> resource, int i, int i2);
}