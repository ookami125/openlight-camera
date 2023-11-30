package net.hockeyapp.android.objects;

import java.io.Serializable;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FeedbackResponse implements Serializable {
    private static final long serialVersionUID = -1093570359639034766L;
    private Feedback mFeedback;
    private String mStatus;
    private String mToken;

    public String getStatus() {
        return this.mStatus;
    }

    public void setStatus(String str) {
        this.mStatus = str;
    }

    public Feedback getFeedback() {
        return this.mFeedback;
    }

    public void setFeedback(Feedback feedback) {
        this.mFeedback = feedback;
    }

    public String getToken() {
        return this.mToken;
    }

    public void setToken(String str) {
        this.mToken = str;
    }
}