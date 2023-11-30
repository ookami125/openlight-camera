package net.hockeyapp.android.objects;

import java.io.File;
import java.io.FilenameFilter;
import java.io.Serializable;
import net.hockeyapp.android.Constants;
import org.apache.commons.io.IOUtils;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FeedbackAttachment implements Serializable {
    private static final long serialVersionUID = 5059651319640956830L;
    private String mCreatedAt;
    private String mFilename;
    private int mId;
    private int mMessageId;
    private String mUpdatedAt;
    private String mUrl;

    public int getId() {
        return this.mId;
    }

    public void setId(int i) {
        this.mId = i;
    }

    public int getMessageId() {
        return this.mMessageId;
    }

    public void setMessageId(int i) {
        this.mMessageId = i;
    }

    public String getFilename() {
        return this.mFilename;
    }

    public void setFilename(String str) {
        this.mFilename = str;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public String getCreatedAt() {
        return this.mCreatedAt;
    }

    public void setCreatedAt(String str) {
        this.mCreatedAt = str;
    }

    public String getUpdatedAt() {
        return this.mUpdatedAt;
    }

    public void setUpdatedAt(String str) {
        this.mUpdatedAt = str;
    }

    public String getCacheId() {
        return "" + this.mMessageId + this.mId;
    }

    public boolean isAvailableInCache() {
        File hockeyAppStorageDir = Constants.getHockeyAppStorageDir();
        if (hockeyAppStorageDir.exists() && hockeyAppStorageDir.isDirectory()) {
            File[] listFiles = hockeyAppStorageDir.listFiles(new FilenameFilter() { // from class: net.hockeyapp.android.objects.FeedbackAttachment.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return str.equals(FeedbackAttachment.this.getCacheId());
                }
            });
            return listFiles != null && listFiles.length == 1;
        }
        return false;
    }

    public String toString() {
        return IOUtils.LINE_SEPARATOR_UNIX + FeedbackAttachment.class.getSimpleName() + "\nid         " + this.mId + "\nmessage id " + this.mMessageId + "\nfilename   " + this.mFilename + "\nurl        " + this.mUrl + "\ncreatedAt  " + this.mCreatedAt + "\nupdatedAt  " + this.mUpdatedAt;
    }
}