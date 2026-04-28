package openlight.co.camera.utils;

import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Pair;
import android.view.TextureView;
import android.view.ViewGroup;
import openlight.co.camera.CameraApp;
import openlight.co.camera.CameraInfo;
import openlight.co.camera.managers.CameraManager;
import openlight.co.camera.models.MeteringPoint;
import openlight.co.camera.view.level.Clamp;
import openlight.co.lib.utils.LogUtil;

public class MeteringRect {

    private static final String TAG = "MeteringRect";
    private static final MeteringRect sInstance = new MeteringRect();

    public static MeteringRect get() {
        return sInstance;
    }

    public Pair<MeteringRectangle, Point> getMeteringRectAndScreenPoint(
            MeteringPoint meteringPoint, TextureView textureView, boolean isCenter) {
        Rect sensorRect = CameraInfo.get().getSensorActiveArraySize();
        if (sensorRect == null) return null;

        CameraApp app = CameraApp.get();
        int touchBoxDimen = Util.getDimen(app, 0x7f070073);

        int sensorW = sensorRect.width();
        int sensorH = sensorRect.height();
        int viewW = textureView.getWidth();
        int viewH = textureView.getHeight();

        float scale;
        if (sensorW * viewH < sensorH * viewW) {
            scale = (float) sensorW / (float) viewW;
        } else {
            scale = (float) sensorH / (float) viewH;
        }

        LogUtil.d(TAG, "[METERING] Event:" + meteringPoint);

        int screenX, screenY;
        if (meteringPoint.isCenter()) {
            if (isCenter) {
                LogUtil.v(TAG, "[METERING] at center need to initial by value 0 0 0 0 0");
                MeteringRectangle zeroRect = new MeteringRectangle(new Rect(), 0);
                return Pair.create(zeroRect, null);
            } else {
                screenX = Util.getWidthOfScreen(app) / 2;
                screenY = Util.getHeightOfScreen(app) / 2;
            }
        } else {
            screenX = meteringPoint.getX();
            screenY = meteringPoint.getY();
        }

        Point screenPoint = new Point(screenX, screenY);
        LogUtil.v(TAG, "[METERING] Calculated Point: " + screenPoint);

        ViewGroup parent = (ViewGroup) textureView.getParent();
        screenX -= parent.getLeft();
        screenY -= parent.getTop();

        int sensorX = (int) (screenX * scale + Util.getCoordinateDifference(scale, sensorW, viewW));
        int sensorY = (int) (screenY * scale + Util.getCoordinateDifference(scale, sensorH, viewH));

        CaptureResult captureResult = CameraManager.get().getCaptureResultPerFrame();
        Rect cropRect = null;
        if (captureResult != null) {
            cropRect = (Rect) captureResult.get(CaptureResult.SCALER_CROP_REGION);
        }
        if (cropRect == null) {
            cropRect = sensorRect;
        }

        int halfBox = touchBoxDimen / 2;
        int left = sensorX - halfBox;
        int top = sensorY - halfBox;

        int clampedLeft = Clamp.clamp(left, cropRect.left, cropRect.right - touchBoxDimen);
        int clampedTop = Clamp.clamp(top, cropRect.top, cropRect.bottom - touchBoxDimen);

        if (clampedLeft < 0 || clampedTop < 0) return null;

        Rect focusRect = new Rect(clampedLeft, clampedTop,
                clampedLeft + touchBoxDimen, clampedTop + touchBoxDimen);
        LogUtil.d(TAG, "[METERING] Point: new Rect: " + focusRect);

        MeteringRectangle meteringRect = new MeteringRectangle(focusRect, 1000);
        return Pair.create(meteringRect, screenPoint);
    }
}
