.class Lopenlight/co/lightsdk/process/Processor$1;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lightsdk/process/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lightsdk/process/Processor;


# direct methods
.method constructor <init>(Lopenlight/co/lightsdk/process/Processor;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 76
    # getter for: Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/lightsdk/process/Processor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding died from Processor Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    sget-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    # setter for: Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;
    invoke-static {p1, v0}, Lopenlight/co/lightsdk/process/Processor;->access$302(Lopenlight/co/lightsdk/process/Processor;Lopenlight/co/lightsdk/process/Processor$Status;)Lopenlight/co/lightsdk/process/Processor$Status;

    .line 79
    :try_start_23
    iget-object p1, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    # getter for: Lopenlight/co/lightsdk/process/Processor;->mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;
    invoke-static {p1}, Lopenlight/co/lightsdk/process/Processor;->access$000(Lopenlight/co/lightsdk/process/Processor;)Lco/openlight/lightprocessingservice/IProcessor;

    move-result-object p1

    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    # getter for: Lopenlight/co/lightsdk/process/Processor;->mProcessListener:Lco/openlight/lightprocessingservice/IProcessListener;
    invoke-static {p0}, Lopenlight/co/lightsdk/process/Processor;->access$200(Lopenlight/co/lightsdk/process/Processor;)Lco/openlight/lightprocessingservice/IProcessListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lco/openlight/lightprocessingservice/IProcessor;->unregisterProcessListener(Lco/openlight/lightprocessingservice/IProcessListener;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_33

    goto :goto_3d

    :catch_33
    move-exception p0

    .line 81
    # getter for: Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/lightsdk/process/Processor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error unregistering callback listener"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 52
    iget-object p1, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    invoke-static {p2}, Lco/openlight/lightprocessingservice/IProcessor$Stub;->asInterface(Landroid/os/IBinder;)Lco/openlight/lightprocessingservice/IProcessor;

    move-result-object p2

    # setter for: Lopenlight/co/lightsdk/process/Processor;->mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;
    invoke-static {p1, p2}, Lopenlight/co/lightsdk/process/Processor;->access$002(Lopenlight/co/lightsdk/process/Processor;Lco/openlight/lightprocessingservice/IProcessor;)Lco/openlight/lightprocessingservice/IProcessor;

    .line 53
    # getter for: Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/lightsdk/process/Processor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connected to Processor Service"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_12
    iget-object p1, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    # getter for: Lopenlight/co/lightsdk/process/Processor;->mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;
    invoke-static {p1}, Lopenlight/co/lightsdk/process/Processor;->access$000(Lopenlight/co/lightsdk/process/Processor;)Lco/openlight/lightprocessingservice/IProcessor;

    move-result-object p1

    iget-object p2, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    # getter for: Lopenlight/co/lightsdk/process/Processor;->mProcessListener:Lco/openlight/lightprocessingservice/IProcessListener;
    invoke-static {p2}, Lopenlight/co/lightsdk/process/Processor;->access$200(Lopenlight/co/lightsdk/process/Processor;)Lco/openlight/lightprocessingservice/IProcessListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lco/openlight/lightprocessingservice/IProcessor;->registerProcessListener(Lco/openlight/lightprocessingservice/IProcessListener;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_2c

    :catch_22
    move-exception p1

    .line 57
    # getter for: Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/lightsdk/process/Processor;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Error registering callback listener"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_2c
    iget-object p1, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    sget-object p2, Lopenlight/co/lightsdk/process/Processor$Status;->BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    # setter for: Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;
    invoke-static {p1, p2}, Lopenlight/co/lightsdk/process/Processor;->access$302(Lopenlight/co/lightsdk/process/Processor;Lopenlight/co/lightsdk/process/Processor$Status;)Lopenlight/co/lightsdk/process/Processor$Status;

    .line 60
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    # getter for: Lopenlight/co/lightsdk/process/Processor;->mDoneBindSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p0}, Lopenlight/co/lightsdk/process/Processor;->access$400(Lopenlight/co/lightsdk/process/Processor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 65
    # getter for: Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/lightsdk/process/Processor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disconnected from Processor Service"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    sget-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    # setter for: Lopenlight/co/lightsdk/process/Processor;->mServiceStatus:Lopenlight/co/lightsdk/process/Processor$Status;
    invoke-static {p1, v0}, Lopenlight/co/lightsdk/process/Processor;->access$302(Lopenlight/co/lightsdk/process/Processor;Lopenlight/co/lightsdk/process/Processor$Status;)Lopenlight/co/lightsdk/process/Processor$Status;

    .line 68
    :try_start_10
    iget-object p1, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    # getter for: Lopenlight/co/lightsdk/process/Processor;->mProcessorService:Lco/openlight/lightprocessingservice/IProcessor;
    invoke-static {p1}, Lopenlight/co/lightsdk/process/Processor;->access$000(Lopenlight/co/lightsdk/process/Processor;)Lco/openlight/lightprocessingservice/IProcessor;

    move-result-object p1

    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor$1;->this$0:Lopenlight/co/lightsdk/process/Processor;

    # getter for: Lopenlight/co/lightsdk/process/Processor;->mProcessListener:Lco/openlight/lightprocessingservice/IProcessListener;
    invoke-static {p0}, Lopenlight/co/lightsdk/process/Processor;->access$200(Lopenlight/co/lightsdk/process/Processor;)Lco/openlight/lightprocessingservice/IProcessListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lco/openlight/lightprocessingservice/IProcessor;->unregisterProcessListener(Lco/openlight/lightprocessingservice/IProcessListener;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception p0

    .line 70
    # getter for: Lopenlight/co/lightsdk/process/Processor;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/lightsdk/process/Processor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error unregistering callback listener"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void
.end method
