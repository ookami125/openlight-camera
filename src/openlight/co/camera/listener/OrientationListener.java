package openlight.co.camera.listener;

import openlight.co.camera.enums.OrientationConfig;

public interface OrientationListener {
    String getListenerName();
    void onOrientationChange(OrientationConfig orientationConfig);
}
