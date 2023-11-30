package net.hockeyapp.android.objects;

import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Feedback implements Serializable {
    private static final long serialVersionUID = 2590172806951065320L;
    private String mCreatedAt;
    private String mEmail;
    private int mId;
    private ArrayList<FeedbackMessage> mMessages;
    private String mName;

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String getEmail() {
        return this.mEmail;
    }

    public void setEmail(String str) {
        this.mEmail = str;
    }

    public int getId() {
        return this.mId;
    }

    public void setId(int i) {
        this.mId = i;
    }

    public String getCreatedAt() {
        return this.mCreatedAt;
    }

    public void setCreatedAt(String str) {
        this.mCreatedAt = str;
    }

    public ArrayList<FeedbackMessage> getMessages() {
        return this.mMessages;
    }

    public void setMessages(ArrayList<FeedbackMessage> arrayList) {
        this.mMessages = arrayList;
    }
}