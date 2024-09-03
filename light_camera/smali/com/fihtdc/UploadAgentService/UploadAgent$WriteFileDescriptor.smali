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
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 221
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_31e

    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_31e

    const/4 v0, 0x0

    .line 223
    :try_start_d
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    if-eqz v1, :cond_75

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

    if-eqz v1, :cond_75

    .line 226
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v4, v4, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_38} :catch_195
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_f8
    .catchall {:try_start_d .. :try_end_38} :catchall_f4

    .line 227
    :try_start_38
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_43} :catch_67
    .catchall {:try_start_38 .. :try_end_43} :catchall_60

    .line 228
    :try_start_43
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFileSize:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fihtdc/UploadAgentService/UploadAgent;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Long;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_54
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4e

    move-object v0, v1

    goto :goto_76

    :catchall_4e
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_2a3

    :catch_54
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_fa

    :catch_5a
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_197

    :catchall_60
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_2a3

    :catch_67
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_fa

    :catch_6e
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_197

    :cond_75
    move-object v2, v0

    .line 260
    :goto_76
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_7b
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
    :try_end_a0
    .catchall {:try_start_7b .. :try_end_a0} :catchall_f1

    .line 265
    :try_start_a0
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v0, :cond_aa

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_aa
    if-eqz v2, :cond_31e

    .line 270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b2} :catch_b4

    goto/16 :goto_31e

    :catch_b4
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d6

    .line 276
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(226): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_c6
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31e

    .line 278
    :cond_d6
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(229): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_e1
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31e

    :catchall_f1
    move-exception p0

    .line 260
    :try_start_f2
    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    throw p0

    :catchall_f4
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2a3

    :catch_f8
    move-exception v1

    move-object v2, v0

    .line 251
    :goto_fa
    :try_start_fa
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11a

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

    goto :goto_133

    .line 254
    :cond_11a
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
    :try_end_133
    .catchall {:try_start_fa .. :try_end_133} :catchall_2a2

    .line 260
    :goto_133
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_138
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
    :try_end_15d
    .catchall {:try_start_138 .. :try_end_15d} :catchall_192

    .line 265
    :try_start_15d
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v0, :cond_167

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_167
    if-eqz v2, :cond_31e

    .line 270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_16f} :catch_171

    goto/16 :goto_31e

    :catch_171
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_185

    .line 276
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(226): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_c6

    .line 278
    :cond_185
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(229): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_e1

    :catchall_192
    move-exception p0

    .line 260
    :try_start_193
    monitor-exit v1
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_192

    throw p0

    :catch_195
    move-exception v1

    move-object v2, v0

    .line 233
    :goto_197
    :try_start_197
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b8

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

    goto/16 :goto_240

    .line 236
    :cond_1b8
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

    if-eqz v3, :cond_227

    const/4 v4, 0x0

    .line 240
    :goto_1db
    array-length v5, v3

    if-lt v4, v5, :cond_1df

    goto :goto_227

    .line 241
    :cond_1df
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

    goto :goto_1db

    .line 244
    :cond_227
    :goto_227
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
    :try_end_240
    .catchall {:try_start_197 .. :try_end_240} :catchall_2a2

    .line 260
    :goto_240
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_245
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
    :try_end_26a
    .catchall {:try_start_245 .. :try_end_26a} :catchall_29f

    .line 265
    :try_start_26a
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v0, :cond_274

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_274
    if-eqz v2, :cond_31e

    .line 270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_27c
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_27c} :catch_27e

    goto/16 :goto_31e

    :catch_27e
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_292

    .line 276
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(226): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_c6

    .line 278
    :cond_292
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(229): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_e1

    :catchall_29f
    move-exception p0

    .line 260
    :try_start_2a0
    monitor-exit v1
    :try_end_2a1
    .catchall {:try_start_2a0 .. :try_end_2a1} :catchall_29f

    throw p0

    :catchall_2a2
    move-exception v1

    :goto_2a3
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    iget-object v3, v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v3

    .line 261
    :try_start_2a8
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
    :try_end_2cd
    .catchall {:try_start_2a8 .. :try_end_2cd} :catchall_31b

    .line 265
    :try_start_2cd
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;->writeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v0, :cond_2d7

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_2d7
    if-eqz v2, :cond_31a

    .line 270
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 271
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2df
    .catch Ljava/io/IOException; {:try_start_2cd .. :try_end_2df} :catch_2e0

    goto :goto_31a

    :catch_2e0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_301

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

    goto :goto_31a

    .line 278
    :cond_301
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
    :cond_31a
    :goto_31a
    throw v1

    :catchall_31b
    move-exception p0

    .line 260
    :try_start_31c
    monitor-exit v3
    :try_end_31d
    .catchall {:try_start_31c .. :try_end_31d} :catchall_31b

    throw p0

    .line 286
    :cond_31e
    :goto_31e
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
