package openlight.co.camera.haptic;

import openlight.co.camera.haptic.HapticFiles;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum Immersion {
    FOCUS_ACHIEVED("light_focus_achieved", HapticFiles.HapticCategory.FOCUS),
    FOCUS_LOCK("light_focus_lock", HapticFiles.HapticCategory.FOCUS),
    DISPLAY_ZOOM_PRIME("light_flick_screen", HapticFiles.HapticCategory.SCREEN_FLICK),
    DISPLAY_ZOOM_DOT("light_screen_zoom_dots", HapticFiles.HapticCategory.ZOOM),
    TOUCHSTRIP_ZOOM_PRIME("light_flick_touch", HapticFiles.HapticCategory.TOUCHSTRIP),
    TOUCHSTRIP_ZOOM_DOT("light_strip_zoom_dots", HapticFiles.HapticCategory.ZOOM),
    LOW_BATTERY("light_low_battery", HapticFiles.HapticCategory.BATTERY),
    LENS_BLOCKED("light_sensor_blocked", HapticFiles.HapticCategory.LENS_BLOCKED),
    GALLERY_SELECTION("light_gallery_selection", HapticFiles.HapticCategory.GALLERY),
    GALLERY_SCROLL_LIMIT("light_gallery_scroll_limit", HapticFiles.HapticCategory.GALLERY),
    BRIGHTNESS_BEGIN("light_brightness_begin", HapticFiles.HapticCategory.BRIGHTNESS),
    BRIGHTNESS_SCROLL("light_brightness_scroll", HapticFiles.HapticCategory.BRIGHTNESS),
    BRIGHTNESS_PREV_VALUE("light_brightness_previous_value", HapticFiles.HapticCategory.BRIGHTNESS),
    BRIGHTNESS_END("light_brightness_end", HapticFiles.HapticCategory.BRIGHTNESS),
    DOF_ADJUSTING("light_dof_adjusting", HapticFiles.HapticCategory.DOF),
    DOF_END("light_dof_end", HapticFiles.HapticCategory.DOF);
    
    private final HapticFiles.HapticCategory mHapticCategory;
    private final String mIndexedEffectName;

    Immersion(String str, HapticFiles.HapticCategory hapticCategory) {
        this.mIndexedEffectName = str;
        this.mHapticCategory = hapticCategory;
    }

    public String getIndexedEffectName() {
        return this.mIndexedEffectName;
    }

    public HapticFiles.HapticCategory getHapticCategory() {
        return this.mHapticCategory;
    }
}