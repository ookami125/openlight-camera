package openlight.co.camera;

import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Environment;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import openlight.co.camera.CameraMode;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.utils.LogUtil;

public class CameraInfo {
    private static final String TAG = "CameraInfo";
    public static final int DIGITAL_ZOOM_LEVELS_PER_PRIME_LENS = 26;
    public static final int IMAGE_RESOLUTION_DISPLAYED_MAX = 52;
    private static final int IMAGE_RESOLUTION_MIN = 13;
    private static final int LIGHT_RAW10 = 0x30;
    public static final float MINIMUM_FOCAL_LENGTH = 2.8f;
    public static final float NO_ZOOM = 1.0f;
    private static final int NUMBER_OF_PRIME_LENSES_SUPPORTED = 2;
    public static final float PRIME_LENS_28 = 28.0f;
    public static final float PRIME_LENS_35 = 35.0f;
    public static final int TOTAL_ZOOM_LEVELS = 53;
    private static final int ZOOM_TO_LENS_INFO_FOCAL_LENGTH_FACTOR = 10;

    private static CameraInfo sInstance;

    private float mABZoomStepSize;
    private float mBAFocalLengthRatio = 1.0f;
    private float mBCZoomStepSize;
    private float mCAFocalLengthRatio = 1.0f;
    private float mCBFocalLengthRatio = 1.0f;
    private CameraCharacteristics mCameraCharacteristics;
    private String mCameraId;
    private final boolean mCapableCameraAvailable;
    private float mDefaultToMinFocalLengthRatio = 1.0f;
    private int mImageResolutionABFactor;
    private int mImageResolutionBCFactor;
    private boolean mIsAutoFocusSupported;
    private Size mLargestJpegOutputSize;
    private Size mLargestRawOutputSize;
    private Size mLargestYuvOutputSize;
    private float[] mLensesFocalLengths;
    private float mMaxDigitalZoom = 1.0f;
    private float mMaxFocalLengthLens;
    private int mMaxNumOfFaces;
    private float mMaxToDefaultFocalLengthRatio = 1.0f;
    private float mMaxToMinZoomRatio = 1.0f;
    private float mMinFocalLengthLens;
    private int mNumberOfLenses;
    private int mRawFormat;
    private Rect mSensorActiveArraySize;
    private List<Float> mSimulatedPrimeFocalLengthRatios = new ArrayList<>();
    private StreamConfigurationMap mStreamConfigurationMap;
    private Range<Integer> mSupportedAERange;
    private Rational mSupportedAeStep;

    private CameraInfo() {
        mCapableCameraAvailable = loadCameraCapabilities();
    }

    public static synchronized CameraInfo get() {
        if (sInstance == null) {
            sInstance = new CameraInfo();
        }
        return sInstance;
    }

    private boolean checkAutoFocusSupport(CameraCharacteristics chars) {
        Float minFocusDist = (Float) chars.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE);
        if (minFocusDist == null) return true;
        return minFocusDist.floatValue() == 0.0f;
    }

    private static boolean doesCameraSupportRaw(CameraCharacteristics chars) {
        int[] capabilities = (int[]) chars.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (capabilities == null) return false;
        for (int cap : capabilities) {
            LogUtil.d(TAG, "Capability " + cap);
            if (cap == 3) return true;
        }
        return false;
    }

    private static int getRawSensorFormatType() {
        String model = "";
        try (BufferedReader reader = new BufferedReader(new FileReader("/sys/firmware/devicetree/base/model"))) {
            String line;
            while ((line = reader.readLine()) != null) {
                model = model.concat(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return model.contains("LFC") ? 0x30 : 0x20;
    }

    @SuppressWarnings("unchecked")
    private boolean loadCameraCapabilities() {
        LogUtil.d(TAG, "External Storage: " + Environment.getExternalStorageDirectory());
        try {
            CameraManager manager = (CameraManager) CameraApp.get().getSystemService(CameraManager.class);
            if (manager == null) {
                LogUtil.e(TAG, "This device doesn't support Camera2 API");
                return false;
            }
            String[] cameraIds = manager.getCameraIdList();
            for (int i = 0; i < cameraIds.length; i++) {
                String cameraId = cameraIds[i];
                LogUtil.d(TAG, "Camera ID: " + cameraId);
                CameraCharacteristics chars = manager.getCameraCharacteristics(cameraId);
                Integer facing = (Integer) chars.get(CameraCharacteristics.LENS_FACING);
                if (facing != null && facing == 0) {
                    LogUtil.w(TAG, "Skipping camera since not rear facing " + cameraId);
                    continue;
                }
                if (facing != null && facing == 2) {
                    LogUtil.w(TAG, "Skipping camera since not rear facing " + cameraId);
                    continue;
                }
                if (!doesCameraSupportRaw(chars)) {
                    LogUtil.w(TAG, "Skipping camera, does not support raw " + cameraId);
                    continue;
                }
                mIsAutoFocusSupported = checkAutoFocusSupport(chars);
                mSensorActiveArraySize = (Rect) chars.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
                Float maxDigitalZoom = (Float) chars.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
                if (maxDigitalZoom != null) {
                    mMaxDigitalZoom = maxDigitalZoom;
                }
                LogUtil.d(TAG, "Max Digital Zoom: " + mMaxDigitalZoom);
                mSupportedAERange = (Range<Integer>) chars.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
                mSupportedAeStep = (Rational) chars.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
                CameraCharacteristics focalChars = manager.getCameraCharacteristics(cameraId);
                mLensesFocalLengths = (float[]) focalChars.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS);
                Integer maxFaces = (Integer) chars.get(CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT);
                if (maxFaces != null) {
                    mMaxNumOfFaces = maxFaces;
                }
                mMaxFocalLengthLens = mMinFocalLengthLens = mLensesFocalLengths[0];
                mNumberOfLenses = mLensesFocalLengths.length;
                if (mNumberOfLenses > 1) {
                    Arrays.sort(mLensesFocalLengths);
                    mMinFocalLengthLens = mLensesFocalLengths[0];
                    mMaxFocalLengthLens = mLensesFocalLengths[mNumberOfLenses - 1];
                    mMaxToMinZoomRatio = mMaxFocalLengthLens / mMinFocalLengthLens;
                }
                LogUtil.d(TAG, "mMaxFocalLengthLens:  " + mMaxFocalLengthLens);
                LogUtil.d(TAG, "mMinFocalLengthLens:  " + mMinFocalLengthLens);
                LogUtil.d(TAG, "maxToMinFocalLengthRatio:  " + mMaxToMinZoomRatio);
                mStreamConfigurationMap = (StreamConfigurationMap) chars.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                if (mStreamConfigurationMap != null) {
                    mLargestJpegOutputSize = (Size) Collections.max(
                        Arrays.asList(mStreamConfigurationMap.getOutputSizes(0x100)),
                        new CompareSizesByArea());
                }
                mRawFormat = getRawSensorFormatType();
                mLargestRawOutputSize = (Size) Collections.max(
                    Arrays.asList(mStreamConfigurationMap.getOutputSizes(mRawFormat)),
                    new CompareSizesByArea());
                LogUtil.d(TAG, " RAW_SENSOR: largest raw captured size: " + mLargestRawOutputSize.getWidth() + " : " + mLargestRawOutputSize.getHeight());
                Size[] yuvSizes = mStreamConfigurationMap.getOutputSizes(0x23);
                for (int j = 0; j < yuvSizes.length; j++) {
                    LogUtil.d(TAG, " Looping through size: " + yuvSizes[j].getWidth() + " : " + yuvSizes[j].getHeight());
                    if (yuvSizes[j].getWidth() > 0x500 || yuvSizes[j].getHeight() > 0x2d0) {
                        continue;
                    }
                    mLargestYuvOutputSize = new Size(yuvSizes[j].getWidth(), yuvSizes[j].getHeight());
                    break;
                }
                if (mLargestYuvOutputSize == null) {
                    LogUtil.w(TAG, "This camera does not support the desired YUV size");
                    continue;
                }
                LogUtil.d(TAG, " largestYUV size: " + mLargestYuvOutputSize.getWidth() + " : " + mLargestYuvOutputSize.getHeight());
                if (mNumberOfLenses > 1) {
                    mBAFocalLengthRatio = mLensesFocalLengths[1] / mMinFocalLengthLens;
                    mABZoomStepSize = (mBAFocalLengthRatio - 1) / ((mLensesFocalLengths[1] - mMinFocalLengthLens) * 10);
                    mImageResolutionABFactor = Math.round(mLensesFocalLengths[1] * 10 * mLensesFocalLengths[1] * 10 * IMAGE_RESOLUTION_MIN);
                }
                if (mNumberOfLenses > 2) {
                    mCAFocalLengthRatio = mLensesFocalLengths[2] / mMinFocalLengthLens;
                    mCBFocalLengthRatio = mLensesFocalLengths[2] / mLensesFocalLengths[1];
                    mBCZoomStepSize = (mCBFocalLengthRatio - 1) / ((mLensesFocalLengths[2] - mLensesFocalLengths[1]) * 10);
                    mImageResolutionBCFactor = Math.round(mLensesFocalLengths[2] * 10 * mLensesFocalLengths[2] * 10 * IMAGE_RESOLUTION_MIN);
                }
                LogUtil.d(TAG, "Lens Ratios BA " + mBAFocalLengthRatio + " CA " + mCAFocalLengthRatio + " CB " + mCBFocalLengthRatio);
                CameraMode mode = CameraMode.getMode(CamPrefsFactory.get().getStringValue("camera_mode_setting"));
                mDefaultToMinFocalLengthRatio = SimulatedPrimeFocalLengths.getDefaultRelativeMin(mMinFocalLengthLens, mode);
                mSimulatedPrimeFocalLengthRatios = SimulatedPrimeFocalLengths.getAllPrimeFocalLength(mMinFocalLengthLens);
                mMaxToDefaultFocalLengthRatio = SimulatedPrimeFocalLengths.getMaxDefaultLengthRatio(mMaxFocalLengthLens, mode);
                mCameraCharacteristics = chars;
                mCameraId = cameraId;
                return true;
            }
        } catch (CameraAccessException | NullPointerException e) {
            LogUtil.e(TAG, "Exception getting camera details", e);
        }
        LogUtil.e(TAG, "This device doesn't support the configurations we need.");
        return false;
    }

    public float getABZoomStepSize() { return mABZoomStepSize; }
    public float getBACamerasFocalLengthRatio() { return mBAFocalLengthRatio; }
    public float getBCZoomStepSize() { return mBCZoomStepSize; }
    public float getCACamerasFocalLengthRatio() { return mCAFocalLengthRatio; }
    public float getCBCamerasFocalLengthRatio() { return mCBFocalLengthRatio; }
    public CameraCharacteristics getCameraCharacteristics() { return mCameraCharacteristics; }
    public String getCameraId() { return mCameraId; }
    public float getDefaultToMinFocalLengthRatio() { return mDefaultToMinFocalLengthRatio; }

    public int getFinalCaptureResolution(float zoom) {
        if (zoom / 10.0f >= mLensesFocalLengths[1]) {
            return Math.round((float) mImageResolutionBCFactor / (zoom * zoom));
        }
        return Math.round((float) mImageResolutionABFactor / (zoom * zoom));
    }

    public Size getLargestJpegOutputSize() { return mLargestJpegOutputSize; }
    public Size getLargestRawOutputSize() { return mLargestRawOutputSize; }
    public Size getLargestYuvOutputSize() { return mLargestYuvOutputSize; }
    public float[] getLensesFocalLengths() { return mLensesFocalLengths; }
    public float getMaxDigitalZoom() { return mMaxDigitalZoom; }
    public float getMaxFocalLengthLens() { return mMaxFocalLengthLens; }
    public int getMaxNumOfFaces() { return mMaxNumOfFaces; }
    public float getMaxToDefaultFocalLengthRatio() { return mMaxToDefaultFocalLengthRatio; }
    public float getMaxToMinZoomRatio() { return mMaxToMinZoomRatio; }
    public float getMinFocalLengthLens() { return mMinFocalLengthLens; }
    public int getNumberOfLenses() { return mNumberOfLenses; }
    public int getRawFormat() { return mRawFormat; }
    public Rect getSensorActiveArraySize() { return mSensorActiveArraySize; }
    public List<Float> getSimulatedPrimeFocalLengthRatios() { return mSimulatedPrimeFocalLengthRatios; }
    public StreamConfigurationMap getStreamConfigurationMap() { return mStreamConfigurationMap; }
    public Range<Integer> getSupportedAERange() { return mSupportedAERange; }
    public Rational getSupportedAeStep() { return mSupportedAeStep; }
    public boolean isAutoFocusSupported() { return mIsAutoFocusSupported; }
    public boolean isCapableCameraAvailable() { return mCapableCameraAvailable; }

    public boolean isOpticalZoomCapable() {
        return mMaxToMinZoomRatio > 1.0f;
    }

    private static class CompareSizesByArea implements Comparator<Size> {
        @Override
        public int compare(Size lhs, Size rhs) {
            return Long.compare((long) lhs.getWidth() * lhs.getHeight(),
                                (long) rhs.getWidth() * rhs.getHeight());
        }
    }

    public enum SimulatedPrimeFocalLengths {
        SIMULATED_FOCAL_LENGTH1(28) {
            @Override
            public boolean isDefault(CameraMode mode) {
                return mode.isVideo();
            }
        },
        SIMULATED_FOCAL_LENGTH2(35) {
            @Override
            public boolean isDefault(CameraMode mode) {
                return mode.isAuto() || mode.isIso() || mode.isShutter() || mode.isManual();
            }
        },
        SIMULATED_FOCAL_LENGTH3(75),
        SIMULATED_FOCAL_LENGTH4(150);

        private final int mPrimeFocalLength;

        SimulatedPrimeFocalLengths(int focalLength) {
            mPrimeFocalLength = focalLength;
        }

        public int getPrimeFocalLength() {
            return mPrimeFocalLength;
        }

        public boolean isDefault(CameraMode mode) {
            return false;
        }

        static List<Float> getAllPrimeFocalLength(float minFocalLen) {
            List<Float> list = new ArrayList<>();
            float scaled = minFocalLen * 10.0f;
            for (SimulatedPrimeFocalLengths f : values()) {
                list.add((float) f.getPrimeFocalLength() / scaled);
            }
            return list;
        }

        public static int getDefaultFocalLength(CameraMode mode) {
            for (SimulatedPrimeFocalLengths f : values()) {
                if (f.isDefault(mode)) return f.getPrimeFocalLength();
            }
            throw new IllegalArgumentException("No focal length registered as default ");
        }

        static float getDefaultRelativeMin(float minFocalLen, CameraMode mode) {
            return (float) getDefaultFocalLength(mode) / (minFocalLen * 10.0f);
        }

        static float getMaxDefaultLengthRatio(float maxFocalLen, CameraMode mode) {
            return (maxFocalLen * 10.0f) / (float) getDefaultFocalLength(mode);
        }
    }
}
