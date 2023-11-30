.class public interface abstract Lopenlight/co/thermalmonitor/IThermalMonitorService;
.super Ljava/lang/Object;
.source "IThermalMonitorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/thermalmonitor/IThermalMonitorService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCurrentLevel()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
