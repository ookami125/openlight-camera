.class public Lopenlight/co/camera/view/timer/PictureTimer;
.super Lopenlight/co/camera/managers/controls/ControlManager;
.source "PictureTimer.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;,
        Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureTimer"

.field private static final TIMER_INTERVAL:I = 0x1f4


# instance fields
.field private mImageFragmentView:Landroid/view/ViewGroup;

.field private mOnTimerEventListener:Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;

.field private mPictureTimerView:Landroid/view/View;

.field private mText:Ljava/lang/String;

.field private mTickCounter:Landroid/os/CountDownTimer;

.field private mTickerLayout:Lopenlight/co/camera/view/rotate/RotateLayout;

.field private mTickerText:Landroid/widget/TextView;

.field private final mTimer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;J)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lopenlight/co/camera/managers/controls/ControlManager;-><init>()V

    .line 72
    iput-wide p3, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTimer:J

    .line 73
    iput-object p2, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mImageFragmentView:Landroid/view/ViewGroup;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mImageFragmentView:Landroid/view/ViewGroup;

    const p3, 0x7f0b006a

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mPictureTimerView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lopenlight/co/camera/view/timer/PictureTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/timer/PictureTimer;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/timer/PictureTimer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/timer/PictureTimer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickerText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/timer/PictureTimer;)Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mOnTimerEventListener:Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/timer/PictureTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 37
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickCounter:Landroid/os/CountDownTimer;

    return-object p0
.end method


# virtual methods
.method public addViewToFragment()V
    .locals 3

    .line 83
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 85
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 86
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 87
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 88
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 89
    iget-object v1, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mPictureTimerView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 91
    invoke-virtual {p0}, Lopenlight/co/camera/view/timer/PictureTimer;->initChildView()V

    return-void
.end method

.method public closeAll()V
    .locals 1

    .line 126
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickerLayout:Lopenlight/co/camera/view/rotate/RotateLayout;

    invoke-static {v0}, Lopenlight/co/lib/utils/AnimationUtils;->alphaDisappear(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 127
    invoke-virtual {p0}, Lopenlight/co/camera/view/timer/PictureTimer;->removeModeSelection()V

    return-void
.end method

.method public endTimer()V
    .locals 1

    .line 111
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickCounter:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mOnTimerEventListener:Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;

    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 143
    const-class p0, Lopenlight/co/camera/view/timer/PictureTimer;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initChildView()V
    .locals 6

    .line 96
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mPictureTimerView:Landroid/view/View;

    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/rotate/RotateLayout;

    iput-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickerLayout:Lopenlight/co/camera/view/rotate/RotateLayout;

    .line 97
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mPictureTimerView:Landroid/view/View;

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickerText:Landroid/widget/TextView;

    .line 98
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickerText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickerText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTimer:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 1

    .line 137
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickerLayout:Lopenlight/co/camera/view/rotate/RotateLayout;

    .line 138
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    const/16 v0, 0xa

    .line 137
    invoke-static {p0, p1, v0}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    return-void
.end method

.method public removeModeSelection()V
    .locals 2

    .line 118
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mImageFragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/timer/PictureTimer;->getListenerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mPictureTimerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnTimerEventListener(Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mOnTimerEventListener:Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 132
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mPictureTimerView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startTimer()V
    .locals 7

    .line 105
    new-instance v6, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;

    iget-wide v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTimer:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;-><init>(Lopenlight/co/camera/view/timer/PictureTimer;JJ)V

    iput-object v6, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickCounter:Landroid/os/CountDownTimer;

    .line 106
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickerLayout:Lopenlight/co/camera/view/rotate/RotateLayout;

    invoke-static {v0}, Lopenlight/co/lib/utils/AnimationUtils;->alphaAppear(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 107
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer;->mTickCounter:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
