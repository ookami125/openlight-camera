package net.hockeyapp.android.objects;

import java.io.Serializable;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ErrorObject implements Serializable {
    private static final long serialVersionUID = 1508110658372169868L;
    private int mCode;
    private String mMessage;

    public int getCode() {
        return this.mCode;
    }

    public void setCode(int i) {
        this.mCode = i;
    }

    public String getMessage() {
        return this.mMessage;
    }

    public void setMessage(String str) {
        this.mMessage = str;
    }
}