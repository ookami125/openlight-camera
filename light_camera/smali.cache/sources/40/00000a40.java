package com.fihtdc.UploadAgentService.data;

import java.io.File;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class UploadFileInfo {
    public boolean isForceUpload = false;
    public boolean isResend = true;
    public String oriFileName = "";
    public String uploadFileName = "";
    public long ContentLength = 0;
    public long CheckSum = 0;
    public File file = null;
    public boolean isUploadSuccess = false;
    public boolean isMonitoring = true;
    public boolean isNeedUpload = true;
}