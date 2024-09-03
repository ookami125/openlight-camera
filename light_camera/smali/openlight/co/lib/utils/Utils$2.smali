.class Lopenlight/co/lib/utils/Utils$2;
.super Ljava/lang/Thread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/lib/utils/Utils;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lib/utils/Utils;


# direct methods
.method constructor <init>(Lopenlight/co/lib/utils/Utils;)V
    .registers 2

    .line 722
    iput-object p1, p0, Lopenlight/co/lib/utils/Utils$2;->this$0:Lopenlight/co/lib/utils/Utils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 725
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lopenlight/co/lib/utils/Utils;->lightCalDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "uuid.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 727
    :try_start_11
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_3c

    const/4 v2, 0x0

    .line 728
    :try_start_1c
    iget-object v3, p0, Lopenlight/co/lib/utils/Utils$2;->this$0:Lopenlight/co/lib/utils/Utils;

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    # setter for: Lopenlight/co/lib/utils/Utils;->mDeviceId:Ljava/lang/String;
    invoke-static {v3, v4}, Lopenlight/co/lib/utils/Utils;->access$002(Lopenlight/co/lib/utils/Utils;Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_25} :catch_2b
    .catchall {:try_start_1c .. :try_end_25} :catchall_29

    .line 729
    :try_start_25
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_3c

    goto :goto_54

    :catchall_29
    move-exception v3

    goto :goto_2d

    :catch_2b
    move-exception v2

    .line 727
    :try_start_2c
    throw v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    :goto_2d
    if-eqz v2, :cond_38

    .line 729
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3c

    goto :goto_3b

    :catch_33
    move-exception v1

    :try_start_34
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3b

    :cond_38
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    :goto_3b
    throw v3
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_3c

    .line 730
    :catch_3c
    # getter for: Lopenlight/co/lib/utils/Utils;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_54
    :goto_54
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils$2;->this$0:Lopenlight/co/lib/utils/Utils;

    # getter for: Lopenlight/co/lib/utils/Utils;->mDeviceId:Ljava/lang/String;
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->access$000(Lopenlight/co/lib/utils/Utils;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_63

    .line 734
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils$2;->this$0:Lopenlight/co/lib/utils/Utils;

    const-string v0, "unknown"

    # setter for: Lopenlight/co/lib/utils/Utils;->mDeviceId:Ljava/lang/String;
    invoke-static {p0, v0}, Lopenlight/co/lib/utils/Utils;->access$002(Lopenlight/co/lib/utils/Utils;Ljava/lang/String;)Ljava/lang/String;

    :cond_63
    return-void
.end method
