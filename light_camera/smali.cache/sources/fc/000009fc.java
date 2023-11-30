package com.bumptech.glide.request;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface RequestCoordinator {
    boolean canNotifyStatusChanged(Request request);

    boolean canSetImage(Request request);

    boolean isAnyResourceSet();

    void onRequestSuccess(Request request);
}