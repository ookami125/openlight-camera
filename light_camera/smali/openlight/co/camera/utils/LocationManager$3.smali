.class Lopenlight/co/camera/utils/LocationManager$3;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/LocationManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/LocationManager;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager$3;->this$0:Lopenlight/co/camera/utils/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 132
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager$3;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # getter for: Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;
    invoke-static {v0}, Lopenlight/co/camera/utils/LocationManager;->access$100(Lopenlight/co/camera/utils/LocationManager;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 135
    :try_start_8
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lopenlight/co/camera/utils/LocationManager$3;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # invokes: Lopenlight/co/camera/utils/LocationManager;->getGeodeticFile()Ljava/io/File;
    invoke-static {v4}, Lopenlight/co/camera/utils/LocationManager;->access$200(Lopenlight/co/camera/utils/LocationManager;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_37
    .catchall {:try_start_8 .. :try_end_18} :catchall_35

    .line 136
    :try_start_18
    iget-object v1, p0, Lopenlight/co/camera/utils/LocationManager$3;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # getter for: Lopenlight/co/camera/utils/LocationManager;->mGson:Lcom/google/gson/Gson;
    invoke-static {v1}, Lopenlight/co/camera/utils/LocationManager;->access$400(Lopenlight/co/camera/utils/LocationManager;)Lcom/google/gson/Gson;

    move-result-object v1

    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager$3;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # getter for: Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;
    invoke-static {p0}, Lopenlight/co/camera/utils/LocationManager;->access$100(Lopenlight/co/camera/utils/LocationManager;)Ljava/util/HashMap;

    move-result-object p0

    # getter for: Lopenlight/co/camera/utils/LocationManager;->POINTS_TYPE:Ljava/lang/reflect/Type;
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->access$300()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_32
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2f

    .line 140
    :try_start_2b
    invoke-static {v2}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_4a

    goto :goto_44

    :catchall_2f
    move-exception p0

    move-object v1, v2

    goto :goto_46

    :catch_32
    move-exception p0

    move-object v1, v2

    goto :goto_38

    :catchall_35
    move-exception p0

    goto :goto_46

    :catch_37
    move-exception p0

    .line 138
    :goto_38
    :try_start_38
    # getter for: Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Couldn\'t write geodetic.json"

    invoke-static {v2, v3, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_35

    .line 140
    :try_start_41
    invoke-static {v1}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    :goto_44
    monitor-exit v0

    return-void

    .line 140
    :goto_46
    invoke-static {v1}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    throw p0

    :catchall_4a
    move-exception p0

    .line 142
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_4a

    throw p0
.end method
