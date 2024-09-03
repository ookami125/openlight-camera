.class public Lopenlight/co/lib/utils/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# static fields
.field private static final FEATURE_PROP_FILE_NAME:Ljava/lang/String; = "features.prop"

.field private static final TAG:Ljava/lang/String; = "FeatureManager"

.field private static final sInstance:Lopenlight/co/lib/utils/FeatureManager;


# instance fields
.field private final mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lopenlight/co/lib/utils/FeatureManager;

    invoke-direct {v0}, Lopenlight/co/lib/utils/FeatureManager;-><init>()V

    sput-object v0, Lopenlight/co/lib/utils/FeatureManager;->sInstance:Lopenlight/co/lib/utils/FeatureManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/utils/FeatureManager;->mProperties:Ljava/util/Properties;

    .line 60
    :try_start_a
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    .line 61
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "features.prop"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_3f

    const/4 v1, 0x0

    .line 62
    :try_start_1b
    iget-object p0, p0, Lopenlight/co/lib/utils/FeatureManager;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 65
    sget-object p0, Lopenlight/co/lib/utils/FeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "Feature Property found, and properties loaded"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_27} :catch_2d
    .catchall {:try_start_1b .. :try_end_27} :catchall_2b

    .line 66
    :try_start_27
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_3f

    goto :goto_46

    :catchall_2b
    move-exception p0

    goto :goto_30

    :catch_2d
    move-exception p0

    move-object v1, p0

    .line 60
    :try_start_2f
    throw v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2b

    :goto_30
    if-eqz v1, :cond_3b

    .line 66
    :try_start_32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3f

    goto :goto_3e

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3e

    :cond_3b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_3e
    throw p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3f} :catch_3f

    .line 67
    :catch_3f
    sget-object p0, Lopenlight/co/lib/utils/FeatureManager;->TAG:Ljava/lang/String;

    const-string v0, "Feature Property file not found, default properties used"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void
.end method

.method public static get()Lopenlight/co/lib/utils/FeatureManager;
    .registers 1

    .line 23
    sget-object v0, Lopenlight/co/lib/utils/FeatureManager;->sInstance:Lopenlight/co/lib/utils/FeatureManager;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 51
    iget-object p0, p0, Lopenlight/co/lib/utils/FeatureManager;->mProperties:Ljava/util/Properties;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_e

    .line 52
    :cond_a
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :goto_e
    return p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 5

    .line 42
    iget-object p0, p0, Lopenlight/co/lib/utils/FeatureManager;->mProperties:Ljava/util/Properties;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_e

    .line 43
    :cond_a
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    :goto_e
    return-wide p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .line 37
    iget-object p0, p0, Lopenlight/co/lib/utils/FeatureManager;->mProperties:Ljava/util/Properties;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_e

    .line 38
    :cond_a
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    :goto_e
    return p2
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    .line 27
    iget-object p0, p0, Lopenlight/co/lib/utils/FeatureManager;->mProperties:Ljava/util/Properties;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_f

    .line 28
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_f
    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 32
    iget-object p0, p0, Lopenlight/co/lib/utils/FeatureManager;->mProperties:Ljava/util/Properties;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_e

    .line 33
    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_e
    return p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 56
    iget-object p0, p0, Lopenlight/co/lib/utils/FeatureManager;->mProperties:Ljava/util/Properties;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
