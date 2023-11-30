.class Lopenlight/co/camera/view/setting/ConfirmPopup;
.super Lopenlight/co/camera/managers/controls/ControlManager;
.source "ConfirmPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPopupLayout:Landroid/widget/RelativeLayout;

.field private mSettingsActionListener:Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lopenlight/co/camera/managers/controls/ControlManager;-><init>()V

    .line 57
    iput-object p2, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mParentView:Landroid/view/ViewGroup;

    .line 58
    iput-object p1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    return-void
.end method


# virtual methods
.method public addViewToFragment()V
    .locals 4

    .line 64
    iget-object v0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0067

    .line 68
    iget-object v2, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mParentView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    .line 70
    iget-object v0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    invoke-virtual {v1}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/ConfirmPopup;->initChildView()V

    .line 76
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 79
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 80
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 81
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/16 v1, 0x3c

    .line 82
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 83
    iget-object v1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mParentView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public closeAll()V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/ConfirmPopup;->removeModeSelection()V

    return-void
.end method

.method public initChildView()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09003f

    if-eq p1, v0, :cond_1

    const v0, 0x7f09004d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mSettingsActionListener:Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;

    if-eqz p1, :cond_2

    .line 42
    iget-object p1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mSettingsActionListener:Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    invoke-interface {p1, p0}, Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;->onOk(Lopenlight/co/camera/view/setting/SettingModel;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mSettingsActionListener:Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;

    if-eqz p1, :cond_2

    .line 37
    iget-object p1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mSettingsActionListener:Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    invoke-interface {p1, p0}, Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;->onCancel(Lopenlight/co/camera/view/setting/SettingModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeModeSelection()V
    .locals 1

    .line 93
    iget-object v0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mParentView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setSettingsActionListener(Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mSettingsActionListener:Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 106
    iget-object p0, p0, Lopenlight/co/camera/view/setting/ConfirmPopup;->mPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
