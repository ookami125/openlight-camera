package openlight.co.camera.listener;

import openlight.co.camera.enums.OrientationConfig;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface OrientationListener {
    String getListenerName();

    void onOrientationChange(OrientationConfig orientationConfig);
}