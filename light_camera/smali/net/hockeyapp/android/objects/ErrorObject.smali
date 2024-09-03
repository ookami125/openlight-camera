.class public Lnet/hockeyapp/android/objects/ErrorObject;
.super Ljava/lang/Object;
.source "ErrorObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14ede2a74a40f08cL


# instance fields
.field private mCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 1

    .line 17
    iget p0, p0, Lnet/hockeyapp/android/objects/ErrorObject;->mCode:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lnet/hockeyapp/android/objects/ErrorObject;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .registers 2

    .line 21
    iput p1, p0, Lnet/hockeyapp/android/objects/ErrorObject;->mCode:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lnet/hockeyapp/android/objects/ErrorObject;->mMessage:Ljava/lang/String;

    return-void
.end method
