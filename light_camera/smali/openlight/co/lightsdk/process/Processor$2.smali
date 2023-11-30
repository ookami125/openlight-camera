.class Lopenlight/co/lightsdk/process/Processor$2;
.super Lco/openlight/lightprocessingservice/IProcessListener$Stub;
.source "Processor.java"


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
    .locals 0

    .line 86
    iput-object p1, p0, Lopenlight/co/lightsdk/process/Processor$2;->this$0:Lopenlight/co/lightsdk/process/Processor;

    invoke-direct {p0}, Lco/openlight/lightprocessingservice/IProcessListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lco/openlight/lightprocessingservice/ProcessRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lopenlight/co/lightsdk/process/Processor$2;->this$0:Lopenlight/co/lightsdk/process/Processor;

    invoke-static {v0}, Lopenlight/co/lightsdk/process/Processor;->access$500(Lopenlight/co/lightsdk/process/Processor;)Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor$2;->this$0:Lopenlight/co/lightsdk/process/Processor;

    invoke-static {p0}, Lopenlight/co/lightsdk/process/Processor;->access$500(Lopenlight/co/lightsdk/process/Processor;)Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;->onError(Lco/openlight/lightprocessingservice/ProcessRequest;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lco/openlight/lightprocessingservice/ProcessRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lopenlight/co/lightsdk/process/Processor$2;->this$0:Lopenlight/co/lightsdk/process/Processor;

    invoke-static {v0}, Lopenlight/co/lightsdk/process/Processor;->access$500(Lopenlight/co/lightsdk/process/Processor;)Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lopenlight/co/lightsdk/process/Processor$2;->this$0:Lopenlight/co/lightsdk/process/Processor;

    invoke-static {p0}, Lopenlight/co/lightsdk/process/Processor;->access$500(Lopenlight/co/lightsdk/process/Processor;)Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;->onSuccess(Lco/openlight/lightprocessingservice/ProcessRequest;)V

    :cond_0
    return-void
.end method
