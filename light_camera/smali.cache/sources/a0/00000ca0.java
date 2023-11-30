package openlight.co.camera.haptic;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class HapticFiles {

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum HapticStrength {
        OFF,
        NORMAL,
        STRONG
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum HapticCategory {
        BRIGHTNESS("light_brightness_soft.ivt", "light_brightness_strong.ivt"),
        DOF("light_dof_soft.ivt", "light_dof_strong.ivt"),
        FOCUS("light_focus_soft.ivt", "light_focus_strong.ivt"),
        BATTERY("light_battery_soft.ivt", "light_battery_strong.ivt"),
        LENS_BLOCKED("light_sensor_soft.ivt", "light_sensor_strong.ivt"),
        ZOOM("light_zoom_soft.ivt", "light_zoom_strong.ivt"),
        SCREEN_FLICK("light_flick_screen_soft.ivt", "light_flick_screen_strong.ivt"),
        GALLERY("light_gallery_soft.ivt", "light_gallery_strong.ivt"),
        TOUCHSTRIP("light_touchstrip_soft.ivt", "light_touchstrip_strong.ivt"),
        INVALID(null, null);
        
        private final String mNormalStrengthFile;
        private final String mStrongStrengthFile;

        HapticCategory(String str, String str2) {
            this.mNormalStrengthFile = str;
            this.mStrongStrengthFile = str2;
        }

        public String getHapticFile(HapticStrength hapticStrength) {
            if (hapticStrength == HapticStrength.NORMAL) {
                return this.mNormalStrengthFile;
            }
            if (hapticStrength == HapticStrength.STRONG) {
                return this.mStrongStrengthFile;
            }
            return null;
        }
    }
}