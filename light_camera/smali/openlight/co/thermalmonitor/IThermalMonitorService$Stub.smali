.class public abstract Lopenlight/co/thermalmonitor/IThermalMonitorService$Stub;
.super Landroid/os/Binder;
.source "IThermalMonitorService.java"

# interfaces
.implements Lopenlight/co/thermalmonitor/IThermalMonitorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/thermalmonitor/IThermalMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/thermalmonitor/IThermalMonitorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "openlight.co.thermalmonitor.IThermalMonitorService"

.field static final TRANSACTION_getCurrentLevel:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "openlight.co.thermalmonitor.IThermalMonitorService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lopenlight/co/thermalmonitor/IThermalMonitorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lopenlight/co/thermalmonitor/IThermalMonitorService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "openlight.co.thermalmonitor.IThermalMonitorService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 29
    instance-of v1, v0, Lopenlight/co/thermalmonitor/IThermalMonitorService;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lopenlight/co/thermalmonitor/IThermalMonitorService;

    return-object v0

    .line 32
    :cond_13
    new-instance v0, Lopenlight/co/thermalmonitor/IThermalMonitorService$Stub$Proxy;

    invoke-direct {v0, p0}, Lopenlight/co/thermalmonitor/IThermalMonitorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "openlight.co.thermalmonitor.IThermalMonitorService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 45
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 50
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lopenlight/co/thermalmonitor/IThermalMonitorService$Stub;->getCurrentLevel()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
