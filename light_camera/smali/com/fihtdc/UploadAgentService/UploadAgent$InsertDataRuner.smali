.class Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;
.super Ljava/lang/Object;
.source "UploadAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fihtdc/UploadAgentService/UploadAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsertDataRuner"
.end annotation


# instance fields
.field isForceUpload:Z

.field isResend:Z

.field private sendFileHM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;


# direct methods
.method constructor <init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 836
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->sendFileHM:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 837
    iput-boolean p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isForceUpload:Z

    const/4 p1, 0x1

    .line 838
    iput-boolean p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isResend:Z

    return-void
.end method

.method static synthetic access$0(Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;Ljava/util/HashMap;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->sendFileHM:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 841
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->sendFileHM:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-static {v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->access$3(Lcom/fihtdc/UploadAgentService/UploadAgent;)Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 843
    :try_start_0
    new-instance v1, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-virtual {v2}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    .line 844
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->sendFileHM:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 845
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 842
    monitor-exit v0

    goto :goto_2

    .line 846
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :try_start_1
    iget-boolean v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isForceUpload:Z

    iget-boolean v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isResend:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->insertUploadFileInfo(Ljava/lang/String;ZZ)V

    .line 849
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v4, v4, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InsertDataRuner: fileName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isForceUpload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isForceUpload:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isResend: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isResend:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 851
    :try_start_2
    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v5, v5, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Happen in (InsertDataRuner) dbHelper.insertForceUpload("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") Message: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :goto_1
    invoke-virtual {v1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 842
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method
