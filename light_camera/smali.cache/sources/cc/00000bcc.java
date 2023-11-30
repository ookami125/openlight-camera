package net.hockeyapp.android.objects;

import org.apache.commons.io.IOUtils;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class CrashMetaData {
    private String mUserDescription;
    private String mUserEmail;
    private String mUserID;

    public String getUserDescription() {
        return this.mUserDescription;
    }

    public void setUserDescription(String str) {
        this.mUserDescription = str;
    }

    public String getUserEmail() {
        return this.mUserEmail;
    }

    public void setUserEmail(String str) {
        this.mUserEmail = str;
    }

    public String getUserID() {
        return this.mUserID;
    }

    public void setUserID(String str) {
        this.mUserID = str;
    }

    public String toString() {
        return IOUtils.LINE_SEPARATOR_UNIX + CrashMetaData.class.getSimpleName() + "\nuserDescription " + this.mUserDescription + "\nuserEmail       " + this.mUserEmail + "\nuserID          " + this.mUserID;
    }
}