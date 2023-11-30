.class Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;
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
    name = "WriteFileDescriptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

.field public writeFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 221
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v2, v2, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v4, v4, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 227
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    :try_start_2
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFileSize:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fihtdc/UploadAgentService/UploadAgent;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_9

    :catch_2
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_3

    :catch_3
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_5

    :cond_0
    move-object v2, v0

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_3
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add to completeUploadFiles: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v5, v5, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v4, v4, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 265
    :try_start_4
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_1
    if-eqz v2, :cond_e

    .line 270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_b

    :catch_4
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(226): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(229): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catchall_2
    move-exception p0

    .line 260
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception v1

    move-object v2, v0

    goto/16 :goto_9

    :catch_5
    move-exception v1

    move-object v2, v0

    .line 251
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 252
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(204): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 254
    :cond_3
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(206): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 260
    :goto_4
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_7
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add to completeUploadFiles: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v5, v5, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v4, v4, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 265
    :try_start_8
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v0, :cond_4

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_e

    .line 270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_b

    :catch_6
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 276
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(226): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 278
    :cond_5
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(229): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_4
    move-exception p0

    .line 260
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    :catch_7
    move-exception v1

    move-object v2, v0

    .line 233
    :goto_5
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 234
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(186): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 236
    :cond_6
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(188): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 238
    invoke-virtual {v1}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v4, 0x0

    .line 240
    :goto_6
    array-length v5, v3

    if-lt v4, v5, :cond_7

    goto :goto_7

    .line 241
    :cond_7
    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v5, v5, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "at: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 244
    :cond_8
    :goto_7
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(196): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 260
    :goto_8
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_b
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add to completeUploadFiles: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v5, v5, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v4, v4, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 265
    :try_start_c
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v0, :cond_9

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_9
    if-eqz v2, :cond_e

    .line 270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 276
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(226): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 278
    :cond_a
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(229): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_5
    move-exception p0

    .line 260
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw p0

    :catchall_6
    move-exception v1

    :goto_9
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v3

    .line 261
    :try_start_e
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v4, v4, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add to completeUploadFiles: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v6, v6, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v4, v4, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v5, v5, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 265
    :try_start_f
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v0, :cond_b

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_b
    if-eqz v2, :cond_d

    .line 270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 276
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(226): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 278
    :cond_c
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(229): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_d
    :goto_a
    throw v1

    :catchall_7
    move-exception p0

    .line 260
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw p0

    .line 286
    :cond_e
    :goto_b
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread Stop("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
