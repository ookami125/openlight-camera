.class final enum Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$1;
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
.method constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 57
    invoke-direct/range {v0 .. v10}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZLopenlight/co/camera/view/setting/SettingAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .line 61
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$1;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->getMeteringIcon(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
