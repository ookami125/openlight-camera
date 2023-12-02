package openlight.co.lightsdk.camera2;

import android.support.annotation.NonNull;

/* loaded from: /tmp/jadx-996672661830095904.dex */
public final class CaptureResult {

    /* loaded from: /tmp/jadx-996672661830095904.dex */
    public static final class Parser {
        private static final String TAG = "CaptureResult$Parser";
        private final android.hardware.camera2.CaptureResult mBaseCaptureResult;

        public static Parser get(android.hardware.camera2.CaptureResult captureResult) {
            if (!Light.isInitalized()) {
                throw new IllegalStateException("Light.init() must be first called before any other operations");
            }
            return new Parser(captureResult);
        }

        public Byte isCaptureStacked() {
            if (Util.isLightDevice()) {
                return (Byte) get(Key.CONTROL_IS_STACKED_CAPTURE);
            }
            throw new UnsupportedOperationException("This operation is not supported for the current device");
        }

        public Byte isOnTripod() throws UnsupportedOperationException {
            if (Util.isLightDevice()) {
                return (Byte) get(Key.CONTROL_IS_ON_TRIPOD);
            }
            throw new UnsupportedOperationException("This operation is not supported for the current device");
        }

        public int getTotalRawStackSize() {
            if (!Util.isLightDevice()) {
                return ((Integer) get(Key.CONTROL_STACKED_RAW_IMAGE_SIZE)).intValue();
            }
            throw new UnsupportedOperationException("This operation is not supported for the current device");
        }

        <T> T get(@NonNull Key<T> key) {
            return (T) this.mBaseCaptureResult.get(KeyMapperInternal.get().getVendorResultKey(key));
        }

        private Parser(android.hardware.camera2.CaptureResult captureResult) {
            this.mBaseCaptureResult = captureResult;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /tmp/jadx-996672661830095904.dex */
    public static final class Key<T> {
        Class<T> mClassType;
        String mName;
        public static final Key<Byte> CONTROL_IS_STACKED_CAPTURE = new Key<>("co.light.stacked_capture_fw", Byte.TYPE);
        public static final Key<Byte> CONTROL_IS_ON_TRIPOD = new Key<>("co.light.tripod_fw", Byte.TYPE);
        public static final Key<Integer> CONTROL_STACKED_RAW_IMAGE_SIZE = new Key<>("co.light.stacked_capture_total_size", Integer.TYPE);
        public static final Key<Integer> CONTROL_STACKED_NUM_IMAGES = new Key<>("co.light.stacked_capture_num_transfers", Integer.TYPE);

        private Key(String str, Class<T> cls) {
            this.mClassType = cls;
            this.mName = str;
        }
    }

    private CaptureResult() {
    }
}