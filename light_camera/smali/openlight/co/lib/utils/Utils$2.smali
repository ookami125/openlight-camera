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
    .locals 0

    .line 722
    iput-object p1, p0, Lopenlight/co/lib/utils/Utils$2;->this$0:Lopenlight/co/lib/utils/Utils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 725
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lopenlight/co/lib/utils/Utils;->lightCalDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "uuid.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    :try_start_0
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 728
    :try_start_1
    iget-object v3, p0, Lopenlight/co/lib/utils/Utils$2;->this$0:Lopenlight/co/lib/utils/Utils;

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lopenlight/co/lib/utils/Utils;->access$002(Lopenlight/co/lib/utils/Utils;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :try_start_2
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v2

    .line 727
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v2, :cond_0

    .line 729
    :try_start_4
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 730
    :catch_2
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
    :cond_1
    :goto_2
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils$2;->this$0:Lopenlight/co/lib/utils/Utils;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->access$000(Lopenlight/co/lib/utils/Utils;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 734
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils$2;->this$0:Lopenlight/co/lib/utils/Utils;

    const-string v0, "unknown"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/Utils;->access$002(Lopenlight/co/lib/utils/Utils;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method
