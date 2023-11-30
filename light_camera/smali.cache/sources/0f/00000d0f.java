package openlight.co.camera.proto;

import android.graphics.Rect;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class CameraCaptureRequestInfo {
    private boolean mAspectRatio;
    private int mAwbMode;
    private Rect mCropRegion;
    private float mEvOffset;
    private float mFNumber;
    private int mHdrMode;
    private boolean mIsDisableCropping;
    private int mOrientation = 1;
    private int mOrientationAngle = 0;
    private int mSceneMode;
    private int mUserRating;
    private int mViewPreset;

    public CameraCaptureRequestInfo(float f) {
        this.mEvOffset = f;
    }

    public void setFNumber(float f) {
        this.mFNumber = f;
    }

    public float getFNumber() {
        return this.mFNumber;
    }

    public void setEvOffset(float f) {
        this.mEvOffset = f;
    }

    public float getEvOffset() {
        return this.mEvOffset;
    }

    public void setDisableCropping(boolean z) {
        this.mIsDisableCropping = z;
    }

    public boolean getDisableCropping() {
        return this.mIsDisableCropping;
    }

    public void setHdrMode(int i) {
        this.mHdrMode = i;
    }

    public int getHdrMode() {
        return this.mHdrMode;
    }

    public void setViewPreset(int i) {
        this.mViewPreset = i;
    }

    public int getViewPreset() {
        return this.mViewPreset;
    }

    public void setSceneMode(int i) {
        this.mSceneMode = i;
    }

    public int getSceneMode() {
        return this.mSceneMode;
    }

    public void setAwbMode(int i) {
        this.mAwbMode = i;
    }

    public int getAwbMode() {
        return this.mAwbMode;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setOrientationAngle(int i) {
        this.mOrientationAngle = i;
    }

    public int getOrientationAngle() {
        return this.mOrientationAngle;
    }

    public void setUserRating(int i) {
        this.mUserRating = i;
    }

    public int getUserRating() {
        return this.mUserRating;
    }

    public void setAspectRatio(boolean z) {
        this.mAspectRatio = z;
    }

    public boolean getAspectRatio() {
        return this.mAspectRatio;
    }

    public void setCrop(Rect rect) {
        this.mCropRegion = rect;
    }

    public Rect getCrop() {
        return this.mCropRegion;
    }
}