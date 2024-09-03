.class public Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;
.super Ljava/lang/Object;
.source "UploadFileInfo.java"


# instance fields
.field public CheckSum:J

.field public ContentLength:J

.field public file:Ljava/io/File;

.field public isForceUpload:Z

.field public isMonitoring:Z

.field public isNeedUpload:Z

.field public isResend:Z

.field public isUploadSuccess:Z

.field public oriFileName:Ljava/lang/String;

.field public uploadFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isForceUpload:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isResend:Z

    const-string v2, ""

    .line 8
    iput-object v2, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->oriFileName:Ljava/lang/String;

    const-string v2, ""

    .line 9
    iput-object v2, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->ContentLength:J

    .line 11
    iput-wide v2, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->CheckSum:J

    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    .line 13
    iput-boolean v0, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 14
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    .line 15
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    return-void
.end method
