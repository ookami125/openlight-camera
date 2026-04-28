package openlight.co.camera.listener;

public interface ControlCompleteListener {
    void onSelectionComplete();
    void onUpdateHudLayout();
    void onUpdateLevelMeter();
    void onUpdateUi(String str);
    void onUpdateZoom(int i);
    void onWheelItemSelected(String str, int i);
}
