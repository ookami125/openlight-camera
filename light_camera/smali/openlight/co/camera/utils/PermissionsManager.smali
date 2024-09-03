.class public Lopenlight/co/camera/utils/PermissionsManager;
.super Ljava/lang/Object;
.source "PermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;
    }
.end annotation


# static fields
.field private static final CAMERA_PERMISSIONS:[Ljava/lang/String;

.field public static final REQUEST_CAMERA_PERMISSIONS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionsManager"

.field private static sInstance:Lopenlight/co/camera/utils/PermissionsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/PermissionsManager;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lopenlight/co/camera/utils/PermissionsManager;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized get()Lopenlight/co/camera/utils/PermissionsManager;
    .registers 2

    const-class v0, Lopenlight/co/camera/utils/PermissionsManager;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v1, Lopenlight/co/camera/utils/PermissionsManager;->sInstance:Lopenlight/co/camera/utils/PermissionsManager;

    if-nez v1, :cond_e

    .line 40
    new-instance v1, Lopenlight/co/camera/utils/PermissionsManager;

    invoke-direct {v1}, Lopenlight/co/camera/utils/PermissionsManager;-><init>()V

    sput-object v1, Lopenlight/co/camera/utils/PermissionsManager;->sInstance:Lopenlight/co/camera/utils/PermissionsManager;

    .line 42
    :cond_e
    sget-object v1, Lopenlight/co/camera/utils/PermissionsManager;->sInstance:Lopenlight/co/camera/utils/PermissionsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 38
    monitor-exit v0

    throw v1
.end method

.method public static hasCameraPermission(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.CAMERA"

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static hasLocationPermission(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private requestCameraPermissions(Landroid/app/Activity;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lopenlight/co/camera/utils/PermissionsManager;->shouldShowRationale(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 50
    invoke-static {}, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;->newInstance()Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "dialog"

    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1a

    .line 53
    :cond_14
    sget-object p0, Lopenlight/co/camera/utils/PermissionsManager;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_1a
    return-void
.end method

.method private shouldShowRationale(Landroid/app/Activity;)Z
    .registers 6

    .line 79
    sget-object p0, Lopenlight/co/camera/utils/PermissionsManager;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 80
    invoke-virtual {p1, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method


# virtual methods
.method public hasAllPermissionsGranted(Landroid/app/Activity;)Z
    .registers 7

    .line 62
    sget-object v0, Lopenlight/co/camera/utils/PermissionsManager;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    if-eqz p1, :cond_15

    .line 64
    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_15

    .line 66
    invoke-direct {p0, p1}, Lopenlight/co/camera/utils/PermissionsManager;->requestCameraPermissions(Landroid/app/Activity;)V

    return v2

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public showMissingPermissionError(Landroid/app/Activity;)V
    .registers 3

    if-eqz p1, :cond_10

    const p0, 0x7f0e0100

    const/4 v0, 0x0

    .line 92
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_10
    return-void
.end method
