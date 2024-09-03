.class final enum Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$4;
.super Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;
.source "StatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZLjava/lang/String;IFI)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 77
    invoke-direct/range {v0 .. v8}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;-><init>(Ljava/lang/String;IZLjava/lang/String;IFILopenlight/co/camera/view/statusbar/StatusAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .registers 2

    .line 90
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$4;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    # invokes: Lopenlight/co/camera/view/statusbar/StatusAdapter;->getCafIcon(Ljava/lang/String;)I
    invoke-static {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->access$300(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    .line 81
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "cam_manual_mode_caf"

    goto :goto_13

    :cond_11
    const-string p0, "cam_auto_mode_caf"

    :goto_13
    return-object p0
.end method
