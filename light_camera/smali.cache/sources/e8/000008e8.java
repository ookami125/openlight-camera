package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface DataFetcher<T> {
    void cancel();

    void cleanup();

    String getId();

    T loadData(Priority priority) throws Exception;
}