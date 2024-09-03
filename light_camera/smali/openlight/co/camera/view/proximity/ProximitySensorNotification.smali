.class public Lopenlight/co/camera/view/proximity/ProximitySensorNotification;
.super Ljava/lang/Object;
.source "ProximitySensorNotification.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# instance fields
.field private mBlockedLens1:Landroid/widget/ImageView;

.field private mBlockedLens2:Landroid/widget/ImageView;

.field private mBlockedLens3:Landroid/widget/ImageView;

.field private mBlockedLens4:Landroid/widget/ImageView;

.field private mBlockedLens5:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mIsFragmentAdded:Z

.field private mLensBlockedView:Landroid/view/View;

.field private mProximitySensorNotificationView:Landroid/view/View;

.field private mRootContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mIsFragmentAdded:Z

    .line 38
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addViewToFragment(Landroid/view/ViewGroup;)V
    .registers 6

    .line 44
    iget-boolean v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mIsFragmentAdded:Z

    if-eqz v0, :cond_5

    return-void

    .line 47
    :cond_5
    iput-object p1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mRootContainer:Landroid/view/ViewGroup;

    .line 48
    iget-object p1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b005e

    .line 50
    iget-object v1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mRootContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    .line 54
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 56
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 57
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 58
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 59
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 60
    iget-object v1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens1:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens2:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens3:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens4:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens5:Landroid/widget/ImageView;

    const v0, 0x7f0b0049

    .line 68
    iget-object v1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mLensBlockedView:Landroid/view/View;

    .line 70
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 72
    invoke-virtual {p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->updateLensBlockedViewOrientation(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 74
    iget-object p1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mLensBlockedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mIsFragmentAdded:Z

    return-void
.end method

.method private hideLensObstructionView()V
    .registers 3

    .line 107
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object p0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens5:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateLensBlockedViewOrientation(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 6

    .line 139
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 144
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 145
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 146
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 147
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 149
    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

    const v2, 0x7f07013d

    if-eq p1, v1, :cond_42

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne p1, v1, :cond_1b

    goto :goto_42

    .line 153
    :cond_1b
    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    const v3, 0x7f07013b

    if-ne p1, v1, :cond_32

    .line 154
    iget-object v1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mContext:Landroid/content/Context;

    .line 155
    invoke-static {v3, v2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    goto :goto_54

    .line 157
    :cond_32
    iget-object v1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {v3, v2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_54

    .line 151
    :cond_42
    :goto_42
    iget-object v1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f07013a

    invoke-static {v1, v3}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {v3, v2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 160
    :goto_54
    iget-object v1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mLensBlockedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object p0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mLensBlockedView:Landroid/view/View;

    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public closeAll()V
    .registers 3

    .line 117
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mRootContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mIsFragmentAdded:Z

    .line 119
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->getListenerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mRootContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mLensBlockedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 134
    const-class p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 3

    .line 127
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->updateLensBlockedViewOrientation(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 128
    iget-object p0, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mLensBlockedView:Landroid/view/View;

    .line 129
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    const/16 v0, 0xa

    .line 128
    invoke-static {p0, p1, v0}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    return-void
.end method

.method public setBlockedLensNumbers(Ljava/util/List;Landroid/view/ViewGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p2}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->addViewToFragment(Landroid/view/ViewGroup;)V

    .line 82
    invoke-direct {p0}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->hideLensObstructionView()V

    .line 83
    iget-object p2, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mProximitySensorNotificationView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    move v1, v0

    :goto_11
    if-ge v1, p2, :cond_41

    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_42

    goto :goto_3e

    .line 100
    :pswitch_21
    iget-object v2, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens5:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 97
    :pswitch_27
    iget-object v2, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens4:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 94
    :pswitch_2d
    iget-object v2, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens3:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 91
    :pswitch_33
    iget-object v2, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens2:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 88
    :pswitch_39
    iget-object v2, p0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->mBlockedLens1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method
