.class public abstract Lco/openlight/lightprocessingservice/IProcessListener$Stub;
.super Landroid/os/Binder;
.source "IProcessListener.java"

# interfaces
.implements Lco/openlight/lightprocessingservice/IProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/openlight/lightprocessingservice/IProcessListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/openlight/lightprocessingservice/IProcessListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "co.openlight.lightprocessingservice.IProcessListener"

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "co.openlight.lightprocessingservice.IProcessListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lco/openlight/lightprocessingservice/IProcessListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lco/openlight/lightprocessingservice/IProcessListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "co.openlight.lightprocessingservice.IProcessListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lco/openlight/lightprocessingservice/IProcessListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lco/openlight/lightprocessingservice/IProcessListener;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lco/openlight/lightprocessingservice/IProcessListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lco/openlight/lightprocessingservice/IProcessListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "co.openlight.lightprocessingservice.IProcessListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 62
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    sget-object p1, Lco/openlight/lightprocessingservice/ProcessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lco/openlight/lightprocessingservice/ProcessRequest;

    .line 70
    :cond_0
    invoke-virtual {p0, v1}, Lco/openlight/lightprocessingservice/IProcessListener$Stub;->onError(Lco/openlight/lightprocessingservice/ProcessRequest;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    sget-object p1, Lco/openlight/lightprocessingservice/ProcessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lco/openlight/lightprocessingservice/ProcessRequest;

    .line 56
    :cond_1
    invoke-virtual {p0, v1}, Lco/openlight/lightprocessingservice/IProcessListener$Stub;->onSuccess(Lco/openlight/lightprocessingservice/ProcessRequest;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
