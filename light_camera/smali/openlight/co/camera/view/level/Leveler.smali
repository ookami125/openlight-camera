.class public Lopenlight/co/camera/view/level/Leveler;
.super Ljava/lang/Object;
.source "Leveler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Leveler"


# instance fields
.field private final azimuthFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;

.field private final compassAzimuth:Lopenlight/co/camera/view/level/AngleLowPassFilter;

.field private final deviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

.field private isRegistered:Z

.field private isShow:Z

.field private mCameraLayout:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mLevelView:Lopenlight/co/camera/view/level/LevelView;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRotationVector:Landroid/hardware/Sensor;

.field private final o:[F

.field private final o2:[F

.field private final pitchFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;

.field private final r:[F

.field private final r2:[F

.field private final rollFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lopenlight/co/camera/view/level/DeviceRotationVector;

    invoke-direct {v0}, Lopenlight/co/camera/view/level/DeviceRotationVector;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->deviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lopenlight/co/camera/view/level/Leveler;->isRegistered:Z

    const/16 v0, 0x10

    .line 40
    new-array v1, v0, [F

    iput-object v1, p0, Lopenlight/co/camera/view/level/Leveler;->r:[F

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->r2:[F

    const/4 v0, 0x3

    .line 42
    new-array v1, v0, [F

    iput-object v1, p0, Lopenlight/co/camera/view/level/Leveler;->o:[F

    .line 43
    new-array v0, v0, [F

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->o2:[F

    .line 45
    new-instance v0, Lopenlight/co/camera/view/level/AngleLowPassFilter;

    invoke-direct {v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->compassAzimuth:Lopenlight/co/camera/view/level/AngleLowPassFilter;

    .line 46
    new-instance v0, Lopenlight/co/camera/view/level/AngleLowPassFilter;

    invoke-direct {v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->azimuthFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;

    .line 47
    new-instance v0, Lopenlight/co/camera/view/level/AngleLowPassFilter;

    invoke-direct {v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->pitchFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;

    .line 48
    new-instance v0, Lopenlight/co/camera/view/level/AngleLowPassFilter;

    invoke-direct {v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->rollFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;

    .line 51
    iput-object p1, p0, Lopenlight/co/camera/view/level/Leveler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/level/Leveler;)[F
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->r:[F

    return-object p0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/level/Leveler;)[F
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->o:[F

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lopenlight/co/camera/view/level/Leveler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/LevelView;
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->mLevelView:Lopenlight/co/camera/view/level/LevelView;

    return-object p0
.end method

.method static synthetic access$1200(Lopenlight/co/camera/view/level/Leveler;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lopenlight/co/camera/view/level/Leveler;->isShow:Z

    return p0
.end method

.method static synthetic access$1202(Lopenlight/co/camera/view/level/Leveler;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lopenlight/co/camera/view/level/Leveler;->isShow:Z

    return p1
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->compassAzimuth:Lopenlight/co/camera/view/level/AngleLowPassFilter;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/level/Leveler;)[F
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->r2:[F

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/level/Leveler;)[F
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->o2:[F

    return-object p0
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->azimuthFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;

    return-object p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->pitchFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;

    return-object p0
.end method

.method static synthetic access$700(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->rollFilter:Lopenlight/co/camera/view/level/AngleLowPassFilter;

    return-object p0
.end method

.method static synthetic access$800(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/DeviceRotationVector;
    .registers 1

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->deviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    return-object p0
.end method

.method static synthetic access$900(Lopenlight/co/camera/view/level/Leveler;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lopenlight/co/camera/view/level/Leveler;->isRegistered:Z

    return p0
.end method

.method private resetLevelView()V
    .registers 3

    .line 123
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mLevelView:Lopenlight/co/camera/view/level/LevelView;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lopenlight/co/camera/view/level/Leveler;->isShow:Z

    .line 125
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mLevelView:Lopenlight/co/camera/view/level/LevelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/level/LevelView;->setVisibility(I)V

    .line 127
    :cond_e
    invoke-direct {p0}, Lopenlight/co/camera/view/level/Leveler;->setShowLevelView()V

    return-void
.end method

.method private setShowLevelView()V
    .registers 5

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lopenlight/co/camera/view/level/Leveler$2;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/level/Leveler$2;-><init>(Lopenlight/co/camera/view/level/Leveler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addLevelView()V
    .registers 4

    .line 99
    new-instance v0, Lopenlight/co/camera/view/level/LevelView;

    iget-object v1, p0, Lopenlight/co/camera/view/level/Leveler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/level/Leveler;->deviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/level/LevelView;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/level/DeviceRotationVector;)V

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mLevelView:Lopenlight/co/camera/view/level/LevelView;

    .line 100
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 102
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 103
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 104
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 105
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 106
    iget-object v1, p0, Lopenlight/co/camera/view/level/Leveler;->mLevelView:Lopenlight/co/camera/view/level/LevelView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lopenlight/co/camera/view/level/LevelView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lopenlight/co/camera/view/level/Leveler;->mCameraLayout:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->mLevelView:Lopenlight/co/camera/view/level/LevelView;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initView()V
    .registers 3

    .line 59
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorRotationVector:Landroid/hardware/Sensor;

    .line 62
    new-instance v0, Lopenlight/co/camera/view/level/Leveler$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/level/Leveler$1;-><init>(Lopenlight/co/camera/view/level/Leveler;)V

    iput-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public registerListener()V
    .registers 5

    .line 117
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorRotationVector:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    iput-boolean v3, p0, Lopenlight/co/camera/view/level/Leveler;->isRegistered:Z

    .line 119
    invoke-direct {p0}, Lopenlight/co/camera/view/level/Leveler;->resetLevelView()V

    return-void
.end method

.method public removeView()V
    .registers 2

    .line 111
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mCameraLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 112
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mCameraLayout:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler;->mLevelView:Lopenlight/co/camera/view/level/LevelView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public setLayout(Landroid/view/ViewGroup;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lopenlight/co/camera/view/level/Leveler;->mCameraLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public unregisterListener()V
    .registers 3

    .line 140
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lopenlight/co/camera/view/level/Leveler;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lopenlight/co/camera/view/level/Leveler;->isRegistered:Z

    return-void
.end method
