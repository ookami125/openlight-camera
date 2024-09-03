.class public abstract Lco/openlight/lightprocessingservice/IProcessor$Stub;
.super Landroid/os/Binder;
.source "IProcessor.java"

# interfaces
.implements Lco/openlight/lightprocessingservice/IProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/openlight/lightprocessingservice/IProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/openlight/lightprocessingservice/IProcessor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "co.openlight.lightprocessingservice.IProcessor"

.field static final TRANSACTION_createProcessedImage:I = 0x1

.field static final TRANSACTION_postProcessingComplete:I = 0x4

.field static final TRANSACTION_registerProcessListener:I = 0x2

.field static final TRANSACTION_unregisterProcessListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "co.openlight.lightprocessingservice.IProcessor"

    .line 15
    invoke-virtual {p0, p0, v0}, Lco/openlight/lightprocessingservice/IProcessor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lco/openlight/lightprocessingservice/IProcessor;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "co.openlight.lightprocessingservice.IProcessor"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lco/openlight/lightprocessingservice/IProcessor;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lco/openlight/lightprocessingservice/IProcessor;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lco/openlight/lightprocessingservice/IProcessor$Stub$Proxy;

    invoke-direct {v0, p0}, Lco/openlight/lightprocessingservice/IProcessor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "co.openlight.lightprocessingservice.IProcessor"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6f

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_74

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 81
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_23

    .line 84
    sget-object p1, Lco/openlight/lightprocessingservice/ProcessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lco/openlight/lightprocessingservice/ProcessRequest;

    .line 89
    :cond_23
    invoke-virtual {p0, v1}, Lco/openlight/lightprocessingservice/IProcessor$Stub;->postProcessingComplete(Lco/openlight/lightprocessingservice/ProcessRequest;)Z

    move-result p0

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 72
    :pswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lco/openlight/lightprocessingservice/IProcessListener$Stub;->asInterface(Landroid/os/IBinder;)Lco/openlight/lightprocessingservice/IProcessListener;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lco/openlight/lightprocessingservice/IProcessor$Stub;->unregisterProcessListener(Lco/openlight/lightprocessingservice/IProcessListener;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 63
    :pswitch_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lco/openlight/lightprocessingservice/IProcessListener$Stub;->asInterface(Landroid/os/IBinder;)Lco/openlight/lightprocessingservice/IProcessListener;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lco/openlight/lightprocessingservice/IProcessor$Stub;->registerProcessListener(Lco/openlight/lightprocessingservice/IProcessListener;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_64

    .line 51
    sget-object p1, Lco/openlight/lightprocessingservice/ProcessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lco/openlight/lightprocessingservice/ProcessRequest;

    .line 56
    :cond_64
    invoke-virtual {p0, v1}, Lco/openlight/lightprocessingservice/IProcessor$Stub;->createProcessedImage(Lco/openlight/lightprocessingservice/ProcessRequest;)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 43
    :cond_6f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_52
        :pswitch_40
        :pswitch_2e
        :pswitch_11
    .end packed-switch
.end method
