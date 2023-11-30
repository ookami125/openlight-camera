.class public Lopenlight/co/camera/view/notification/AlertView;
.super Lopenlight/co/camera/managers/controls/ControlManager;
.source "AlertView.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/notification/AlertView$StatTask;,
        Lopenlight/co/camera/view/notification/AlertView$AlertState;
    }
.end annotation


# static fields
.field private static final ALERT_VIEW_HIDE_DELAY:J = 0x1388L

.field private static final LOW_AVAILABLE_STORAGE_SPACE_PERCENTAGE:F = 5.0f

.field private static final LOW_IMAGE_COUNT_WARNING_THRESHOLD:I = 0xc8


# instance fields
.field private mAlertInfoLayout:Landroid/view/View;

.field private final mAlertLayoutView:Landroid/view/View;

.field private mAlertState:Lopenlight/co/camera/view/notification/AlertView$AlertState;

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryInfo:Landroid/widget/TextView;

.field private mBottomPadding:Landroid/view/View;

.field private final mCamApp:Lopenlight/co/camera/CameraApp;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHideAlertLayoutRunnable:Ljava/lang/Runnable;

.field private final mImageFragmentView:Landroid/view/ViewGroup;

.field private mNotificationAlertLayout:Landroid/view/View;

.field private mRemainingImageCount:Landroid/widget/TextView;

.field private mShowAlertIcon:Landroid/widget/ImageView;

.field private mShowAlertInfo:Landroid/widget/TextView;

.field private mShowDataInfo:Landroid/widget/TextView;

.field private mStatTask:Lopenlight/co/camera/view/notification/AlertView$StatTask;

.field private mStorageIcon:Landroid/widget/ImageView;

.field private mTopPadding:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lopenlight/co/camera/managers/controls/ControlManager;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lopenlight/co/camera/view/notification/AlertView$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/notification/AlertView$1;-><init>(Lopenlight/co/camera/view/notification/AlertView;)V

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mHideAlertLayoutRunnable:Ljava/lang/Runnable;

    .line 64
    sget-object v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;->NONE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertState:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    .line 65
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mCamApp:Lopenlight/co/camera/CameraApp;

    .line 69
    iput-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mContext:Landroid/content/Context;

    .line 70
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lopenlight/co/camera/view/notification/AlertView;->mImageFragmentView:Landroid/view/ViewGroup;

    .line 71
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lopenlight/co/camera/view/notification/AlertView;->mImageFragmentView:Landroid/view/ViewGroup;

    const v0, 0x7f0b001e

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mImageFragmentView:Landroid/view/ViewGroup;

    const p2, 0x7f09001e

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/notification/AlertView;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/notification/AlertView;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/notification/AlertView;)Landroid/view/ViewGroup;
    .locals 0

    .line 27
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mImageFragmentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/notification/AlertView;)Landroid/widget/ImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStorageIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/notification/AlertView;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mRemainingImageCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/notification/AlertView;JF)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/notification/AlertView;->displayNotificationAlert(JF)V

    return-void
.end method

.method private displayNotificationAlert(JF)V
    .locals 2

    const-wide/16 v0, 0xc8

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 260
    sget-object p1, Lopenlight/co/camera/view/notification/AlertView$AlertState;->NONE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    iput-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertState:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    goto :goto_0

    :cond_0
    const v1, 0x7f08010e

    if-gez v0, :cond_1

    .line 261
    invoke-direct {p0}, Lopenlight/co/camera/view/notification/AlertView;->isAlertNone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    sget-object p3, Lopenlight/co/camera/view/notification/AlertView$AlertState;->LOW_COUNT:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    iput-object p3, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertState:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    .line 263
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0e0022

    .line 264
    invoke-direct {p0, p1, p2, v1}, Lopenlight/co/camera/view/notification/AlertView;->updateNotificationAlert(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x40a00000    # 5.0f

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_3

    .line 267
    invoke-direct {p0}, Lopenlight/co/camera/view/notification/AlertView;->isAlertLowCount()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lopenlight/co/camera/view/notification/AlertView;->isAlertNone()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 268
    :cond_2
    sget-object p1, Lopenlight/co/camera/view/notification/AlertView$AlertState;->LOW_SPACE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    iput-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertState:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    .line 269
    invoke-direct {p0, p3}, Lopenlight/co/camera/view/notification/AlertView;->getAvailableStorageText(F)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0e0023

    invoke-direct {p0, p1, p2, v1}, Lopenlight/co/camera/view/notification/AlertView;->updateNotificationAlert(Ljava/lang/String;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getAvailableStorageText(F)Ljava/lang/String;
    .locals 2

    .line 287
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mCamApp:Lopenlight/co/camera/CameraApp;

    invoke-virtual {p0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 288
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 287
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAlertLowCount()Z
    .locals 1

    .line 296
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertState:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    sget-object v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;->LOW_COUNT:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAlertNone()Z
    .locals 1

    .line 292
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertState:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    sget-object v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;->NONE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateIconBattery(II)V
    .locals 5

    .line 170
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mBatteryInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/notification/AlertView;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0e003a

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/16 p2, 0x19

    if-ge p1, p2, :cond_0

    const p1, 0x7f08014e

    goto :goto_0

    :cond_0
    const p1, 0x7f08014d

    goto :goto_0

    :cond_1
    const/16 p2, 0x5a

    if-lt p1, p2, :cond_2

    const p1, 0x7f08014f

    goto :goto_0

    :cond_2
    const/16 p2, 0x3c

    if-lt p1, p2, :cond_3

    const p1, 0x7f08014c

    goto :goto_0

    :cond_3
    const/16 p2, 0x23

    if-lt p1, p2, :cond_4

    const p1, 0x7f08014b

    goto :goto_0

    :cond_4
    const/16 p2, 0xf

    if-lt p1, p2, :cond_5

    const p1, 0x7f08014a

    goto :goto_0

    :cond_5
    const p1, 0x7f08006a

    .line 188
    :goto_0
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateInitialOrientation()V
    .locals 5

    .line 106
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertInfoLayout:Landroid/view/View;

    invoke-virtual {v0}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 108
    iget-object v1, p0, Lopenlight/co/camera/view/notification/AlertView;->mTopPadding:Landroid/view/View;

    sget-object v2, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mBottomPadding:Landroid/view/View;

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne v0, v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateNotificationAlert(Ljava/lang/String;II)V
    .locals 9

    .line 276
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    .line 278
    invoke-static/range {v2 .. v8}, Lopenlight/co/lib/utils/AnimationUtils;->translateAnimationView(Landroid/view/View;FFFFLandroid/view/animation/Animation$AnimationListener;I)V

    .line 279
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mShowDataInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mShowAlertInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mShowAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lopenlight/co/camera/view/notification/AlertView;->mHideAlertLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mHideAlertLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addViewToFragment()V
    .locals 1

    .line 78
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 79
    invoke-virtual {p0}, Lopenlight/co/camera/view/notification/AlertView;->initChildView()V

    return-void
.end method

.method public closeAll()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lopenlight/co/camera/view/notification/AlertView;->removeModeSelection()V

    .line 150
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStatTask:Lopenlight/co/camera/view/notification/AlertView$StatTask;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStatTask:Lopenlight/co/camera/view/notification/AlertView$StatTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/notification/AlertView$StatTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStatTask:Lopenlight/co/camera/view/notification/AlertView$StatTask;

    .line 154
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 254
    const-class p0, Lopenlight/co/camera/view/notification/AlertView;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initChildView()V
    .locals 2

    .line 84
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mBatteryInfo:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f090116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mRemainingImageCount:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mShowAlertInfo:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mBatteryIcon:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f0900ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStorageIcon:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mShowAlertIcon:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mShowDataInfo:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mTopPadding:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mBottomPadding:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const v1, 0x7f09011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertInfoLayout:Landroid/view/View;

    .line 95
    invoke-direct {p0}, Lopenlight/co/camera/view/notification/AlertView;->updateInitialOrientation()V

    .line 96
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertInfoLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/notification/AlertView;->updateStorageAndImageCountNotification(Z)V

    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 4

    .line 244
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v0

    .line 245
    iget-object v1, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertInfoLayout:Landroid/view/View;

    const/16 v2, 0x32

    invoke-static {v1, v0, v2}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    .line 246
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mTopPadding:Landroid/view/View;

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mBottomPadding:Landroid/view/View;

    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne p1, v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public removeModeSelection()V
    .locals 8

    .line 120
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mImageFragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    new-instance v6, Lopenlight/co/camera/view/notification/AlertView$2;

    invoke-direct {v6, p0}, Lopenlight/co/camera/view/notification/AlertView$2;-><init>(Lopenlight/co/camera/view/notification/AlertView;)V

    const/16 v7, 0xc8

    invoke-static/range {v1 .. v7}, Lopenlight/co/lib/utils/AnimationUtils;->translateAnimationView(Landroid/view/View;FFFFLandroid/view/animation/Animation$AnimationListener;I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_0
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/notification/AlertView;->getListenerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setAlpha(Z)V
    .locals 1

    .line 115
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p0, p1, v0}, Lopenlight/co/camera/utils/Util;->setAlpha(Landroid/view/View;ZF)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 159
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 166
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateBatteryStatus(II)V
    .locals 3

    .line 233
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/notification/AlertView;->updateIconBattery(II)V

    const/16 p2, 0xb

    if-ge p1, p2, :cond_0

    .line 235
    iget-object p2, p0, Lopenlight/co/camera/view/notification/AlertView;->mContext:Landroid/content/Context;

    const v0, 0x7f0e003a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0e0021

    const v0, 0x7f08010c

    .line 235
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/view/notification/AlertView;->updateNotificationAlert(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public updateStorageAndImageCountNotification(Z)V
    .locals 3

    .line 192
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStatTask:Lopenlight/co/camera/view/notification/AlertView$StatTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStatTask:Lopenlight/co/camera/view/notification/AlertView$StatTask;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/notification/AlertView$StatTask;->cancel(Z)Z

    .line 195
    :cond_0
    new-instance v0, Lopenlight/co/camera/view/notification/AlertView$StatTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lopenlight/co/camera/view/notification/AlertView$StatTask;-><init>(Lopenlight/co/camera/view/notification/AlertView;Lopenlight/co/camera/view/notification/AlertView$1;)V

    iput-object v0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStatTask:Lopenlight/co/camera/view/notification/AlertView$StatTask;

    .line 196
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView;->mStatTask:Lopenlight/co/camera/view/notification/AlertView$StatTask;

    new-array v0, v1, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/notification/AlertView$StatTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
