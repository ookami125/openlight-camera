package openlight.co.thermalmonitor;

public class ThermalIntent {
    public static final String ACTION_THERMAL_SERVICE = "openlight.co.thermalmonitor.ThermalService";
    public static final String EXTRA_THERMAL_LEVEL = "extra_thermal_level";
    public static final String LIGHT_LENS_MODULES_THERMAL_LEVEL_CHANGED = "light_lens_modules_thermal_level_changed";
    public static final String PACKAGE_THERMAL_SERVICE = "openlight.co.thermalmonitor";

    public enum Level {
        SAFE,
        WARMER,
        HOT,
        COOLING
    }
}
