package openlight.co.camera.testintent;

public interface TestIntentListener {
    String getListenerName();
    void updateFocusROI(int i, int i2);
    void updateUiAfterTest();
}
