package com.bumptech.glide.load;

import java.io.OutputStream;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface Encoder<T> {
    boolean encode(T t, OutputStream outputStream);

    String getId();
}