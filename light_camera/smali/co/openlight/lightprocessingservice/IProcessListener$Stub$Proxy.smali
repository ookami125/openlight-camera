.class Lco/openlight/lightprocessingservice/IProcessListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProcessListener.java"

# interfaces
.implements Lco/openlight/lightprocessingservice/IProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/openlight/lightprocessingservice/IProcessListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lco/openlight/lightprocessingservice/IProcessListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
    iget-object p0, p0, Lco/openlight/lightprocessingservice/IProcessListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "co.openlight.lightprocessingservice.IProcessListener"

    return-object p0
.end method

.method public onError(Lco/openlight/lightprocessingservice/ProcessRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "co.openlight.lightprocessingservice.IProcessListener"

    .line 121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 123
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1, v0, v2}, Lco/openlight/lightprocessingservice/ProcessRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 127
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    :goto_1b
    iget-object p0, p0, Lco/openlight/lightprocessingservice/IProcessListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    throw p0
.end method

.method public onSuccess(Lco/openlight/lightprocessingservice/ProcessRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "co.openlight.lightprocessingservice.IProcessListener"

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p1, v0, v3}, Lco/openlight/lightprocessingservice/ProcessRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 106
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    :goto_1b
    iget-object p0, p0, Lco/openlight/lightprocessingservice/IProcessListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2a

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2a
    move-exception p0

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    throw p0
.end method
