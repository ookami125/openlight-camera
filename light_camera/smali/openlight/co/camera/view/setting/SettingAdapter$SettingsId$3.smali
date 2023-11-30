.class final enum Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$3;
.super Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 106
    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZLopenlight/co/camera/view/setting/SettingAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getSubTitle()Ljava/lang/String;
    .locals 4

    .line 114
    invoke-static {}, Lopenlight/co/camera/utils/CipherManager;->get()Lopenlight/co/camera/utils/CipherManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CipherManager;->getPublicKeyHash()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    if-nez p0, :cond_0

    const p0, 0x7f0e004f

    .line 116
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v1, 0x7f0e0108

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
