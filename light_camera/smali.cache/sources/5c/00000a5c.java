package com.google.gson;

import java.lang.reflect.Type;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface InstanceCreator<T> {
    T createInstance(Type type);
}