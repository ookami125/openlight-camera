.class final enum Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$2;
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
.method constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;Z)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 95
    invoke-direct/range {v0 .. v11}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;ZLopenlight/co/camera/view/setting/SettingAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getOptionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lopenlight/co/camera/enums/FtuView;->getFtuLabelResourceIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
