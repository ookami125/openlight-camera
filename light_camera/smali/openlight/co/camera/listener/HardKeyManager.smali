.class public Lopenlight/co/camera/listener/HardKeyManager;
.super Ljava/lang/Object;
.source "HardKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;,
        Lopenlight/co/camera/listener/HardKeyManager$KeyType;,
        Lopenlight/co/camera/listener/HardKeyManager$KeyAction;
    }
.end annotation


# static fields
.field private static final MAX_TIME_DURATION_BETWEEN_HALF_AND_FULL_PRESS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "HardKeyManager"

.field private static final VERBOSE_LOG:Z = true

.field private static final sInstance:Lopenlight/co/camera/listener/HardKeyManager;


# instance fields
.field private volatile mCurrentHalfKeyPressAction:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

.field private final mHalfPressEventGeneratorRunnable:Ljava/lang/Runnable;

.field private final mHalfPressProcessingHandler:Landroid/os/Handler;

.field private volatile mIsDownEventProcessedAsHalfPress:Z

.field private volatile mIsProcessingHalfPressDownEvent:Z

.field private mOnKeyListener:Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;

.field private final mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lopenlight/co/camera/listener/HardKeyManager;

    invoke-direct {v0}, Lopenlight/co/camera/listener/HardKeyManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/listener/HardKeyManager;->sInstance:Lopenlight/co/camera/listener/HardKeyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mHalfPressProcessingHandler:Landroid/os/Handler;

    .line 28
    new-instance v0, Lopenlight/co/camera/listener/HardKeyManager$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/listener/HardKeyManager$1;-><init>(Lopenlight/co/camera/listener/HardKeyManager;)V

    iput-object v0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mHalfPressEventGeneratorRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsDownEventProcessedAsHalfPress:Z

    .line 53
    iput-boolean v0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsProcessingHalfPressDownEvent:Z

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/listener/HardKeyManager;)Lopenlight/co/camera/listener/HardKeyManager$KeyAction;
    .locals 0

    .line 20
    iget-object p0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mCurrentHalfKeyPressAction:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    return-object p0
.end method

.method static synthetic access$100(Lopenlight/co/camera/listener/HardKeyManager;Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/listener/HardKeyManager;->callListener(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lopenlight/co/camera/listener/HardKeyManager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsProcessingHalfPressDownEvent:Z

    return p1
.end method

.method private callListener(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .locals 2

    const/4 v0, 0x0

    .line 135
    :try_start_0
    iget-object v1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mOnKeyListener:Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mOnKeyListener:Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;

    .line 136
    invoke-interface {p0, p1, p2}, Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;->onHardKeyEvent(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 138
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager;->TAG:Ljava/lang/String;

    const-string p2, "Exception onHardKeyEvent listener "

    invoke-static {p1, p2, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method public static get()Lopenlight/co/camera/listener/HardKeyManager;
    .locals 1

    .line 59
    sget-object v0, Lopenlight/co/camera/listener/HardKeyManager;->sInstance:Lopenlight/co/camera/listener/HardKeyManager;

    return-object v0
.end method


# virtual methods
.method public processEvent(ILandroid/view/KeyEvent;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .locals 4

    .line 76
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 78
    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEvent : Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Repeat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_4

    const/16 v1, 0x50

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 84
    :cond_0
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    if-ne p3, p1, :cond_2

    if-nez v0, :cond_2

    .line 85
    iget-boolean p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsProcessingHalfPressDownEvent:Z

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mHalfPressProcessingHandler:Landroid/os/Handler;

    iget-object p2, p0, Lopenlight/co/camera/listener/HardKeyManager;->mHalfPressEventGeneratorRunnable:Ljava/lang/Runnable;

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    sget-object p2, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/listener/HardKeyManager;->callListener(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    .line 94
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    sget-object p2, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/listener/HardKeyManager;->callListener(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result v2

    goto :goto_1

    .line 95
    :cond_1
    iget-boolean p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsDownEventProcessedAsHalfPress:Z

    if-eqz p1, :cond_5

    .line 98
    iput-boolean v3, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsDownEventProcessedAsHalfPress:Z

    .line 99
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    invoke-direct {p0, p1, p3}, Lopenlight/co/camera/listener/HardKeyManager;->callListener(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result v2

    goto :goto_1

    .line 101
    :cond_2
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    if-ne p3, p1, :cond_3

    if-nez v0, :cond_3

    .line 103
    iget-object p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->HARD_KEY_PRESS_START:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 104
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 105
    iput-boolean v2, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsDownEventProcessedAsHalfPress:Z

    .line 106
    iput-boolean v2, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsProcessingHalfPressDownEvent:Z

    .line 107
    iput-object p3, p0, Lopenlight/co/camera/listener/HardKeyManager;->mCurrentHalfKeyPressAction:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    .line 110
    iget-object p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mHalfPressProcessingHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mHalfPressEventGeneratorRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 113
    :cond_3
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    if-ne p3, p1, :cond_5

    .line 114
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    invoke-direct {p0, p1, p3}, Lopenlight/co/camera/listener/HardKeyManager;->callListener(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    .line 122
    iget-object p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mHalfPressProcessingHandler:Landroid/os/Handler;

    iget-object p2, p0, Lopenlight/co/camera/listener/HardKeyManager;->mHalfPressEventGeneratorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iput-boolean v3, p0, Lopenlight/co/camera/listener/HardKeyManager;->mIsProcessingHalfPressDownEvent:Z

    .line 124
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->FULL_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    invoke-direct {p0, p1, p3}, Lopenlight/co/camera/listener/HardKeyManager;->callListener(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result v2

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    :goto_1
    return v2
.end method

.method public registerKeyListener(Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mOnKeyListener:Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;

    return-void
.end method

.method public unregisterKeyListener(Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lopenlight/co/camera/listener/HardKeyManager;->mOnKeyListener:Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lopenlight/co/camera/listener/HardKeyManager;->mOnKeyListener:Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;

    goto :goto_0

    .line 70
    :cond_0
    sget-object p0, Lopenlight/co/camera/listener/HardKeyManager;->TAG:Ljava/lang/String;

    const-string p1, "Unregistering an listener that was not previously registered"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
