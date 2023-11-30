package net.hockeyapp.android.objects;

import java.io.Serializable;
import java.util.List;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FeedbackMessage implements Serializable {
    private static final long serialVersionUID = -8773015828853994624L;
    private String mAppId;
    private String mCleanText;
    private String mCreatedAt;
    private String mDeviceModel;
    private String mDeviceOem;
    private String mDeviceOsVersion;
    private List<FeedbackAttachment> mFeedbackAttachments;
    private int mId;
    private String mName;
    private String mSubject;
    private String mText;
    private String mToken;
    private String mUserString;
    private int mVia;

    @Deprecated
    public String getSubjec() {
        return this.mSubject;
    }

    @Deprecated
    public void setSubjec(String str) {
        this.mSubject = str;
    }

    public String getSubject() {
        return this.mSubject;
    }

    public void setSubject(String str) {
        this.mSubject = str;
    }

    public String getText() {
        return this.mText;
    }

    public void setText(String str) {
        this.mText = str;
    }

    public String getOem() {
        return this.mDeviceOem;
    }

    public void setOem(String str) {
        this.mDeviceOem = str;
    }

    public String getModel() {
        return this.mDeviceModel;
    }

    public void setModel(String str) {
        this.mDeviceModel = str;
    }

    public String getOsVersion() {
        return this.mDeviceOsVersion;
    }

    public void setOsVersion(String str) {
        this.mDeviceOsVersion = str;
    }

    public String getCreatedAt() {
        return this.mCreatedAt;
    }

    public void setCreatedAt(String str) {
        this.mCreatedAt = str;
    }

    public int getId() {
        return this.mId;
    }

    public void setId(int i) {
        this.mId = i;
    }

    public String getToken() {
        return this.mToken;
    }

    public void setToken(String str) {
        this.mToken = str;
    }

    public int getVia() {
        return this.mVia;
    }

    public void setVia(int i) {
        this.mVia = i;
    }

    public String getUserString() {
        return this.mUserString;
    }

    public void setUserString(String str) {
        this.mUserString = str;
    }

    public String getCleanText() {
        return this.mCleanText;
    }

    public void setCleanText(String str) {
        this.mCleanText = str;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String getAppId() {
        return this.mAppId;
    }

    public void setAppId(String str) {
        this.mAppId = str;
    }

    public List<FeedbackAttachment> getFeedbackAttachments() {
        return this.mFeedbackAttachments;
    }

    public void setFeedbackAttachments(List<FeedbackAttachment> list) {
        this.mFeedbackAttachments = list;
    }
}