package openlight.co.lib.view;

public interface OrientationChangeSource {
    void addOnOrientationChangedListener(OnOrientationChangedListener listener);
    void removeOnOrientationChangedListener(OnOrientationChangedListener listener);
}
