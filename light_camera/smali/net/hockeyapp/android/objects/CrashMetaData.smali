.class public Lnet/hockeyapp/android/objects/CrashMetaData;
.super Ljava/lang/Object;
.source "CrashMetaData.java"


# instance fields
.field private mUserDescription:Ljava/lang/String;

.field private mUserEmail:Ljava/lang/String;

.field private mUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserDescription()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getUserEmail()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserEmail:Ljava/lang/String;

    return-object p0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserID:Ljava/lang/String;

    return-object p0
.end method

.method public setUserDescription(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserDescription:Ljava/lang/String;

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserEmail:Ljava/lang/String;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lnet/hockeyapp/android/objects/CrashMetaData;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nuserDescription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nuserEmail       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nuserID          "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashMetaData;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
