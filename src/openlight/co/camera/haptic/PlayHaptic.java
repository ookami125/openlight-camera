package openlight.co.camera.haptic;

import com.immersion.Device;
import com.immersion.IVTBuffer;
import openlight.co.TheaterMode.TheaterModeSettings;
import openlight.co.camera.managers.CameraManager;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.utils.LogUtil;

public class PlayHaptic {
    private static final String TAG = "PlayHaptic";
    private static final PlayHaptic sInstance = new PlayHaptic();

    private HapticFiles.HapticStrength mCurrentHapticStrength = HapticFiles.HapticStrength.OFF;
    private HapticBufferMgr mHapticBufferMgr;
    private Device mHapticDevice;
    private boolean mIsHapticsEnabled = false;
    private boolean mIsInitialized = false;

    private PlayHaptic() {
        checkAndUpdateHapticsStatus();
    }

    public static PlayHaptic get() {
        return sInstance;
    }

    private void closeHapticDevice() {
        if (mHapticDevice != null) {
            mHapticDevice.close();
            mHapticDevice = null;
        }
    }

    private IVTBuffer getBufferType(HapticFiles.HapticCategory category) {
        if (mHapticBufferMgr != null && category != HapticFiles.HapticCategory.INVALID) {
            LogUtil.d(TAG, "getBufferType: buffer manager: " + mHapticBufferMgr + " category name: " + category.name());
            return mHapticBufferMgr.getHapticBuffer(category);
        }
        LogUtil.w(TAG, "getBufferType: buffer manager is null or category invalid,  category name requested: " + category.name());
        return null;
    }

    private boolean init() {
        if (!mIsInitialized) {
            initHapticsDevice();
            initHapticBuffer();
            mIsInitialized = true;
        } else {
            LogUtil.d(TAG, "Ignoring call to init, haptic engine initialized");
        }
        return mHapticDevice != null;
    }

    private void initHapticBuffer() {
        if (mHapticBufferMgr == null) {
            mHapticBufferMgr = HapticBufferMgr.get();
            LogUtil.d(TAG, "Initializing Haptic Buffers");
            mHapticBufferMgr.createHapticBufferForAll();
        } else {
            LogUtil.d(TAG, "Haptic Buffers already initialized");
        }
    }

    private void initHapticsDevice() {
        if (mHapticDevice != null) return;
        try {
            mHapticDevice = Device.newDevice(0);
        } catch (LinkageError e) {
            try {
                throw new Exception("Couldn't find haptic library", e);
            } catch (Exception ex) {
                LogUtil.e(TAG, "Unable to find a haptic device", ex);
            }
        } catch (Exception e) {
            LogUtil.e(TAG, "Unable to find a haptic device", e);
        }
    }

    private void releaseHapticBuffer() {
        if (mHapticBufferMgr != null) {
            LogUtil.d(TAG, "Releasing Haptic Buffers");
            mHapticBufferMgr.releaseAllBuffer();
            mHapticBufferMgr = null;
        } else {
            LogUtil.d(TAG, "Haptic Buffers released previously, doing nothing here");
        }
    }

    public void checkAndUpdateHapticsStatus() {
        String value = CamPrefsFactory.get().getStringValue("device_haptic_setting");
        switch (value) {
            case "off":
                mIsHapticsEnabled = false;
                mCurrentHapticStrength = HapticFiles.HapticStrength.OFF;
                close();
                break;
            case "normal":
                mIsHapticsEnabled = true;
                if (mCurrentHapticStrength != HapticFiles.HapticStrength.NORMAL) {
                    close();
                    LogUtil.d(TAG, "Initializing Haptic Engine");
                    init();
                    mCurrentHapticStrength = HapticFiles.HapticStrength.NORMAL;
                }
                break;
            case "strong":
                mIsHapticsEnabled = true;
                if (mCurrentHapticStrength != HapticFiles.HapticStrength.STRONG) {
                    close();
                    LogUtil.d(TAG, "Initializing Haptic Engine");
                    init();
                    mCurrentHapticStrength = HapticFiles.HapticStrength.STRONG;
                }
                break;
        }
    }

    public void close() {
        if (mIsInitialized) {
            LogUtil.d(TAG, "Stopping Haptic Engine");
            stopAllHaptic();
            releaseHapticBuffer();
            closeHapticDevice();
            mIsInitialized = false;
        } else {
            LogUtil.d(TAG, "Ignoring call to close, haptic engine already stopped");
        }
    }

    public void playHaptic(Immersion immersion) {
        if (!mIsHapticsEnabled || TheaterModeSettings.get().isHapticFeedbackDisabled()
                || CameraManager.get().isRecording() || !init()) {
            LogUtil.d(TAG, "Haptics not enabled, ignoring play haptic request: " + immersion);
            return;
        }
        HapticFiles.HapticCategory category = immersion.getHapticCategory();
        if (category == HapticFiles.HapticCategory.INVALID) {
            LogUtil.w(TAG, "No Category found to match haptic name: " + immersion);
            return;
        }
        IVTBuffer buffer = getBufferType(category);
        if (buffer == null) {
            LogUtil.w(TAG, "Error getting ivt buffer for this index: " + immersion);
            return;
        }
        try {
            mHapticDevice.stopAllPlayingEffects();
            LogUtil.v(TAG, "Playing Haptic: " + immersion);
            String effectName = immersion.getIndexedEffectName();
            mHapticDevice.playIVTEffect(buffer, buffer.getEffectIndexFromName(effectName));
        } catch (Exception e) {
            LogUtil.e(TAG, "Haptic failed to play", e);
        }
    }

    public void stopAllHaptic() {
        if (mHapticDevice == null) return;
        try {
            mHapticDevice.stopAllPlayingEffects();
        } catch (Exception e) {
            LogUtil.e(TAG, "Error stop play of all haptics " + e);
        }
    }
}
