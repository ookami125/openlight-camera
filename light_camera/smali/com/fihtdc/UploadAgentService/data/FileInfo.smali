.class public Lcom/fihtdc/UploadAgentService/data/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field public isForceUpload:Z

.field public isResend:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isForceUpload:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isResend:Z

    return-void
.end method
