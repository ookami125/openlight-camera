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
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import openlight.co.camera.CameraApp;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.utils.LogUtil;

public class CameraInfo {
    public static final int DIGITAL_ZOOM_LEVELS_PER_PRIME_LENS = 26;
    public static final int IMAGE_RESOLUTION_DISPLAYED_MAX = 52;
    private static final int IMAGE_RESOLUTION_MIN = 13;
    private static final int LIGHT_RAW10 = 48;
    public static final float MINIMUM_FOCAL_LENGTH = 2.8F;
    public static final float NO_ZOOM = 1.0F;
    private static final int NUMBER_OF_PRIME_LENSES_SUPPORTED = 2;
    public static final float PRIME_LENS_28 = 28.0F;
    public static final float PRIME_LENS_35 = 35.0F;
    private static final String TAG = "CameraInfo";
    public static final int TOTAL_ZOOM_LEVELS = 53;
    private static final int ZOOM_TO_LENS_INFO_FOCAL_LENGTH_FACTOR = 10;
    private static CameraInfo sInstance;
    private float mABZoomStepSize;
    private float mBAFocalLengthRatio = 1.0F;
    private float mBCZoomStepSize;
    private float mCAFocalLengthRatio = 1.0F;
    private float mCBFocalLengthRatio = 1.0F;
    private CameraCharacteristics mCameraCharacteristics;
    private String mCameraId;
    private final boolean mCapableCameraAvailable = this.loadCameraCapabilities();
    private float mDefaultToMinFocalLengthRatio = 1.0F;
    private int mImageResolutionABFactor;
    private int mImageResolutionBCFactor;
    private boolean mIsAutoFocusSupported;
    private Size mLargestJpegOutputSize;
    private Size mLargestRawOutputSize;
    private Size mLargestYuvOutputSize;
    private float[] mLensesFocalLengths;
    private float mMaxDigitalZoom = 1.0F;
    private float mMaxFocalLengthLens;
    private int mMaxNumOfFaces;
    private float mMaxToDefaultFocalLengthRatio = 1.0F;
    private float mMaxToMinZoomRatio = 1.0F;
    private float mMinFocalLengthLens;
    private int mNumberOfLenses;
    private int mRawFormat;
    private Rect mSensorActiveArraySize;
    private List mSimulatedPrimeFocalLengthRatios = new ArrayList();
    private StreamConfigurationMap mStreamConfigurationMap;
    private Range mSupportedAERange;
    private Rational mSupportedAeStep;

    private CameraInfo() {
    }

    private boolean checkAutoFocusSupport(CameraCharacteristics var1) {
        Float var3 = (Float)var1.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE);
        boolean var2;
        if (var3 != null && var3 != 0.0F) {
            var2 = false;
        } else {
            var2 = true;
        }

        return var2;
    }

    private static boolean doesCameraSupportRaw(CameraCharacteristics var0) {
        int[] var5 = (int[])var0.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (var5 != null) {
            int var2 = var5.length;

            for(int var1 = 0; var1 < var2; ++var1) {
                int var3 = var5[var1];
                String var6 = TAG;
                StringBuilder var4 = new StringBuilder();
                var4.append("Capability ");
                var4.append(var3);
                LogUtil.d(var6, var4.toString());
                if (var3 == 3) {
                    return true;
                }
            }
        }

        return false;
    }

    public static CameraInfo get() {
        synchronized(CameraInfo.class){}

        CameraInfo var0;
        try {
            if (sInstance == null) {
                var0 = new CameraInfo();
                sInstance = var0;
            }

            var0 = sInstance;
        } finally {
            ;
        }

        return var0;
    }

    private static int getRawSensorFormatType() {
        String result = "";
        BufferedReader reader = null;

        try {
            reader = new BufferedReader(new FileReader("/sys/firmware/devicetree/base/model"));

            String line;
            while ((line = reader.readLine()) != null) {
                result = result.concat(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        if (result.contains("LFC")) {
            return 48;
        } else {
            return 32;
        }
    }

    private boolean loadCameraCapabilities() {
        String var7 = TAG;
        StringBuilder var6 = new StringBuilder();
        var6.append("External Storage: ");
        var6.append(Environment.getExternalStorageDirectory());
        LogUtil.d(var7, var6.toString());

        label179: {
            Exception var10000;
            label178: {
                CameraManager var8;
                boolean var10001;
                try {
                    var8 = (CameraManager)CameraApp.get().getSystemService(CameraManager.class);
                } catch (NullPointerException var32) {
                   var10000 = var32;
                   var10001 = false;
                   break label178;
                }

                if (var8 == null) {
                   try {
                        LogUtil.e(TAG, "This device doesn't support Camera2 API");
                        return false;
                   } catch (NullPointerException var14) {
                       var10000 = var14;
                       var10001 = false;
                   }
                } else {
                    label183: {
                        int var4;
                        String[] var35;
                        try {
                            var35 = var8.getCameraIdList();
                            var4 = var35.length;
                        } catch (CameraAccessException var31) {
                            var10000 = var31;
                            var10001 = false;
                            break label183;
                        }

                        int var2 = 0;

                        String var33;
                        CameraCharacteristics var40;
                        while(true) {
                            if (var2 >= var4) {
                                break label179;
                            }

                            var33 = var35[var2];

                            String var9;
                            StringBuilder var10;
                            Integer var42;
                            try {
                                var9 = TAG;
                                var10 = new StringBuilder();
                                var10.append("Camera ID: ");
                                var10.append(var33);
                                LogUtil.d(var9, var10.toString());
                                var40 = var8.getCameraCharacteristics(var33);
                                var42 = (Integer)var40.get(CameraCharacteristics.LENS_FACING);
                            } catch (CameraAccessException var24) {
                                var10000 = var24;
                                var10001 = false;
                                break label183;
                            }

                            label166: {
                                label187: {
                                    if (var42 != null) {
                                       try {
                                            if (var42 == 0 || var42 == 2) {
                                                break label187;
                                            }
                                       } catch (NullPointerException var30) {
                                           var10000 = var30;
                                           var10001 = false;
                                           break label183;
                                       }
                                    }

                                    String var44;
                                   try {
                                        if (!doesCameraSupportRaw(var40)) {
                                            var44 = TAG;
                                            StringBuilder var41 = new StringBuilder();
                                            var41.append("Skipping camera, does not support raw ");
                                            var41.append(var33);
                                            LogUtil.w(var44, var41.toString());
                                            break label166;
                                        }
                                   } catch (NullPointerException var29) {
                                       var10000 = var29;
                                       var10001 = false;
                                       break label183;
                                   }

                                    Float var43;
                                    try {
                                        this.mIsAutoFocusSupported = this.checkAutoFocusSupport(var40);
                                        this.mSensorActiveArraySize = (Rect)var40.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
                                        var43 = (Float)var40.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
                                    } catch (NullPointerException var23) {
                                        var10000 = var23;
                                        var10001 = false;
                                        break label183;
                                    }

                                    if (var43 != null) {
                                        try {
                                            this.mMaxDigitalZoom = var43;
                                        } catch (NullPointerException var22) {
                                            var10000 = var22;
                                            var10001 = false;
                                            break label183;
                                        }
                                    }

                                    StringBuilder var11;
                                    try {
                                        var44 = TAG;
                                        var11 = new StringBuilder();
                                        var11.append("Max Digital Zoom: ");
                                        var11.append(this.mMaxDigitalZoom);
                                        LogUtil.d(var44, var11.toString());
                                        this.mSupportedAERange = (Range)var40.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
                                        this.mSupportedAeStep = (Rational)var40.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
                                        this.mLensesFocalLengths = (float[])var8.getCameraCharacteristics(var33).get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS);
                                        var42 = (Integer)var40.get(CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT);
                                    } catch (NullPointerException | CameraAccessException var21) {
                                        var10000 = var21;
                                        var10001 = false;
                                        break label183;
                                    }

                                    if (var42 != null) {
                                        try {
                                            this.mMaxNumOfFaces = var42;
                                        } catch (NullPointerException var20) {
                                            var10000 = var20;
                                            var10001 = false;
                                            break label183;
                                        }
                                    }

                                    try {
                                        float var1 = this.mLensesFocalLengths[0];
                                        this.mMaxFocalLengthLens = var1;
                                        this.mMinFocalLengthLens = var1;
                                        this.mNumberOfLenses = this.mLensesFocalLengths.length;
                                        if (this.mNumberOfLenses > 1) {
                                            Arrays.sort(this.mLensesFocalLengths);
                                            this.mMinFocalLengthLens = this.mLensesFocalLengths[0];
                                            this.mMaxFocalLengthLens = this.mLensesFocalLengths[this.mNumberOfLenses - 1];
                                            this.mMaxToMinZoomRatio = this.mMaxFocalLengthLens / this.mMinFocalLengthLens;
                                        }
                                    } catch (NullPointerException var19) {
                                        var10000 = var19;
                                        var10001 = false;
                                        break label183;
                                    }

                                    try {
                                        String var45 = TAG;
                                        var10 = new StringBuilder();
                                        var10.append("mMaxFocalLengthLens:  ");
                                        var10.append(this.mMaxFocalLengthLens);
                                        LogUtil.d(var45, var10.toString());
                                        var44 = TAG;
                                        var11 = new StringBuilder();
                                        var11.append("mMinFocalLengthLens:  ");
                                        var11.append(this.mMinFocalLengthLens);
                                        LogUtil.d(var44, var11.toString());
                                        var44 = TAG;
                                        var11 = new StringBuilder();
                                        var11.append("maxToMinFocalLengthRatio:  ");
                                        var11.append(this.mMaxToMinZoomRatio);
                                        LogUtil.d(var44, var11.toString());
                                        this.mStreamConfigurationMap = (StreamConfigurationMap)var40.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                                        if (this.mStreamConfigurationMap != null) {
                                            List var47 = Arrays.asList(this.mStreamConfigurationMap.getOutputSizes(256));
                                            CameraInfo.CompareSizesByArea var46 = new CameraInfo.CompareSizesByArea();
                                            this.mLargestJpegOutputSize = (Size)Collections.max(var47, var46);
                                        }
                                    } catch (NullPointerException var28) {
                                        var10000 = var28;
                                        var10001 = false;
                                        break label183;
                                    }

                                    int var5;
                                    Size[] var50;
                                    try {
                                        this.mRawFormat = getRawSensorFormatType();
                                        List var48 = Arrays.asList(this.mStreamConfigurationMap.getOutputSizes(this.mRawFormat));
                                        CameraInfo.CompareSizesByArea var49 = new CameraInfo.CompareSizesByArea();
                                        this.mLargestRawOutputSize = (Size)Collections.max(var48, var49);
                                        var44 = TAG;
                                        var11 = new StringBuilder();
                                        var11.append(" RAW_SENSOR: largest raw captured size: ");
                                        var11.append(this.mLargestRawOutputSize.getWidth());
                                        var11.append(" : ");
                                        var11.append(this.mLargestRawOutputSize.getHeight());
                                        LogUtil.d(var44, var11.toString());
                                        var50 = this.mStreamConfigurationMap.getOutputSizes(35);
                                        var5 = var50.length;
                                    } catch (NullPointerException var18) {
                                        var10000 = var18;
                                        var10001 = false;
                                        break label183;
                                    }

                                    for(int var3 = 0; var3 < var5; ++var3) {
                                        Size var51 = var50[var3];

                                        try {
                                            String var12 = TAG;
                                            StringBuilder var13 = new StringBuilder();
                                            var13.append(" Looping through size: ");
                                            var13.append(var51.getWidth());
                                            var13.append(" : ");
                                            var13.append(var51.getHeight());
                                            LogUtil.d(var12, var13.toString());
                                            if (var51.getWidth() <= 1280 && var51.getHeight() <= 720) {
                                                Size var52 = new Size(var51.getWidth(), var51.getHeight());
                                                this.mLargestYuvOutputSize = var52;
                                                break;
                                            }
                                        } catch (NullPointerException var27) {
                                            var10000 = var27;
                                            var10001 = false;
                                            break label183;
                                        }
                                    }

                                    try {
                                        if (this.mLargestYuvOutputSize != null) {
                                            break;
                                        }

                                        LogUtil.w(TAG, "This camera does not support the desired YUV size");
                                        break label166;
                                    } catch (NullPointerException var26) {
                                        var10000 = var26;
                                        var10001 = false;
                                        break label183;
                                    }
                                }

                                try {
                                    var9 = TAG;
                                    var10 = new StringBuilder();
                                    var10.append("Skipping camera since not rear facing ");
                                    var10.append(var33);
                                    LogUtil.w(var9, var10.toString());
                                } catch (NullPointerException var25) {
                                    var10000 = var25;
                                    var10001 = false;
                                    break label183;
                                }
                            }

                            ++var2;
                        }

                        try {
                            var7 = TAG;
                            StringBuilder var37 = new StringBuilder();
                            var37.append(" largestYUV size: ");
                            var37.append(this.mLargestYuvOutputSize.getWidth());
                            var37.append(" : ");
                            var37.append(this.mLargestYuvOutputSize.getHeight());
                            LogUtil.d(var7, var37.toString());
                            if (this.mNumberOfLenses > 1) {
                                this.mBAFocalLengthRatio = this.mLensesFocalLengths[1] / this.mMinFocalLengthLens;
                                this.mABZoomStepSize = (this.mBAFocalLengthRatio - 1.0F) / ((this.mLensesFocalLengths[1] - this.mMinFocalLengthLens) * 10.0F);
                                this.mImageResolutionABFactor = Math.round(this.mLensesFocalLengths[1] * 10.0F * this.mLensesFocalLengths[1] * 10.0F * 13.0F);
                            }
                        } catch (NullPointerException var17) {
                            var10000 = var17;
                            var10001 = false;
                            break label183;
                        }

                        try {
                            if (this.mNumberOfLenses > 2) {
                                this.mCAFocalLengthRatio = this.mLensesFocalLengths[2] / this.mMinFocalLengthLens;
                                this.mCBFocalLengthRatio = this.mLensesFocalLengths[2] / this.mLensesFocalLengths[1];
                                this.mBCZoomStepSize = (this.mCBFocalLengthRatio - 1.0F) / ((this.mLensesFocalLengths[2] - this.mLensesFocalLengths[1]) * 10.0F);
                                this.mImageResolutionBCFactor = Math.round(this.mLensesFocalLengths[2] * 10.0F * this.mLensesFocalLengths[2] * 10.0F * 13.0F);
                            }
                        } catch (NullPointerException var16) {
                            var10000 = var16;
                            var10001 = false;
                            break label183;
                        }

                        try {
                            String var39 = TAG;
                            StringBuilder var36 = new StringBuilder();
                            var36.append("Lens Ratios BA ");
                            var36.append(this.mBAFocalLengthRatio);
                            var36.append(" CA ");
                            var36.append(this.mCAFocalLengthRatio);
                            var36.append(" CB ");
                            var36.append(this.mCBFocalLengthRatio);
                            LogUtil.d(var39, var36.toString());
                            CameraMode var38 = CameraMode.getMode(CamPrefsFactory.get().getStringValue("camera_mode_setting"));
                            this.mDefaultToMinFocalLengthRatio = CameraInfo.SimulatedPrimeFocalLengths.getDefaultRelativeMin(this.mMinFocalLengthLens, var38);
                            this.mSimulatedPrimeFocalLengthRatios = CameraInfo.SimulatedPrimeFocalLengths.getAllPrimeFocalLength(this.mMinFocalLengthLens);
                            this.mMaxToDefaultFocalLengthRatio = CameraInfo.SimulatedPrimeFocalLengths.getMaxDefaultLengthRatio(this.mMaxFocalLengthLens, var38);
                            this.mCameraCharacteristics = var40;
                            this.mCameraId = var33;
                            return true;
                        } catch (NullPointerException var15) {
                            var10000 = var15;
                            var10001 = false;
                        }
                    }
                }
            }

            Exception var34 = var10000;
            LogUtil.e(TAG, "Exception getting camera details", var34);
        }

        LogUtil.e(TAG, "This device doesn't support the configurations we need.");
        return false;
    }

    public float getABZoomStepSize() {
        return this.mABZoomStepSize;
    }

    public float getBACamerasFocalLengthRatio() {
        return this.mBAFocalLengthRatio;
    }

    public float getBCZoomStepSize() {
        return this.mBCZoomStepSize;
    }

    public float getCACamerasFocalLengthRatio() {
        return this.mCAFocalLengthRatio;
    }

    public float getCBCamerasFocalLengthRatio() {
        return this.mCBFocalLengthRatio;
    }

    public CameraCharacteristics getCameraCharacteristics() {
        return this.mCameraCharacteristics;
    }

    public String getCameraId() {
        return this.mCameraId;
    }

    public float getDefaultToMinFocalLengthRatio() {
        return this.mDefaultToMinFocalLengthRatio;
    }

    public int getFinalCaptureResolution(float var1) {
        return var1 / 10.0F >= this.mLensesFocalLengths[1] ? Math.round((float)this.mImageResolutionBCFactor / (var1 * var1)) : Math.round((float)this.mImageResolutionABFactor / (var1 * var1));
    }

    public Size getLargestJpegOutputSize() {
        return this.mLargestJpegOutputSize;
    }

    public Size getLargestRawOutputSize() {
        return this.mLargestRawOutputSize;
    }

    public Size getLargestYuvOutputSize() {
        return this.mLargestYuvOutputSize;
    }

    public float[] getLensesFocalLengths() {
        return this.mLensesFocalLengths;
    }

    public float getMaxDigitalZoom() {
        return this.mMaxDigitalZoom;
    }

    public float getMaxFocalLengthLens() {
        return this.mMaxFocalLengthLens;
    }

    public int getMaxNumOfFaces() {
        return this.mMaxNumOfFaces;
    }

    public float getMaxToDefaultFocalLengthRatio() {
        return this.mMaxToDefaultFocalLengthRatio;
    }

    public float getMaxToMinZoomRatio() {
        return this.mMaxToMinZoomRatio;
    }

    public float getMinFocalLengthLens() {
        return this.mMinFocalLengthLens;
    }

    public int getNumberOfLenses() {
        return this.mNumberOfLenses;
    }

    public int getRawFormat() {
        return this.mRawFormat;
    }

    public Rect getSensorActiveArraySize() {
        return this.mSensorActiveArraySize;
    }

    public List getSimulatedPrimeFocalLengthRatios() {
        return this.mSimulatedPrimeFocalLengthRatios;
    }

    public StreamConfigurationMap getStreamConfigurationMap() {
        return this.mStreamConfigurationMap;
    }

    public Range getSupportedAERange() {
        return this.mSupportedAERange;
    }

    public Rational getSupportedAeStep() {
        return this.mSupportedAeStep;
    }

    public boolean isAutoFocusSupported() {
        return this.mIsAutoFocusSupported;
    }

    public boolean isCapableCameraAvailable() {
        return this.mCapableCameraAvailable;
    }

    public boolean isOpticalZoomCapable() {
        boolean var1;
        if (this.mMaxToMinZoomRatio > 1.0F) {
            var1 = true;
        } else {
            var1 = false;
        }

        return var1;
    }

    private static class CompareSizesByArea implements Comparator {
        private CompareSizesByArea() {
        }

        // $FF: synthetic method
        CompareSizesByArea(Object var1) {
            this();
        }

        public int compare(Size var1, Size var2) {
            return Long.compare((long)var1.getWidth() * (long)var1.getHeight(), (long)var2.getWidth() * (long)var2.getHeight());
        }

        // $FF: synthetic method
        // $FF: bridge method
        public int compare(Object var1, Object var2) {
            return this.compare((Size)var1, (Size)var2);
        }
    }

    public static enum SimulatedPrimeFocalLengths {
        SIMULATED_FOCAL_LENGTH1(28) {
            public boolean isDefault(CameraMode var1) {
                return var1.isVideo();
            }
        },
        SIMULATED_FOCAL_LENGTH2(35) {
            public boolean isDefault(CameraMode var1) {
                boolean var2;
                if (!var1.isAuto() && !var1.isIso() && !var1.isShutter() && !var1.isManual()) {
                    var2 = false;
                } else {
                    var2 = true;
                }

                return var2;
            }
        },
        SIMULATED_FOCAL_LENGTH3(75),
        SIMULATED_FOCAL_LENGTH4(150);

        private final int mPrimeFocalLength;

        private SimulatedPrimeFocalLengths(int var3) {
            this.mPrimeFocalLength = var3;
        }

        // // $FF: synthetic method
        // SimulatedPrimeFocalLengths(int var3, Object var4) {
        //     this(var3);
        // }

        static List getAllPrimeFocalLength(float var0) {
            ArrayList var4 = new ArrayList();
            CameraInfo.SimulatedPrimeFocalLengths[] var3 = values();
            int var2 = var3.length;

            for(int var1 = 0; var1 < var2; ++var1) {
                var4.add((float)var3[var1].getPrimeFocalLength() / (var0 * 10.0F));
            }

            return var4;
        }

        public static int getDefaultFocalLength(CameraMode var0) {
            CameraInfo.SimulatedPrimeFocalLengths[] var4 = values();
            int var2 = var4.length;

            for(int var1 = 0; var1 < var2; ++var1) {
                CameraInfo.SimulatedPrimeFocalLengths var3 = var4[var1];
                if (var3.isDefault(var0)) {
                    return var3.getPrimeFocalLength();
                }
            }

            throw new IllegalArgumentException("No focal length registered as default ");
        }

        static float getDefaultRelativeMin(float var0, CameraMode var1) {
            return (float)getDefaultFocalLength(var1) / (var0 * 10.0F);
        }

        static float getMaxDefaultLengthRatio(float var0, CameraMode var1) {
            return var0 * 10.0F / (float)getDefaultFocalLength(var1);
        }

        public int getPrimeFocalLength() {
            return this.mPrimeFocalLength;
        }

        public boolean isDefault(CameraMode var1) {
            return false;
        }
    }
}
