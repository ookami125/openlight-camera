.class Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;
.super Ljava/lang/Object;
.source "UploadLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fihtdc/UploadAgentService/upload/UploadLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Type3Response"
.end annotation


# instance fields
.field isFinished:Ljava/lang/String;

.field isMonitoring:Ljava/lang/String;

.field position:J

.field resourceID:Ljava/lang/String;

.field final synthetic this$0:Lcom/fihtdc/UploadAgentService/upload/UploadLog;


# direct methods
.method private constructor <init>(Lcom/fihtdc/UploadAgentService/upload/UploadLog;)V
    .locals 2

    .line 612
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->this$0:Lcom/fihtdc/UploadAgentService/upload/UploadLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 613
    iput-wide v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    const/4 p1, 0x0

    .line 614
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->resourceID:Ljava/lang/String;

    const-string p1, "N"

    .line 615
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isFinished:Ljava/lang/String;

    const-string p1, "Y"

    .line 616
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fihtdc/UploadAgentService/upload/UploadLog;Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;)V
    .locals 0

    .line 612
    invoke-direct {p0, p1}, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;-><init>(Lcom/fihtdc/UploadAgentService/upload/UploadLog;)V

    return-void
.end method
