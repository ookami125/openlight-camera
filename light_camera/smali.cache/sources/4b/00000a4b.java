package com.google.gson;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface ExclusionStrategy {
    boolean shouldSkipClass(Class<?> cls);

    boolean shouldSkipField(FieldAttributes fieldAttributes);
}