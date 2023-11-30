#!/bin/bash

apktool b light_camera
apksigner sign --ks ../my-release-key.keystore --in light_camera/dist/light_camera.apk --out openlight_camera.apk --ks-pass file:../pass
adb uninstall openlight.co.lightcamera
adb install openlight_camera.apk
echo "Logging to debug.log..."
adb logcat > debug.log
