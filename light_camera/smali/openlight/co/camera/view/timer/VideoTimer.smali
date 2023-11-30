.class public Lopenlight/co/camera/view/timer/VideoTimer;
.super Ljava/lang/Object;
.source "VideoTimer.java"


# instance fields
.field private mBlinker:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCustomHandler:Landroid/os/Handler;

.field private mRecordingTimer:Landroid/widget/TextView;

.field private mStartTime:J

.field private mTimeInMillis:J

.field private mTimeSwap:J

.field private mUpdatedTime:J

.field private updateTimerThread:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mCustomHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mTimeInMillis:J

    .line 19
    iput-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mTimeSwap:J

    .line 20
    iput-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mUpdatedTime:J

    .line 21
    iput-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mStartTime:J

    .line 56
    new-instance v0, Lopenlight/co/camera/view/timer/VideoTimer$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/timer/VideoTimer$1;-><init>(Lopenlight/co/camera/view/timer/VideoTimer;)V

    iput-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->updateTimerThread:Ljava/lang/Runnable;

    .line 28
    iput-object p1, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mRecordingTimer:Landroid/widget/TextView;

    .line 30
    iput-object p3, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mBlinker:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/timer/VideoTimer;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mTimeInMillis:J

    return-wide v0
.end method

.method static synthetic access$002(Lopenlight/co/camera/view/timer/VideoTimer;J)J
    .locals 0

    .line 14
    iput-wide p1, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mTimeInMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/timer/VideoTimer;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/timer/VideoTimer;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mUpdatedTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lopenlight/co/camera/view/timer/VideoTimer;J)J
    .locals 0

    .line 14
    iput-wide p1, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mUpdatedTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/timer/VideoTimer;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mTimeSwap:J

    return-wide v0
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/timer/VideoTimer;)Landroid/widget/TextView;
    .locals 0

    .line 14
    iget-object p0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mRecordingTimer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/timer/VideoTimer;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mCustomHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public setTextRecordViews(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mRecordingTimer:Landroid/widget/TextView;

    .line 35
    iput-object p2, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mBlinker:Landroid/widget/ImageView;

    return-void
.end method

.method public startRecordingAnimation()V
    .locals 4

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mStartTime:J

    .line 41
    iget-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mCustomHandler:Landroid/os/Handler;

    iget-object v1, p0, Lopenlight/co/camera/view/timer/VideoTimer;->updateTimerThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    iget-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mBlinker:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mBlinker:Landroid/widget/ImageView;

    invoke-static {p0}, Lopenlight/co/lib/utils/AnimationUtils;->blinkAnimation(Landroid/view/View;)V

    return-void
.end method

.method public stopRecordingAnimation()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mTimeSwap:J

    .line 48
    iget-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mCustomHandler:Landroid/os/Handler;

    iget-object v1, p0, Lopenlight/co/camera/view/timer/VideoTimer;->updateTimerThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object p0, p0, Lopenlight/co/camera/view/timer/VideoTimer;->mBlinker:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method
