package openlight.co.camera.utils;

import android.support.v7.widget.helper.ItemTouchHelper;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface Constants {
    public static final int FOUR_BY_THREE_WIDTH_DIFF = 240;
    public static final int IMAGE_FORMAT_JPEG = 256;
    public static final int IMAGE_FORMAT_LIGHT_RAW = 35;
    public static final int KEEP_OUT_FOCUS_HEIGHT = 540;
    public static final int KEEP_OUT_FOCUS_WIDTH = 720;
    public static final int KEEP_OUT_TOP_FOR_NAV_BAR = 130;
    public static final long MILLI_SECOND = 1000;
    public static final int PI_REQUEST_CODE_RESTART_ACTIVITY = 555636;
    public static final int PI_REQUEST_LOCATION_ALARM = 555637;
    public static final int PI_REQUEST_LOCATION_UPDATE = 555638;
    public static final long SECOND = 1000000000;
    public static final long[] exposureTimes = {15000000000L, 12000000000L, 10000000000L, 8000000000L, 6000000000L, 5000000000L, 4000000000L, 3200000000L, 2500000000L, 2000000000, 1660000000, 1250000000, SECOND, 800000000, 600000000, 500000000, 400000000, 300000000, 250000000, 200000000, 166666666, 125000000, 100000000, 83333333, 66666666, 50000000, 41666666, 33333333, 25000000, 20000000, 16666666, 12500000, 10000000, 8333333, 6666666, 6250000, 5000000, 4166666, 3125000, 2500000, 2000000, 1562500, 1250000, 1000000, 800000, 625000, 500000, 400000, 312500, 250000, 200000, 156250, 125000};

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum ShutterSpeedValues {
        SHUTTER_SPEED_15(0),
        SHUTTER_SPEED_12(1),
        SHUTTER_SPEED_10(2),
        SHUTTER_SPEED_8(3),
        SHUTTER_SPEED_6(4),
        SHUTTER_SPEED_5(5),
        SHUTTER_SPEED_4(6),
        SHUTTER_SPEED_3_2(7),
        SHUTTER_SPEED_2_5(8),
        SHUTTER_SPEED_2(9),
        SHUTTER_SPEED_166_100(10),
        SHUTTER_SPEED_125_100(11),
        SHUTTER_SPEED_1(12),
        SHUTTER_SPEED_0_8(13),
        SHUTTER_SPEED_0_6(14),
        SHUTTER_SPEED_1_2(15),
        SHUTTER_SPEED_0_3(16),
        SHUTTER_SPEED_0_4(17),
        SHUTTER_SPEED_1_4(18),
        SHUTTER_SPEED_1_5(19),
        SHUTTER_SPEED_1_6(20),
        SHUTTER_SPEED_1_8(21),
        SHUTTER_SPEED_1_10(22),
        SHUTTER_SPEED_1_12(23),
        SHUTTER_SPEED_1_15(24),
        SHUTTER_SPEED_1_20(25),
        SHUTTER_SPEED_1_24(26),
        SHUTTER_SPEED_1_30(27),
        SHUTTER_SPEED_1_40(28),
        SHUTTER_SPEED_1_50(29),
        SHUTTER_SPEED_1_60(30),
        SHUTTER_SPEED_1_80(31),
        SHUTTER_SPEED_1_100(32),
        SHUTTER_SPEED_1_120(33),
        SHUTTER_SPEED_1_150(34),
        SHUTTER_SPEED_1_160(35),
        SHUTTER_SPEED_1_200(36),
        SHUTTER_SPEED_1_240(37),
        SHUTTER_SPEED_1_320(38),
        SHUTTER_SPEED_1_400(39),
        SHUTTER_SPEED_1_500(40),
        SHUTTER_SPEED_1_640(41),
        SHUTTER_SPEED_1_800(42),
        SHUTTER_SPEED_1_1000(43),
        SHUTTER_SPEED_1_1250(44),
        SHUTTER_SPEED_1_1600(45),
        SHUTTER_SPEED_1_2000(46),
        SHUTTER_SPEED_1_3200(47),
        SHUTTER_SPEED_1_2500(48),
        SHUTTER_SPEED_1_4000(49),
        SHUTTER_SPEED_1_5000(50),
        SHUTTER_SPEED_1_6400(51),
        SHUTTER_SPEED_1_8000(52);
        
        private static ShutterSpeedValues[] sVals = values();
        private final int shutterSpeedIndex;

        ShutterSpeedValues(int i) {
            this.shutterSpeedIndex = i;
        }

        public int getShutterSpeedIndex() {
            return this.shutterSpeedIndex;
        }

        public static ShutterSpeedValues forIndex(int i) {
            return sVals[i];
        }

        public static long exposureTimeForIndex(int i) {
            return Constants.exposureTimes[i];
        }

        public static int maxIndex() {
            return Constants.exposureTimes.length - 1;
        }
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum SensitivityValues {
        ISO_3200(0, 3200),
        ISO_2400(1, 2400),
        ISO_1600(2, 1600),
        ISO_1250(3, 1250),
        ISO_1000(4, 1000),
        ISO_800(5, 800),
        ISO_640(6, 640),
        ISO_500(7, 500),
        ISO_400(8, 400),
        ISO_320(9, 320),
        ISO_250(10, 250),
        ISO_200(11, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION),
        ISO_160(12, 160),
        ISO_125(13, 125),
        ISO_100(14, 100);
        
        private static final SensitivityValues[] sVals = values();
        private final int sensitivityIndex;
        private final int sensitivityVal;

        SensitivityValues(int i, int i2) {
            this.sensitivityIndex = i;
            this.sensitivityVal = i2;
        }

        public int getSensitivityVal() {
            return this.sensitivityVal;
        }

        public int getSensitivityIndex() {
            return this.sensitivityIndex;
        }

        public static int maxIndex() {
            return sVals.length - 1;
        }

        public static SensitivityValues forIndex(int i) {
            return sVals[i];
        }
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum ExposureCompValues {
        EXPOSURE_COMP_12(0, 12),
        EXPOSURE_COMP_10(1, 10),
        EXPOSURE_COMP_08(2, 8),
        EXPOSURE_COMP_06(3, 6),
        EXPOSURE_COMP_04(4, 4),
        EXPOSURE_COMP_02(5, 2),
        EXPOSURE_COMP_00(6, 0),
        EXPOSURE_COMP_NEG_02(7, -2),
        EXPOSURE_COMP_NEG_04(8, -4),
        EXPOSURE_COMP_NEG_06(9, -6),
        EXPOSURE_COMP_NEG_08(10, -8),
        EXPOSURE_COMP_NEG_10(11, -10),
        EXPOSURE_COMP_NEG_12(12, -12);
        
        private static final ExposureCompValues[] sVals = values();
        private final int exposureCompensationVal;
        private final int exposureIndex;

        ExposureCompValues(int i, int i2) {
            this.exposureIndex = i;
            this.exposureCompensationVal = i2;
        }

        public int getExposureCompensationVal() {
            return this.exposureCompensationVal;
        }

        public int getExposureCompensationIndex() {
            return this.exposureIndex;
        }

        public static int maxIndex() {
            return sVals.length - 1;
        }

        public static ExposureCompValues forIndex(int i) {
            return sVals[i];
        }
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum ZoomPrimeFocalLengths {
        ZOOM_PRIME_28(28.0f),
        ZOOM_PRIME_35(35.0f),
        ZOOM_PRIME_50(50.0f),
        ZOOM_PRIME_70(70.0f),
        ZOOM_PRIME_85(85.0f),
        ZOOM_PRIME_105(105.0f),
        ZOOM_PRIME_135(135.0f),
        ZOOM_PRIME_150(150.0f);
        
        private final float focalLength;

        ZoomPrimeFocalLengths(float f) {
            this.focalLength = f;
        }

        public float getFocalLength() {
            return this.focalLength;
        }
    }
}