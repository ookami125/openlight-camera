package openlight.co.camera.view.level;

public class Clamp {
    public static int clamp(int value, int min, int max) {
        if (value > max) return max;
        if (value < min) return min;
        return value;
    }
}
