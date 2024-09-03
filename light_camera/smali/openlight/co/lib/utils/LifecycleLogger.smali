.class public Lopenlight/co/lib/utils/LifecycleLogger;
.super Ljava/lang/Object;
.source "LifecycleLogger.java"


# static fields
.field private static final MESSAGE_PREFIX:Ljava/lang/String; = "LIFECYCLE"

.field private static sInstance:Lopenlight/co/lib/utils/LifecycleLogger;


# instance fields
.field private final mUtils:Lopenlight/co/lib/utils/Utils;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/lib/utils/LifecycleLogger;->mUtils:Lopenlight/co/lib/utils/Utils;

    .line 55
    new-instance v0, Lopenlight/co/lib/utils/LifecycleLogger$1;

    invoke-direct {v0, p0}, Lopenlight/co/lib/utils/LifecycleLogger$1;-><init>(Lopenlight/co/lib/utils/LifecycleLogger;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static get()Lopenlight/co/lib/utils/LifecycleLogger;
    .registers 1

    .line 20
    sget-object v0, Lopenlight/co/lib/utils/LifecycleLogger;->sInstance:Lopenlight/co/lib/utils/LifecycleLogger;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2

    .line 51
    new-instance v0, Lopenlight/co/lib/utils/LifecycleLogger;

    invoke-direct {v0, p0}, Lopenlight/co/lib/utils/LifecycleLogger;-><init>(Landroid/app/Application;)V

    sput-object v0, Lopenlight/co/lib/utils/LifecycleLogger;->sInstance:Lopenlight/co/lib/utils/LifecycleLogger;

    return-void
.end method


# virtual methods
.method public log(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public log(Landroid/app/Fragment;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    .line 47
    iget-object p0, p0, Lopenlight/co/lib/utils/LifecycleLogger;->mUtils:Lopenlight/co/lib/utils/Utils;

    invoke-virtual {p0, p1}, Lopenlight/co/lib/utils/Utils;->tagFor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LIFECYCLE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
