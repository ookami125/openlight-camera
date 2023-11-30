package net.hockeyapp.android.objects;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum FeedbackUserDataElement {
    DONT_SHOW(0),
    OPTIONAL(1),
    REQUIRED(2);
    
    private final int mValue;

    FeedbackUserDataElement(int i) {
        this.mValue = i;
    }

    public int getValue() {
        return this.mValue;
    }
}