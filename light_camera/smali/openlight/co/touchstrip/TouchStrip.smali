.class public Lopenlight/co/touchstrip/TouchStrip;
.super Ljava/lang/Object;
.source "TouchStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;,
        Lopenlight/co/touchstrip/TouchStrip$Event;
    }
.end annotation


# static fields
.field private static final IS_ENG_BUILD:Z

.field public static final SHARED_PREF_TOUCHSTRIP_SETTING:Ljava/lang/String; = "device_touchstrip_setting"

.field public static final SHARED_PREF_TOUCHSTRIP_SETTING_DEFAULT:Ljava/lang/String; = "off"

.field public static final SHARED_PREF_TOUCHSTRIP_SETTING_OFF:Ljava/lang/String; = "off"

.field private static final TAG:Ljava/lang/String; = "TouchStrip"

.field private static final TAP_CENTER_OFFSET_RANGE:I = 0x64

.field private static final THRESHOLD_CUMULATIVE_DISTANCE_IN_DURATION:J = 0x15eL

.field private static final THRESHOLD_FLING_VELOCITY:I = 0x1770

.field private static final THRESHOLD_NUMBER_OF_EVENTS_IN_DURATION:J = 0x8L

.field private static final THRESHOLD_OFFSET_FROM_CENTER_FOR_TAP_LR:I = 0x64

.field private static final THRESHOLD_SCROLL_MAX_DISTANCE:I = 0x96

.field private static final THRESHOLD_SCROLL_MIN_DISTANCE:I = 0x5

.field private static final TIME_DURATION_TO_COUNT_EVENTS:J = 0x190L

.field private static final TOUCH_STRIP_LENGTH:I = 0x320

.field private static final TOUCH_STRIP_MIDPOINT_EVENT_X:I = 0x190

.field private static final VERBOSE_LOG:Z

.field private static sInstance:Lopenlight/co/touchstrip/TouchStrip;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCameraSettingsSharedPreferences:Landroid/content/SharedPreferences;

.field private volatile mCurrentEventForTimeDurationMatching:Lopenlight/co/touchstrip/TouchStrip$Event;

.field private volatile mCurrentScrollEventConsecutiveOccurrences:I

.field private volatile mCurrentScrollEventsCumulativeDistance:I

.field private mDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private final mFlingGeneratorRunnable:Ljava/lang/Runnable;

.field private final mFlingProcessingHandler:Landroid/os/Handler;

.field private mIsTouchStripDisabled:Z

.field private final mOnTouchStripEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTouchStripPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mTouchStripCurrentlyLongPressedLeft:Z

.field private mTouchStripCurrentlyLongPressedRight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/touchstrip/TouchStrip;->IS_ENG_BUILD:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mIsTouchStripDisabled:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mFlingProcessingHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mOnTouchStripEventListeners:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$1;

    invoke-direct {v0, p0}, Lopenlight/co/touchstrip/TouchStrip$1;-><init>(Lopenlight/co/touchstrip/TouchStrip;)V

    iput-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mFlingGeneratorRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$2;

    invoke-direct {v0, p0}, Lopenlight/co/touchstrip/TouchStrip$2;-><init>(Lopenlight/co/touchstrip/TouchStrip;)V

    iput-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mOnTouchStripPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 95
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->UNKNOWN:Lopenlight/co/touchstrip/TouchStrip$Event;

    iput-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentEventForTimeDurationMatching:Lopenlight/co/touchstrip/TouchStrip$Event;

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventConsecutiveOccurrences:I

    .line 97
    iput v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventsCumulativeDistance:I

    .line 101
    iput-boolean v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mTouchStripCurrentlyLongPressedLeft:Z

    .line 102
    iput-boolean v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mTouchStripCurrentlyLongPressedRight:Z

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/touchstrip/TouchStrip;)Lopenlight/co/touchstrip/TouchStrip$Event;
    .locals 0

    .line 26
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentEventForTimeDurationMatching:Lopenlight/co/touchstrip/TouchStrip$Event;

    return-object p0
.end method

.method static synthetic access$100(Lopenlight/co/touchstrip/TouchStrip;)I
    .locals 0

    .line 26
    iget p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventConsecutiveOccurrences:I

    return p0
.end method

.method static synthetic access$1002(Lopenlight/co/touchstrip/TouchStrip;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mTouchStripCurrentlyLongPressedRight:Z

    return p1
.end method

.method static synthetic access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->notifyEventListeners(Lopenlight/co/touchstrip/TouchStrip$Event;)V

    return-void
.end method

.method static synthetic access$300(Lopenlight/co/touchstrip/TouchStrip;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lopenlight/co/touchstrip/TouchStrip;->stopFlingEventDetection()V

    return-void
.end method

.method static synthetic access$400(Lopenlight/co/touchstrip/TouchStrip;)Landroid/app/Application;
    .locals 0

    .line 26
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$500(Lopenlight/co/touchstrip/TouchStrip;Landroid/app/Application;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->updateTouchStripStatus(Landroid/app/Application;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lopenlight/co/touchstrip/TouchStrip;->logIt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lopenlight/co/touchstrip/TouchStrip;F)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->processScrollEventToDetectSensitiveFling(F)V

    return-void
.end method

.method static synthetic access$902(Lopenlight/co/touchstrip/TouchStrip;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mTouchStripCurrentlyLongPressedLeft:Z

    return p1
.end method

.method private detectLongPressOrProcessEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 268
    iget-boolean v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mTouchStripCurrentlyLongPressedLeft:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLeftLongPressEnd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lopenlight/co/touchstrip/TouchStrip;->logIt(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-boolean v2, p0, Lopenlight/co/touchstrip/TouchStrip;->mTouchStripCurrentlyLongPressedLeft:Z

    .line 271
    sget-object p1, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_END:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-direct {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->notifyEventListeners(Lopenlight/co/touchstrip/TouchStrip$Event;)V

    return v1

    .line 274
    :cond_0
    iget-boolean v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mTouchStripCurrentlyLongPressedRight:Z

    if-eqz v0, :cond_1

    .line 275
    iput-boolean v2, p0, Lopenlight/co/touchstrip/TouchStrip;->mTouchStripCurrentlyLongPressedRight:Z

    .line 276
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRightLongPressEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lopenlight/co/touchstrip/TouchStrip;->logIt(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object p1, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_END:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-direct {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->notifyEventListeners(Lopenlight/co/touchstrip/TouchStrip$Event;)V

    return v1

    .line 281
    :cond_1
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized get(Landroid/app/Application;)Lopenlight/co/touchstrip/TouchStrip;
    .locals 2

    const-class v0, Lopenlight/co/touchstrip/TouchStrip;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lopenlight/co/touchstrip/TouchStrip;->sInstance:Lopenlight/co/touchstrip/TouchStrip;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lopenlight/co/touchstrip/TouchStrip;

    invoke-direct {v1}, Lopenlight/co/touchstrip/TouchStrip;-><init>()V

    sput-object v1, Lopenlight/co/touchstrip/TouchStrip;->sInstance:Lopenlight/co/touchstrip/TouchStrip;

    .line 111
    :cond_0
    sget-object v1, Lopenlight/co/touchstrip/TouchStrip;->sInstance:Lopenlight/co/touchstrip/TouchStrip;

    invoke-direct {v1, p0}, Lopenlight/co/touchstrip/TouchStrip;->updateTouchStripStatus(Landroid/app/Application;)V

    .line 112
    sget-object v1, Lopenlight/co/touchstrip/TouchStrip;->sInstance:Lopenlight/co/touchstrip/TouchStrip;

    iput-object p0, v1, Lopenlight/co/touchstrip/TouchStrip;->mApplication:Landroid/app/Application;

    .line 113
    sget-object p0, Lopenlight/co/touchstrip/TouchStrip;->sInstance:Lopenlight/co/touchstrip/TouchStrip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v0

    throw p0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 360
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCameraSettingsSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 361
    sget v0, Lopenlight/co/touchstrip/R$string;->camera_mode_preference_key:I

    .line 363
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 362
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mCameraSettingsSharedPreferences:Landroid/content/SharedPreferences;

    .line 365
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mCameraSettingsSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mOnTouchStripPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 366
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 368
    :cond_0
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCameraSettingsSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private initTouchDetector()Landroid/support/v4/view/GestureDetectorCompat;
    .locals 2

    .line 146
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$3;

    invoke-direct {v0, p0}, Lopenlight/co/touchstrip/TouchStrip$3;-><init>(Lopenlight/co/touchstrip/TouchStrip;)V

    .line 248
    new-instance v1, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mApplication:Landroid/app/Application;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v1
.end method

.method private logIt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 348
    sget-boolean p0, Lopenlight/co/touchstrip/TouchStrip;->IS_ENG_BUILD:Z

    if-eqz p0, :cond_0

    .line 349
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private logIt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 354
    sget-boolean p0, Lopenlight/co/touchstrip/TouchStrip;->IS_ENG_BUILD:Z

    if-eqz p0, :cond_0

    .line 355
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private notifyEventListeners(Lopenlight/co/touchstrip/TouchStrip$Event;)V
    .locals 4

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lopenlight/co/touchstrip/TouchStrip;->mOnTouchStripEventListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;

    .line 297
    :try_start_0
    invoke-virtual {v1, p1}, Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;->onEvent(Lopenlight/co/touchstrip/TouchStrip$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 299
    sget-object v2, Lopenlight/co/touchstrip/TouchStrip;->TAG:Ljava/lang/String;

    const-string v3, "Exception in one of the listeners, ignoring"

    invoke-direct {p0, v2, v3, v1}, Lopenlight/co/touchstrip/TouchStrip;->logIt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processScrollEventToDetectSensitiveFling(F)V
    .locals 3

    const/high16 v0, -0x3f600000    # -5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 307
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 309
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 314
    :goto_0
    iget-object v1, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentEventForTimeDurationMatching:Lopenlight/co/touchstrip/TouchStrip$Event;

    sget-object v2, Lopenlight/co/touchstrip/TouchStrip$Event;->UNKNOWN:Lopenlight/co/touchstrip/TouchStrip$Event;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentEventForTimeDurationMatching:Lopenlight/co/touchstrip/TouchStrip$Event;

    if-eq v1, v0, :cond_2

    .line 316
    :cond_1
    invoke-direct {p0}, Lopenlight/co/touchstrip/TouchStrip;->stopFlingEventDetection()V

    .line 317
    invoke-direct {p0, v0}, Lopenlight/co/touchstrip/TouchStrip;->startFlingEventDetection(Lopenlight/co/touchstrip/TouchStrip$Event;)V

    .line 320
    :cond_2
    iget-object v1, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentEventForTimeDurationMatching:Lopenlight/co/touchstrip/TouchStrip$Event;

    if-ne v1, v0, :cond_3

    .line 321
    iget v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventConsecutiveOccurrences:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventConsecutiveOccurrences:I

    .line 322
    iget v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventsCumulativeDistance:I

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventsCumulativeDistance:I

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method private startFlingEventDetection(Lopenlight/co/touchstrip/TouchStrip$Event;)V
    .locals 2

    .line 342
    iput-object p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentEventForTimeDurationMatching:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 343
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mFlingProcessingHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mFlingGeneratorRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopFlingEventDetection()V
    .locals 1

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventConsecutiveOccurrences:I

    .line 336
    iput v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentScrollEventsCumulativeDistance:I

    .line 337
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->UNKNOWN:Lopenlight/co/touchstrip/TouchStrip$Event;

    iput-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mCurrentEventForTimeDurationMatching:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 338
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mFlingProcessingHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mFlingGeneratorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTouchStripStatus(Landroid/app/Application;)V
    .locals 2

    .line 135
    invoke-direct {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "device_touchstrip_setting"

    const-string v1, "off"

    .line 136
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "off"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mIsTouchStripDisabled:Z

    .line 138
    sget-object p1, Lopenlight/co/touchstrip/TouchStrip;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchStrip Disabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lopenlight/co/touchstrip/TouchStrip;->mIsTouchStripDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mIsTouchStripDisabled:Z

    if-nez p1, :cond_0

    .line 140
    invoke-direct {p0}, Lopenlight/co/touchstrip/TouchStrip;->initTouchDetector()Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/touchstrip/TouchStrip;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    :cond_0
    return-void
.end method


# virtual methods
.method public processEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 252
    iget-boolean v0, p0, Lopenlight/co/touchstrip/TouchStrip;->mIsTouchStripDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x100008

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 259
    invoke-direct {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->detectLongPressOrProcessEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerEventListener(Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;)V
    .locals 0

    .line 285
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mOnTouchStripEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterEventListener(Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip;->mOnTouchStripEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
