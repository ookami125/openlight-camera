package openlight.co.camera.view.statusbar;

import java.io.Serializable;
import openlight.co.camera.view.statusbar.StatusAdapter;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class StatusModel implements Serializable {
    private float mAlpha;
    private int mIconId;
    private final String mPreferenceKey;
    private final int mType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StatusModel(StatusAdapter.StatusBadgeId statusBadgeId) {
        this.mPreferenceKey = statusBadgeId.getPreferenceKey();
        this.mType = statusBadgeId.getType();
        this.mIconId = statusBadgeId.getIconId();
        this.mAlpha = statusBadgeId.getAlpha();
    }

    public int getType() {
        return this.mType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getPreferenceKey() {
        return this.mPreferenceKey;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public void setAlpha(float f) {
        this.mAlpha = f;
    }
}