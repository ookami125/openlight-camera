.class public Lopenlight/co/lightsdk/process/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lightsdk/process/Processor$Status;,
        Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Processor"

.field private static final sInstance:Lopenlight/co/lightsdk/process/Processor;


# instance fields
.field private mDoneBindSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mProcessListener:Lco/openlight/lightprocessingservice/IProcessListener;

.field private mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;

.field private final mRemoteServiceConnection:Landroid/content/ServiceConnection;

.field private mRequestStatusListener:Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;

.field private volatile mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lopenlight/co/lightsdk/process/Processor;

    invoke-direct {v0}, Lopenlight/co/lightsdk/process/Processor;-><init>()V

    sput-object v0, Lopenlight/co/lightsdk/process/Processor;->sInstance:Lopenlight/co/lightsdk/process/Processor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    iput-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    .line 49
    new-instance v0, Lopenlight/co/lightsdk/process/Processor$1;

    invoke-direct {v0, p0}, Lopenlight/co/lightsdk/process/Processor$1;-><init>(Lopenlight/co/lightsdk/process/Processor;)V

    iput-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    .line 86
    new-instance v0, Lopenlight/co/lightsdk/process/Processor$2;

    invoke-direct {v0, p0}, Lopenlight/co/lightsdk/process/Processor$2;-><init>(Lopenlight/co/lightsdk/process/Processor;)V

    iput-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mProcessListener:Lco/openlight/lightprocessingservice/IProcessListener;

    .line 278
    invoke-direct {p0}, Lopenlight/co/lightsdk/process/Processor;->init()V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/lightsdk/process/Processor;)Lco/openlight/lightprocessingservice/IProcessor;
    .locals 0

    .line 29
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor;->mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;

    return-object p0
.end method

.method static synthetic access$002(Lopenlight/co/lightsdk/process/Processor;Lco/openlight/lightprocessingservice/IProcessor;)Lco/openlight/lightprocessingservice/IProcessor;
    .locals 0

    .line 29
    iput-object p1, p0, Lopenlight/co/lightsdk/process/Processor;->mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lopenlight/co/lightsdk/process/Processor;)Lco/openlight/lightprocessingservice/IProcessListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor;->mProcessListener:Lco/openlight/lightprocessingservice/IProcessListener;

    return-object p0
.end method

.method static synthetic access$302(Lopenlight/co/lightsdk/process/Processor;Lopenlight/co/lightsdk/process/Processor$Status;)Lopenlight/co/lightsdk/process/Processor$Status;
    .locals 0

    .line 29
    iput-object p1, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    return-object p1
.end method

.method static synthetic access$400(Lopenlight/co/lightsdk/process/Processor;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 29
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor;->mDoneBindSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$500(Lopenlight/co/lightsdk/process/Processor;)Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor;->mRequestStatusListener:Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;

    return-object p0
.end method

.method private checkServiceBind()Z
    .locals 3

    .line 260
    iget-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    sget-object v1, Lopenlight/co/lightsdk/process/Processor$Status;->NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    if-ne v0, v1, :cond_0

    .line 261
    invoke-direct {p0}, Lopenlight/co/lightsdk/process/Processor;->init()V

    .line 264
    :cond_0
    iget-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    sget-object v1, Lopenlight/co/lightsdk/process/Processor$Status;->BINDING:Lopenlight/co/lightsdk/process/Processor$Status;

    if-ne v0, v1, :cond_1

    .line 266
    :try_start_0
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor;->mDoneBindSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 268
    sget-object v0, Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;

    const-string v1, "checkServiceBind: Processor Service bind timed out"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static get()Lopenlight/co/lightsdk/process/Processor;
    .locals 1

    .line 126
    sget-object v0, Lopenlight/co/lightsdk/process/Processor;->sInstance:Lopenlight/co/lightsdk/process/Processor;

    return-object v0
.end method

.method private declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    sget-object v1, Lopenlight/co/lightsdk/process/Processor$Status;->NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    if-ne v0, v1, :cond_0

    .line 227
    sget-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->BINDING:Lopenlight/co/lightsdk/process/Processor$Status;

    iput-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    .line 228
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mDoneBindSignal:Ljava/util/concurrent/CountDownLatch;

    .line 229
    sget-object v0, Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;

    const-string v2, "Attempting to bind to Processor Service"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v2, "co.openlight.lightprocessingservice.Processor"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "co.openlight.lightprocessingservice"

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Light;->get()Lopenlight/co/lightsdk/camera2/Light;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/lightsdk/camera2/Light;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lopenlight/co/lightsdk/process/Processor;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 225
    monitor-exit p0

    throw v0
.end method

.method private release()V
    .locals 4

    .line 241
    iget-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    sget-object v1, Lopenlight/co/lightsdk/process/Processor$Status;->BINDING:Lopenlight/co/lightsdk/process/Processor$Status;

    if-ne v0, v1, :cond_0

    .line 243
    :try_start_0
    iget-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mDoneBindSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 245
    sget-object v0, Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;

    const-string v1, "Processor Service still binding, timed out, not attempting release"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 249
    :cond_0
    :goto_0
    iget-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    sget-object v1, Lopenlight/co/lightsdk/process/Processor$Status;->BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    if-ne v0, v1, :cond_1

    .line 250
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Light;->get()Lopenlight/co/lightsdk/camera2/Light;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/lightsdk/camera2/Light;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lopenlight/co/lightsdk/process/Processor;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 251
    sget-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    iput-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;

    .line 252
    sget-object p0, Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;

    const-string v0, "Disconnected from remote Processor Service"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    :cond_1
    sget-object p0, Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;

    const-string v0, "Processor Service not bound to release"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public postProcessingComplete(Lco/openlight/lightprocessingservice/ProcessRequest;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Lco/openlight/lightprocessingservice/ProcessRequest;->validate()Z

    .line 193
    invoke-direct {p0}, Lopenlight/co/lightsdk/process/Processor;->checkServiceBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor;->mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;

    invoke-interface {p0, p1}, Lco/openlight/lightprocessingservice/IProcessor;->postProcessingComplete(Lco/openlight/lightprocessingservice/ProcessRequest;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 198
    sget-object p1, Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;

    const-string v0, "processImage: Failed to call remote service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 189
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Process Request parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processImage(Lco/openlight/lightprocessingservice/ProcessRequest;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p1}, Lco/openlight/lightprocessingservice/ProcessRequest;->validate()Z

    .line 147
    invoke-virtual {p1}, Lco/openlight/lightprocessingservice/ProcessRequest;->getLriPath()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p1}, Lco/openlight/lightprocessingservice/ProcessRequest;->getProcessedDngPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lco/openlight/lightprocessingservice/ProcessRequest;->getProcessedJpegPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Processed image path needs to be specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_1
    :goto_0
    invoke-direct {p0}, Lopenlight/co/lightsdk/process/Processor;->checkServiceBind()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :try_start_0
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor;->mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;

    invoke-interface {p0, p1}, Lco/openlight/lightprocessingservice/IProcessor;->createProcessedImage(Lco/openlight/lightprocessingservice/ProcessRequest;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 163
    sget-object p1, Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;

    const-string v0, "processImage: Failed to call remote service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LRI file does not exist "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Process Request parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerProcessStatusListener(Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lopenlight/co/lightsdk/process/Processor;->mRequestStatusListener:Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;

    return-void
.end method

.method public unregisterProcessStatusListener()V
    .locals 1

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lopenlight/co/lightsdk/process/Processor;->mRequestStatusListener:Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;

    return-void
.end method
