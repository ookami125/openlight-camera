package openlight.co.thermalmonitor;

/* loaded from: /tmp/jadx-4170831442567871325.dex */
public class ThermalIntent {
    public static final String ACTION_THERMAL_SERVICE = "openlight.co.thermalmonitor.ThermalService";
    public static final String EXTRA_THERMAL_LEVEL = "extra_thermal_level";
    public static final String LIGHT_LENS_MODULES_THERMAL_LEVEL_CHANGED = "light_lens_modules_thermal_level_changed";
    public static final String PACKAGE_THERMAL_SERVICE = "openlight.co.thermalmonitor";

    /* loaded from: /tmp/jadx-4170831442567871325.dex */
    public enum Level {
        SAFE,
        WARMER,
        HOT,
        COOLING
    }
}