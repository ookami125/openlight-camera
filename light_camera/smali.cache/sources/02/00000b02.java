package com.immersion;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface ImmVibeAPI {
    public static final int VIBE_BUILTINEFFECT_LONG = 11;
    public static final int VIBE_BUILTINEFFECT_LONG_ON_LONG_OFF = 8;
    public static final int VIBE_BUILTINEFFECT_LONG_ON_MEDIUM_OFF = 7;
    public static final int VIBE_BUILTINEFFECT_LONG_ON_SHORT_OFF = 6;
    public static final int VIBE_BUILTINEFFECT_MEDIUM = 10;
    public static final int VIBE_BUILTINEFFECT_MEDIUM_ON_LONG_OFF = 5;
    public static final int VIBE_BUILTINEFFECT_MEDIUM_ON_MEDIUM_OFF = 4;
    public static final int VIBE_BUILTINEFFECT_MEDIUM_ON_SHORT_OFF = 3;
    public static final int VIBE_BUILTINEFFECT_SHORT = 9;
    public static final int VIBE_BUILTINEFFECT_SHORT_ON_LONG_OFF = 2;
    public static final int VIBE_BUILTINEFFECT_SHORT_ON_MEDIUM_OFF = 1;
    public static final int VIBE_BUILTINEFFECT_SHORT_ON_SHORT_OFF = 0;
    public static final int VIBE_DEFAULT_STYLE = 1;
    public static final int VIBE_DEFAULT_WAVETYPE = 16;
    public static final int VIBE_DEVACTUATORTYPE_BLDC = 1;
    public static final int VIBE_DEVACTUATORTYPE_ERM = 0;
    public static final int VIBE_DEVACTUATORTYPE_LRA = 2;
    public static final int VIBE_DEVACTUATORTYPE_PIEZO = 4;
    public static final int VIBE_DEVACTUATORTYPE_PIEZO_WAVE = 4;
    public static final int VIBE_DEVCAPTYPE_ACTUATOR_TYPE = 3;
    public static final int VIBE_DEVCAPTYPE_APIVERSIONNUMBER = 12;
    public static final int VIBE_DEVCAPTYPE_DEVICE_CATEGORY = 0;
    public static final int VIBE_DEVCAPTYPE_DEVICE_NAME = 10;
    public static final int VIBE_DEVCAPTYPE_EDITION_LEVEL = 15;
    public static final int VIBE_DEVCAPTYPE_HANDSET_INDEX = 17;
    public static final int VIBE_DEVCAPTYPE_MAX_EFFECT_DURATION = 8;
    public static final int VIBE_DEVCAPTYPE_MAX_ENVELOPE_TIME = 11;
    public static final int VIBE_DEVCAPTYPE_MAX_IVT_SIZE = 14;
    public static final int VIBE_DEVCAPTYPE_MAX_IVT_SIZE_TETHERED = 13;
    public static final int VIBE_DEVCAPTYPE_MAX_NESTED_REPEATS = 1;
    public static final int VIBE_DEVCAPTYPE_MAX_PERIOD = 7;
    public static final int VIBE_DEVCAPTYPE_MIN_PERIOD = 6;
    public static final int VIBE_DEVCAPTYPE_NUM_ACTUATORS = 2;
    public static final int VIBE_DEVCAPTYPE_NUM_EFFECT_SLOTS = 4;
    public static final int VIBE_DEVCAPTYPE_SUPPORTED_EFFECTS = 9;
    public static final int VIBE_DEVCAPTYPE_SUPPORTED_FEATURES = 18;
    public static final int VIBE_DEVCAPTYPE_SUPPORTED_STYLES = 5;
    public static final int VIBE_DEVCAPTYPE_SUPPORTED_WAVE_TYPES = 16;
    public static final int VIBE_DEVICECATEGORY_COMPOSITE = 6;
    public static final int VIBE_DEVICECATEGORY_EMBEDDED = 3;
    public static final int VIBE_DEVICECATEGORY_IFC = 0;
    public static final int VIBE_DEVICECATEGORY_IMMERSION_USB = 5;
    public static final int VIBE_DEVICECATEGORY_IMPULSE = 1;
    public static final int VIBE_DEVICECATEGORY_TETHERED = 4;
    public static final int VIBE_DEVICECATEGORY_VIRTUAL = 2;
    public static final int VIBE_DEVICESTATE_ATTACHED = 1;
    public static final int VIBE_DEVICESTATE_BUSY = 2;
    public static final int VIBE_DEVPRIORITY_DEFAULT = 0;
    public static final int VIBE_DEVPROPTYPE_DISABLE_EFFECTS = 2;
    public static final int VIBE_DEVPROPTYPE_LICENSE_KEY = 0;
    public static final int VIBE_DEVPROPTYPE_MASTERSTRENGTH = 4;
    public static final int VIBE_DEVPROPTYPE_PRIORITY = 1;
    public static final int VIBE_DEVPROPTYPE_STRENGTH = 3;
    public static final int VIBE_EDITION_3000 = 3000;
    public static final int VIBE_EDITION_4000 = 4000;
    public static final int VIBE_EDITION_5000 = 5000;
    public static final int VIBE_EFFECT_STATE_NOT_PLAYING = 0;
    public static final int VIBE_EFFECT_STATE_PAUSED = 2;
    public static final int VIBE_EFFECT_STATE_PLAYING = 1;
    public static final int VIBE_EFFECT_TYPE_INTERPOLATED = 5;
    public static final int VIBE_EFFECT_TYPE_MAGSWEEP = 1;
    public static final int VIBE_EFFECT_TYPE_PERIODIC = 0;
    public static final int VIBE_EFFECT_TYPE_STREAMING = 3;
    public static final int VIBE_EFFECT_TYPE_TIMELINE = 2;
    public static final int VIBE_EFFECT_TYPE_WAVEFORM = 4;
    public static final int VIBE_ELEMTYPE_MAGSWEEP = 1;
    public static final int VIBE_ELEMTYPE_PERIODIC = 0;
    public static final int VIBE_ELEMTYPE_REPEAT = 2;
    public static final int VIBE_ELEMTYPE_WAVEFORM = 3;
    public static final int VIBE_E_ALREADY_INITIALIZED = -1;
    public static final int VIBE_E_DEVICE_NEEDS_LICENSE = -8;
    public static final int VIBE_E_FAIL = -4;
    public static final int VIBE_E_INCOMPATIBLE_CAPABILITY_TYPE = -6;
    public static final int VIBE_E_INCOMPATIBLE_EFFECT_TYPE = -5;
    public static final int VIBE_E_INCOMPATIBLE_PROPERTY_TYPE = -7;
    public static final int VIBE_E_INSUFFICIENT_PRIORITY = -11;
    public static final int VIBE_E_INVALID_ARGUMENT = -3;
    public static final int VIBE_E_NOT_ENOUGH_MEMORY = -9;
    public static final int VIBE_E_NOT_INITIALIZED = -2;
    public static final int VIBE_E_NOT_SUPPORTED = -13;
    public static final int VIBE_E_SERVICE_BUSY = -12;
    public static final int VIBE_E_SERVICE_NOT_RUNNING = -10;
    public static final int VIBE_FEATURE_COMPOSITE_DEVICE_SUPPORT = 2;
    public static final int VIBE_FEATURE_ENHANCED_ACTUATOR_SUPPORT = 32;
    public static final int VIBE_FEATURE_ENHANCED_WAVEFORM_SUPPORT = 64;
    public static final int VIBE_FEATURE_HIGH_DEFINITION_ACTUATOR_SUPPORT = 8;
    public static final int VIBE_FEATURE_MULTIPLE_ACTUATOR_SUPPORT = 4;
    public static final int VIBE_FEATURE_PAUSE_RESUME_SUPPORT = 1;
    public static final int VIBE_FEATURE_PLAY_APPEND_WAVEFORM_SUPPORT = 16;
    public static final int VIBE_FEATURE_XIVT_SUPPORT = 128;
    public static final int VIBE_INVALID_DEVICE_HANDLE_VALUE = -1;
    public static final int VIBE_INVALID_EFFECT_HANDLE_VALUE = -1;
    public static final int VIBE_INVALID_INDEX = -1;
    public static final int VIBE_MAGSWEEP_EFFECT_SUPPORT = 2;
    public static final int VIBE_MAX_CAPABILITY_STRING_LENGTH = 64;
    public static final int VIBE_MAX_DEVICE_NAME_LENGTH = 64;
    public static final int VIBE_MAX_DEVICE_PRIORITY = 15;
    public static final int VIBE_MAX_DEV_DEVICE_PRIORITY = 7;
    public static final int VIBE_MAX_EFFECT_NAME_LENGTH = 128;
    public static final int VIBE_MAX_INTERPOLANT = 10000;
    public static final int VIBE_MAX_LOGICAL_DEVICE_COUNT = 16;
    public static final int VIBE_MAX_MAGNITUDE = 10000;
    public static final int VIBE_MAX_OEM_DEVICE_PRIORITY = 15;
    public static final int VIBE_MAX_PROPERTY_STRING_LENGTH = 64;
    public static final int VIBE_MAX_STREAMING_SAMPLE_SIZE = 255;
    public static final int VIBE_MIN_DEVICE_PRIORITY = 0;
    public static final int VIBE_MIN_MAGNITUDE = 0;
    public static final int VIBE_MIN_WAVE_DATA_SIZE = 16;
    public static final int VIBE_PERIODIC_EFFECT_SUPPORT = 1;
    public static final int VIBE_PERIOD_RESOLUTION_MICROSECOND = Integer.MIN_VALUE;
    public static final int VIBE_REPEAT_COUNT_INFINITE = 255;
    public static final int VIBE_SECURITY_MODE_AES128CTR = 1;
    public static final int VIBE_SECURITY_MODE_NONE = 0;
    public static final int VIBE_STREAMING_EFFECT_SUPPORT = 8;
    public static final int VIBE_STYLE_MASK = 15;
    public static final int VIBE_STYLE_SHARP = 2;
    public static final int VIBE_STYLE_SHARP_SUPPORT = 4;
    public static final int VIBE_STYLE_SMOOTH = 0;
    public static final int VIBE_STYLE_SMOOTH_SUPPORT = 1;
    public static final int VIBE_STYLE_STRONG = 1;
    public static final int VIBE_STYLE_STRONG_SUPPORT = 2;
    public static final int VIBE_STYLE_SUPPORT_MASK = 65535;
    public static final int VIBE_S_FALSE = 0;
    public static final int VIBE_S_SUCCESS = 0;
    public static final int VIBE_S_TRUE = 1;
    public static final int VIBE_TIMELINE_EFFECT_SUPPORT = 4;
    public static final int VIBE_TIME_INFINITE = Integer.MAX_VALUE;
    public static final int VIBE_WAVEFORMAT_PCM16 = 1;
    public static final int VIBE_WAVEFORMAT_PCM8 = 0;
    public static final int VIBE_WAVEFORMAT_U8 = 2;
    public static final int VIBE_WAVEFORM_EFFECT_SUPPORT = 16;
    public static final int VIBE_WAVETYPE_MASK = 240;
    public static final int VIBE_WAVETYPE_SAWTOOTHDOWN = 80;
    public static final int VIBE_WAVETYPE_SAWTOOTHDOWN_SUPPORT = 2097152;
    public static final int VIBE_WAVETYPE_SAWTOOTHUP = 64;
    public static final int VIBE_WAVETYPE_SAWTOOTHUP_SUPPORT = 1048576;
    public static final int VIBE_WAVETYPE_SHIFT = 4;
    public static final int VIBE_WAVETYPE_SINE = 48;
    public static final int VIBE_WAVETYPE_SINE_SUPPORT = 524288;
    public static final int VIBE_WAVETYPE_SQUARE = 16;
    public static final int VIBE_WAVETYPE_SQUARE_SUPPORT = 131072;
    public static final int VIBE_WAVETYPE_SUPPORT_MASK = -65536;
    public static final int VIBE_WAVETYPE_TRIANGLE = 32;
    public static final int VIBE_WAVETYPE_TRIANGLE_SUPPORT = 262144;
    public static final int VIBE_W_EFFECTS_DISABLED = 3;
    public static final int VIBE_W_INSUFFICIENT_PRIORITY = 2;
    public static final int VIBE_W_NOT_PAUSED = 4;
    public static final int VIBE_W_NOT_PLAYING = 1;

    int appendEnhancedWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6);

    int appendWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6);

    void closeDevice(int i);

    int createStreamingEffect(int i);

    void deleteIVTFile(String str);

    void destroyStreamingEffect(int i, int i2);

    byte[] getBuiltInEffects();

    boolean getDeviceCapabilityBool(int i, int i2);

    int getDeviceCapabilityInt32(int i, int i2);

    String getDeviceCapabilityString(int i, int i2);

    int getDeviceCount();

    int getDeviceKernelParameter(int i, int i2);

    boolean getDevicePropertyBool(int i, int i2);

    int getDevicePropertyInt32(int i, int i2);

    String getDevicePropertyString(int i, int i2);

    int getDeviceState(int i);

    int getEffectRemainingDuration(int i, int i2);

    int getEffectState(int i, int i2);

    int getIVTEffectCount(byte[] bArr);

    int getIVTEffectDuration(byte[] bArr, int i);

    int getIVTEffectIndexFromName(byte[] bArr, String str);

    String getIVTEffectName(byte[] bArr, int i);

    int getIVTEffectType(byte[] bArr, int i);

    void getIVTMagSweepEffectDefinition(byte[] bArr, int i, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7);

    void getIVTPeriodicEffectDefinition(byte[] bArr, int i, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8);

    int getIVTSize(byte[] bArr);

    void initialize();

    byte[] initializeIVTBuffer(int i);

    byte[] insertIVTElement(byte[] bArr, int i, int[] iArr, byte[] bArr2);

    byte[] loadIVTFromXIVT(int i, byte[] bArr);

    void modifyPlayingInterpolatedEffectInterpolant(int i, int i2, int i3);

    void modifyPlayingMagSweepEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    void modifyPlayingPeriodicEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    int openCompositeDevice(int i);

    int openDevice(int i);

    void pausePlayingEffect(int i, int i2);

    int playEnhancedWaveformEffect(int i, byte[] bArr, int i2, int i3, int i4, int i5);

    int playIVTEffect(int i, byte[] bArr, int i2);

    int playIVTEffectRepeat(int i, byte[] bArr, int i2, byte b);

    int playIVTInterpolatedEffect(int i, byte[] bArr, int i2, int i3);

    int playMagSweepEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    int playPeriodicEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    void playStreamingSample(int i, int i2, byte[] bArr, int i3);

    void playStreamingSampleWithOffset(int i, int i2, byte[] bArr, int i3, int i4);

    int playWaveformEffect(int i, byte[] bArr, int i2, int i3, int i4, int i5);

    int[] readIVTElement(byte[] bArr, int i, int i2);

    byte[] readIVTElementData(byte[] bArr, int i, int i2);

    byte[] removeIVTElement(byte[] bArr, int i, int i2);

    int replaceEnhancedWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6);

    void resumePausedEffect(int i, int i2);

    void saveIVTFile(byte[] bArr, String str);

    void setDevicePropertyBool(int i, int i2, boolean z);

    void setDevicePropertyInt32(int i, int i2, int i3);

    void setDevicePropertyString(int i, int i2, String str);

    void stopAllPlayingEffects(int i);

    void stopPlayingEffect(int i, int i2);

    void terminate();
}