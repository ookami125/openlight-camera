.class Lcom/fihtdc/UploadAgentService/UploadAgent$1;
.super Ljava/lang/Object;
.source "UploadAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fihtdc/UploadAgentService/UploadAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;


# direct methods
.method constructor <init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AprUploadAgent ServiceConnection: connect -> package"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/fihtdc/UploadAgentService/UploadAgent;->mService:Landroid/os/Messenger;

    .line 125
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    .line 126
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mAgent:Landroid/os/Messenger;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->deliverMessage(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 130
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/fihtdc/UploadAgentService/UploadAgent;->mService:Landroid/os/Messenger;

    .line 131
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    return-void
.end method
