.class public interface abstract Lco/openlight/lightprocessingservice/IProcessListener;
.super Ljava/lang/Object;
.source "IProcessListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/openlight/lightprocessingservice/IProcessListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError(Lco/openlight/lightprocessingservice/ProcessRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Lco/openlight/lightprocessingservice/ProcessRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
