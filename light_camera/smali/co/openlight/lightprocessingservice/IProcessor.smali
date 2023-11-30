.class public interface abstract Lco/openlight/lightprocessingservice/IProcessor;
.super Ljava/lang/Object;
.source "IProcessor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/openlight/lightprocessingservice/IProcessor$Stub;
    }
.end annotation


# virtual methods
.method public abstract createProcessedImage(Lco/openlight/lightprocessingservice/ProcessRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract postProcessingComplete(Lco/openlight/lightprocessingservice/ProcessRequest;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerProcessListener(Lco/openlight/lightprocessingservice/IProcessListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterProcessListener(Lco/openlight/lightprocessingservice/IProcessListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
