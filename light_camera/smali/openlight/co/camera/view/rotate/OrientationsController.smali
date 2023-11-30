.class public Lopenlight/co/camera/view/rotate/OrientationsController;
.super Ljava/lang/Object;
.source "OrientationsController.java"


# static fields
.field private static final LANDSCAPE_PERFECT_ORIENTATION_ANGLE:I = 0x10e

.field private static final LANDSCAPE_REVERSSE_PERFECT_ORIENTATION_ANGLE:I = 0x5a

.field private static final PORTRAIT_PERFECT_ORIENTATION_ANGLE:I = 0x0

.field private static final PORTRAIT_PERFECT_ORIENTATION_OTHER:I = 0x168

.field private static final PORTRAIT_REVERSE_PERFECT_ORIENTATION_ANGLE:I = 0xb4

.field private static final SYSTEM_ORIENTATION_UNLOCKED:I = 0x1

.field private static final THRESHOLD_ORIENTATION_SWITCH:I = 0x2d

.field private static final sInstance:Lopenlight/co/camera/view/rotate/OrientationsController;


# instance fields
.field private mOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

.field private final mOrientationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lopenlight/co/camera/listener/OrientationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lopenlight/co/camera/view/rotate/OrientationsController;

    invoke-direct {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;-><init>()V

    sput-object v0, Lopenlight/co/camera/view/rotate/OrientationsController;->sInstance:Lopenlight/co/camera/view/rotate/OrientationsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

    iput-object v0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private callListeners(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 1

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/listener/OrientationListener;

    .line 108
    invoke-interface {v0, p1}, Lopenlight/co/camera/listener/OrientationListener;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static get()Lopenlight/co/camera/view/rotate/OrientationsController;
    .locals 1

    .line 52
    sget-object v0, Lopenlight/co/camera/view/rotate/OrientationsController;->sInstance:Lopenlight/co/camera/view/rotate/OrientationsController;

    return-object v0
.end method

.method private isLandscape(I)Z
    .locals 0

    const/16 p0, 0xe1

    if-le p1, p0, :cond_0

    const/16 p0, 0x13b

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLandscapeReverse(I)Z
    .locals 0

    const/16 p0, 0x2d

    if-le p1, p0, :cond_0

    const/16 p0, 0x87

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortrait(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/16 p0, 0x2d

    if-le p1, p0, :cond_1

    :cond_0
    const/16 p0, 0x13b

    if-le p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortraitReverse(I)Z
    .locals 0

    const/16 p0, 0x87

    if-le p1, p0, :cond_0

    const/16 p0, 0xe1

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSystemOrientationUnLocked()Z
    .locals 2

    .line 138
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method


# virtual methods
.method public getConfig()Lopenlight/co/camera/enums/OrientationConfig;
    .locals 0

    .line 77
    iget-object p0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    return-object p0
.end method

.method public registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->isSystemOrientationUnLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterOrientationListenerWithTag(Ljava/lang/String;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v1, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/listener/OrientationListener;

    .line 66
    invoke-interface {v2}, Lopenlight/co/camera/listener/OrientationListener;->getListenerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    iget-object p0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public update(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 88
    :cond_0
    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

    .line 89
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->isPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->isLandscapeReverse(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->isPortraitReverse(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    goto :goto_0

    .line 95
    :cond_3
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->isLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 96
    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

    .line 98
    :cond_4
    :goto_0
    iget-object p1, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    if-eq p1, v0, :cond_5

    .line 99
    iput-object v0, p0, Lopenlight/co/camera/view/rotate/OrientationsController;->mOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 100
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->callListeners(Lopenlight/co/camera/enums/OrientationConfig;)V

    :cond_5
    return-void
.end method
