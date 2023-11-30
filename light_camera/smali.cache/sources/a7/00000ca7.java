package openlight.co.camera.listener;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface ControlCompleteListener {
    void onSelectionComplete();

    void onUpdateHudLayout();

    void onUpdateLevelMeter();

    void onUpdateUi(String str);

    void onUpdateZoom(int i);

    void onWheelItemSelected(String str, int i);
}