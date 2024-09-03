.class Lopenlight/co/camera/view/setting/SettingModel;
.super Ljava/lang/Object;
.source "SettingModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final TYPE_DIALOG:I = 0x2

.field static final TYPE_INTENT:I = 0x4

.field static final TYPE_NONE:I = 0x0

.field static final TYPE_OPTION:I = 0x3

.field static final TYPE_SWITCH:I = 0x1


# instance fields
.field private mSettingsValue:Ljava/lang/String;

.field private final mSubTitle:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingModel;->mTitle:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lopenlight/co/camera/view/setting/SettingModel;->mSubTitle:Ljava/lang/String;

    return-void
.end method

.method static newModel(Ljava/lang/String;Ljava/lang/String;II)Lopenlight/co/camera/view/setting/SettingModel;
    .registers 5

    .line 47
    new-instance v0, Lopenlight/co/camera/view/setting/DynamicSettingModel;

    invoke-direct {v0, p0, p1, p2, p3}, Lopenlight/co/camera/view/setting/DynamicSettingModel;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method static newModel(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Lopenlight/co/camera/view/setting/SettingModel;
    .registers 2

    .line 34
    new-instance v0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;-><init>(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)V

    return-object v0
.end method


# virtual methods
.method getIconId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method getPreferenceKey()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method getRelatedListId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method getResourceList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method getSelectedIconId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method getSettingsValue()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingModel;->mSettingsValue:Ljava/lang/String;

    return-object p0
.end method

.method getSubTitle()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingModel;->mSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method getTitle()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingModel;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method getType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method initValue()V
    .registers 1

    return-void
.end method

.method isSelectionHighlighted()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method setSettingsValue(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingModel;->mSettingsValue:Ljava/lang/String;

    return-void
.end method
