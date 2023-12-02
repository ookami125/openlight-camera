package openlight.co.camera.haptic;

import android.content.Context;
import android.os.Environment;
import com.immersion.IVTBuffer;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import openlight.co.camera.CameraApp;
import openlight.co.camera.haptic.HapticFiles;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.utils.LogUtil;
import org.apache.commons.io.IOUtils;

/* loaded from: /tmp/jadx-8104883934066773313.dex */
public class HapticBufferMgr {
    private static final String TAG = "HapticBufferMgr";
    private static final HapticBufferMgr sInstance = new HapticBufferMgr();
    private static final String SDCARD_HAPTIC_OVERRIDE_PATH = Environment.getExternalStorageDirectory().getPath() + "/haptic";
    private final HashMap<HapticFiles.HapticCategory, IVTBuffer> mHapticBuffers = new HashMap<>();
    private final Context mContext = CameraApp.get();

    public static HapticBufferMgr get() {
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createHapticBufferForAll() {
        HapticFiles.HapticCategory[] values;
        HapticFiles.HapticStrength currentHapticStrength = getCurrentHapticStrength();
        for (HapticFiles.HapticCategory hapticCategory : HapticFiles.HapticCategory.values()) {
            IVTBuffer createIVTBufferForCategory = createIVTBufferForCategory(hapticCategory, currentHapticStrength);
            LogUtil.v(TAG, "Initialized IVT Buffer " + createIVTBufferForCategory + " for category " + hapticCategory + " for strength " + currentHapticStrength);
            if (createIVTBufferForCategory != null) {
                this.mHapticBuffers.put(hapticCategory, createIVTBufferForCategory);
            }
        }
    }

    private HapticFiles.HapticStrength getCurrentHapticStrength() {
        String stringValue = CamPrefsFactory.get().getStringValue("device_haptic_setting");
        HapticFiles.HapticStrength hapticStrength = HapticFiles.HapticStrength.OFF;
        if ("strong".equalsIgnoreCase(stringValue)) {
            return HapticFiles.HapticStrength.STRONG;
        }
        return "normal".equalsIgnoreCase(stringValue) ? HapticFiles.HapticStrength.NORMAL : hapticStrength;
    }

    private IVTBuffer createIVTBufferForCategory(HapticFiles.HapticCategory hapticCategory, HapticFiles.HapticStrength hapticStrength) {
        if (hapticCategory != HapticFiles.HapticCategory.INVALID) {
            String hapticFile = hapticCategory.getHapticFile(hapticStrength);
            File file = new File(SDCARD_HAPTIC_OVERRIDE_PATH, hapticFile);
            if (file.exists()) {
                try {
                    return new IVTBuffer(IOUtils.toByteArray(new FileInputStream(file)));
                } catch (Exception e) {
                    String str = TAG;
                    LogUtil.e(str, "Failed to initialize IVT Buffer from SDCARD Override for " + hapticCategory, e);
                    return null;
                }
            }
            try {
                return new IVTBuffer(IOUtils.toByteArray(this.mContext.getAssets().open(hapticFile)));
            } catch (Exception e2) {
                String str2 = TAG;
                LogUtil.e(str2, "Failed to initialize IVT Buffer from Assets for " + hapticCategory, e2);
                return null;
            }
        }
        return null;
    }

    public IVTBuffer getHapticBuffer(HapticFiles.HapticCategory hapticCategory) {
        return this.mHapticBuffers.get(hapticCategory);
    }

    public void releaseAllBuffer() {
        this.mHapticBuffers.clear();
    }

    private HapticBufferMgr() {
    }
}