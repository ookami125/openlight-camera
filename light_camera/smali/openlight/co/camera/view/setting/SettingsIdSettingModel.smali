.class Lopenlight/co/camera/view/setting/SettingsIdSettingModel;
.super Lopenlight/co/camera/view/setting/SettingModel;
.source "SettingModel.java"


# instance fields
.field private final mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)V
    .registers 4

    .line 114
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getSettingsResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lopenlight/co/camera/view/setting/SettingModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 116
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->initValue()V

    return-void
.end method


# virtual methods
.method getIconId()I
    .registers 1

    .line 156
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getIconId()I

    move-result p0

    return p0
.end method

.method getPreferenceKey()Ljava/lang/String;
    .registers 1

    .line 141
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getRelatedListId()I
    .registers 1

    .line 146
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getOptionalListId()I

    move-result p0

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

    .line 151
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getOptionList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
    .registers 1

    .line 131
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    return-object p0
.end method

.method getType()I
    .registers 1

    .line 136
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getType()I

    move-result p0

    return p0
.end method

.method initValue()V
    .registers 3

    .line 123
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 125
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v1

    invoke-interface {v1, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->setSettingsValue(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method isSelectionHighlighted()Z
    .registers 1

    .line 160
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsIdSettingModel;->mSettingsId:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->isSelectionHighlighted()Z

    move-result p0

    return p0
.end method
