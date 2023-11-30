.class public interface abstract Lcom/fihtdc/UploadAgentService/IUploadAgent;
.super Ljava/lang/Object;
.source "IUploadAgent.java"


# static fields
.field public static final UPLOAD_AGENT_RECEIVER:Ljava/lang/String; = "com.fihtdc.AprUploadAgent.UPLOAD_FILE"


# virtual methods
.method public abstract check3GStatus(Landroid/content/Context;)Z
.end method

.method public abstract checkConnectedStatus(Landroid/content/Context;)Z
.end method

.method public abstract checkWifiStatus(Landroid/content/Context;)Z
.end method

.method public abstract createSelfUploadFile(Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract createSelfUploadFile(Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;Z)V
.end method

.method public abstract filesToZip([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDUTInfoString()Ljava/lang/String;
.end method

.method public abstract isUserAgreeUpload()Z
.end method

.method public abstract isWifiOnly()Z
.end method

.method public abstract startAgentUpload(Landroid/content/Context;Ljava/lang/Class;[Ljava/io/File;Ljava/lang/String;Z)V
.end method

.method public abstract startAgentUpload(Landroid/content/Context;Ljava/lang/Class;[Ljava/io/File;Ljava/lang/String;ZZ)V
.end method

.method public abstract startAgentUpload(Landroid/content/Context;Ljava/lang/Class;[Ljava/io/File;Ljava/lang/String;ZZZ)V
.end method

.method public abstract startSelfUpload(Landroid/content/Context;)V
.end method

.method public abstract updateUploadServiceStatus(Z)V
.end method
