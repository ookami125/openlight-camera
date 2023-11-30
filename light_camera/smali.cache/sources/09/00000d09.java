package openlight.co.camera.models;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class AncillaryModel {
    private final int mConfirmationResId;
    private final boolean mEnabled;
    private boolean mIsSelected;
    private final int mItemResId;
    private final String mPreferencesKey;
    private final int mSelectedResId;

    private AncillaryModel(Builder builder) {
        this.mPreferencesKey = builder.mPreferencesKey;
        this.mItemResId = builder.mItemResId;
        this.mSelectedResId = builder.mSelectedResId;
        this.mConfirmationResId = builder.mConfirmationResId;
        this.mIsSelected = builder.mIsSelected;
        this.mEnabled = builder.mEnabled;
    }

    public int getItemResId() {
        return this.mItemResId;
    }

    public int getSelectedResId() {
        return this.mSelectedResId;
    }

    public int getConfirmationResId() {
        return this.mConfirmationResId;
    }

    public boolean isSelected() {
        return this.mIsSelected;
    }

    public void setSelected(boolean z) {
        this.mIsSelected = z;
    }

    public String getPreferencesKey() {
        return this.mPreferencesKey;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static class Builder {
        private int mConfirmationResId;
        private boolean mEnabled = true;
        private boolean mIsSelected;
        private final int mItemResId;
        private final String mPreferencesKey;
        private int mSelectedResId;

        public Builder(int i, String str) {
            this.mItemResId = i;
            this.mPreferencesKey = str;
        }

        public Builder isSelected(boolean z) {
            this.mIsSelected = z;
            return this;
        }

        public Builder selectedResId(int i) {
            this.mSelectedResId = i;
            return this;
        }

        public Builder confirmationResId(int i) {
            this.mConfirmationResId = i;
            return this;
        }

        public Builder enabled(boolean z) {
            this.mEnabled = z;
            return this;
        }

        public AncillaryModel build() {
            return new AncillaryModel(this);
        }
    }
}