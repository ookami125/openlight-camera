.class Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;
.super Ljava/lang/Object;
.source "UploadLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fihtdc/UploadAgentService/upload/UploadLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Type4Response"
.end annotation


# instance fields
.field checkSumHM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fihtdc/UploadAgentService/upload/UploadLog;


# direct methods
.method private constructor <init>(Lcom/fihtdc/UploadAgentService/upload/UploadLog;)V
    .registers 2

    .line 620
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->this$0:Lcom/fihtdc/UploadAgentService/upload/UploadLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 621
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fihtdc/UploadAgentService/upload/UploadLog;Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;)V
    .registers 3

    .line 620
    invoke-direct {p0, p1}, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;-><init>(Lcom/fihtdc/UploadAgentService/upload/UploadLog;)V

    return-void
.end method
