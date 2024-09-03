.class Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SourceWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder<",
            "TDataType;>;TDataType;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    .line 261
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    .line 269
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    # getter for: Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;->open(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_21
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    .line 270
    :try_start_b
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p0
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_13} :catch_1c
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    if-eqz p1, :cond_38

    .line 278
    :try_start_15
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_38

    goto :goto_38

    :catchall_19
    move-exception p0

    move-object v0, p1

    goto :goto_39

    :catch_1c
    move-exception p0

    move-object v0, p1

    goto :goto_22

    :catchall_1f
    move-exception p0

    goto :goto_39

    :catch_21
    move-exception p0

    :goto_22
    :try_start_22
    const-string p1, "DecodeJob"

    const/4 v1, 0x3

    .line 272
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "DecodeJob"

    const-string v1, "Failed to find file to write to disk cache"

    .line 273
    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_1f

    :cond_32
    if-eqz v0, :cond_37

    .line 278
    :try_start_34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    const/4 p0, 0x0

    :catch_38
    :cond_38
    :goto_38
    return p0

    :goto_39
    if-eqz v0, :cond_3e

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3e

    .line 281
    :catch_3e
    :cond_3e
    throw p0
.end method
