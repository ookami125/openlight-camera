.class Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;
.super Landroid/os/Handler;
.source "UploadAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fihtdc/UploadAgentService/UploadAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "uploadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;


# direct methods
.method constructor <init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 172
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/UploadAgent;->COMPLETE_READ_FILES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/UploadAgent;->COMPLETE_READ_FILES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 175
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-virtual {p0, p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->onCompleteWrite([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-virtual {p0, v1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->onCompleteWrite([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 146
    :pswitch_1
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->sendPrepareUploadFiles(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string v2, "handleMessage: MSG_AGENT_START_WRITE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 154
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fihtdc/UploadAgentService/UploadAgent;->ExplorCurrentUploadData(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;

    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-direct {v0, v2}, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;-><init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V

    .line 157
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-static {v2}, Lcom/fihtdc/UploadAgentService/UploadAgent;->access$0(Lcom/fihtdc/UploadAgentService/UploadAgent;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-static {p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->access$0(Lcom/fihtdc/UploadAgentService/UploadAgent;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v2, v2, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, v0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 160
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 161
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mService:Landroid/os/Messenger;

    const/16 v0, 0x65

    invoke-virtual {p1, p0, v0, v1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->deliverMessage(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p1, p1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: MSG_AGENT_SERVICE_OFF"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 182
    invoke-static {p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->access$1(Z)V

    .line 183
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-static {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->access$2(Lcom/fihtdc/UploadAgentService/UploadAgent;)V

    :cond_2
    :goto_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
