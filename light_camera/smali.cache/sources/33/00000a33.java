package com.fihtdc.UploadAgentService;

import android.content.Context;
import java.io.File;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface IUploadAgent {
    public static final String UPLOAD_AGENT_RECEIVER = "com.fihtdc.AprUploadAgent.UPLOAD_FILE";

    boolean check3GStatus(Context context);

    boolean checkConnectedStatus(Context context);

    boolean checkWifiStatus(Context context);

    void createSelfUploadFile(Context context, File[] fileArr, String str);

    void createSelfUploadFile(Context context, File[] fileArr, String str, boolean z);

    File filesToZip(File[] fileArr, String str, String str2);

    String getDUTInfoString();

    boolean isUserAgreeUpload();

    boolean isWifiOnly();

    void startAgentUpload(Context context, Class cls, File[] fileArr, String str, boolean z);

    void startAgentUpload(Context context, Class cls, File[] fileArr, String str, boolean z, boolean z2);

    void startAgentUpload(Context context, Class cls, File[] fileArr, String str, boolean z, boolean z2, boolean z3);

    void startSelfUpload(Context context);

    void updateUploadServiceStatus(boolean z);
}