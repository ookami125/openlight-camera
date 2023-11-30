.class Lopenlight/co/camera/view/setting/DynamicSettingModel;
.super Lopenlight/co/camera/view/setting/SettingModel;
.source "SettingModel.java"


# instance fields
.field private final mIconId:I

.field private final mIsSelectionHighlighted:Z

.field private final mSelectedIconId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/setting/SettingModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput p3, p0, Lopenlight/co/camera/view/setting/DynamicSettingModel;->mIconId:I

    .line 173
    iput p4, p0, Lopenlight/co/camera/view/setting/DynamicSettingModel;->mSelectedIconId:I

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lopenlight/co/camera/view/setting/DynamicSettingModel;->mIsSelectionHighlighted:Z

    .line 175
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/DynamicSettingModel;->initValue()V

    return-void
.end method


# virtual methods
.method getIconId()I
    .locals 0

    .line 185
    iget p0, p0, Lopenlight/co/camera/view/setting/DynamicSettingModel;->mIconId:I

    return p0
.end method

.method getSelectedIconId()I
    .locals 0

    .line 190
    iget p0, p0, Lopenlight/co/camera/view/setting/DynamicSettingModel;->mSelectedIconId:I

    return p0
.end method

.method initValue()V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/DynamicSettingModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/setting/DynamicSettingModel;->setSettingsValue(Ljava/lang/String;)V

    return-void
.end method

.method isSelectionHighlighted()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lopenlight/co/camera/view/setting/DynamicSettingModel;->mIsSelectionHighlighted:Z

    return p0
.end method
