package openlight.co.camera.view.grid;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class GridViewModel {
    private static GridViewModel mInstance;
    private int mPreviewHeight;
    private int mPreviewWidth;

    protected GridViewModel() {
    }

    public static GridViewModel getInstance() {
        if (mInstance == null) {
            mInstance = new GridViewModel();
        }
        return mInstance;
    }

    public void setPreviewHeight(int i) {
        this.mPreviewHeight = i;
    }

    public int getPreviewHeight() {
        return this.mPreviewHeight;
    }

    public void setPreviewWidth(int i) {
        this.mPreviewWidth = i;
    }

    public int getPreviewWidth() {
        return this.mPreviewWidth;
    }
}