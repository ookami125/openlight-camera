package openlight.co.camera.managers.capturerequest;

import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Range;

public class CaptureRequestBuilder {

    public static void setControlMode(CaptureRequest.Builder builder, int mode) {
        builder.set(CaptureRequest.CONTROL_MODE, mode);
    }

    public static void setAeMode(CaptureRequest.Builder builder, int mode) {
        builder.set(CaptureRequest.CONTROL_AE_MODE, mode);
    }

    public static void setAeLock(CaptureRequest.Builder builder, boolean lock) {
        builder.set(CaptureRequest.CONTROL_AE_LOCK, lock);
    }

    public static void setAeRegions(CaptureRequest.Builder builder, MeteringRectangle[] regions) {
        builder.set(CaptureRequest.CONTROL_AE_REGIONS, regions);
    }

    public static void setAePrecaptureTrigger(CaptureRequest.Builder builder, int trigger) {
        builder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, trigger);
    }

    public static void setAeTargetFpsRange(CaptureRequest.Builder builder, Range<Integer> range) {
        builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
    }

    public static void setAfMode(CaptureRequest.Builder builder, int mode) {
        builder.set(CaptureRequest.CONTROL_AF_MODE, mode);
    }

    public static void setAfRegions(CaptureRequest.Builder builder, MeteringRectangle[] regions) {
        builder.set(CaptureRequest.CONTROL_AF_REGIONS, regions);
    }

    public static void setAfTrigger(CaptureRequest.Builder builder, int trigger) {
        builder.set(CaptureRequest.CONTROL_AF_TRIGGER, trigger);
    }

    public static void setAwbMode(CaptureRequest.Builder builder, int mode) {
        builder.set(CaptureRequest.CONTROL_AWB_MODE, mode);
    }

    public static void setAwbLock(CaptureRequest.Builder builder, boolean lock) {
        builder.set(CaptureRequest.CONTROL_AWB_LOCK, lock);
    }

    public static void setFlashMode(CaptureRequest.Builder builder, int mode) {
        builder.set(CaptureRequest.FLASH_MODE, mode);
    }

    public static void setLensFocalLength(CaptureRequest.Builder builder, float length) {
        builder.set(CaptureRequest.LENS_FOCAL_LENGTH, length);
    }

    public static void setAeCompensation(CaptureRequest.Builder builder, int compensation) {
        builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, compensation);
    }

    public static void setExposureTime(CaptureRequest.Builder builder, long exposureTime) {
        builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, exposureTime);
    }

    public static void setSensitivity(CaptureRequest.Builder builder, int sensitivity) {
        builder.set(CaptureRequest.SENSOR_SENSITIVITY, sensitivity);
    }

    public static void setFrameDuration(CaptureRequest.Builder builder, long frameDuration) {
        builder.set(CaptureRequest.SENSOR_FRAME_DURATION, frameDuration);
    }

    public static void setScalarRegion(CaptureRequest.Builder builder, Rect region) {
        builder.set(CaptureRequest.SCALER_CROP_REGION, region);
    }

    public static void setJpegOrientation(CaptureRequest.Builder builder, int orientation) {
        builder.set(CaptureRequest.JPEG_ORIENTATION, orientation);
    }

    public static void setIsoPriority(CaptureRequest.Builder builder, int iso, int mode) {
        openlight.co.lightsdk.camera2.CaptureRequest.Builder.get(builder).setIsoPriority(iso, mode);
    }

    public static void setShutterPriority(CaptureRequest.Builder builder, long shutterSpeed, long frameDuration) {
        openlight.co.lightsdk.camera2.CaptureRequest.Builder.get(builder).setShutterPriority(shutterSpeed, frameDuration);
    }

    public static void setFocusType(CaptureRequest.Builder builder, int focusType) {
        openlight.co.lightsdk.camera2.CaptureRequest.Builder.get(builder).setFocusType(focusType);
    }

    public static void setStackedCaptureState(CaptureRequest.Builder builder, boolean enabled) {
        openlight.co.lightsdk.camera2.CaptureRequest.Builder.get(builder).enableStackedCaptureState(enabled);
    }

    public static boolean contains(int[] array, int value) {
        if (array == null) return false;
        for (int item : array) {
            if (item == value) return true;
        }
        return false;
    }
}
