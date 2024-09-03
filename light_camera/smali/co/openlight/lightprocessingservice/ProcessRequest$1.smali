.class final Lco/openlight/lightprocessingservice/ProcessRequest$1;
.super Ljava/lang/Object;
.source "ProcessRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/openlight/lightprocessingservice/ProcessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lco/openlight/lightprocessingservice/ProcessRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 57
    new-instance p0, Lco/openlight/lightprocessingservice/ProcessRequest;

    invoke-direct {p0, p1}, Lco/openlight/lightprocessingservice/ProcessRequest;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lco/openlight/lightprocessingservice/ProcessRequest$1;->createFromParcel(Landroid/os/Parcel;)Lco/openlight/lightprocessingservice/ProcessRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 62
    new-array p0, p1, [Lco/openlight/lightprocessingservice/ProcessRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lco/openlight/lightprocessingservice/ProcessRequest$1;->newArray(I)[Lco/openlight/lightprocessingservice/ProcessRequest;

    move-result-object p0

    return-object p0
.end method
