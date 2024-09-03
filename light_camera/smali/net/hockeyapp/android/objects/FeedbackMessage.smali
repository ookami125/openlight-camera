.class public Lnet/hockeyapp/android/objects/FeedbackMessage;
.super Ljava/lang/Object;
.source "FeedbackMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79c0036a37b8b480L


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCleanText:Ljava/lang/String;

.field private mCreatedAt:Ljava/lang/String;

.field private mDeviceModel:Ljava/lang/String;

.field private mDeviceOem:Ljava/lang/String;

.field private mDeviceOsVersion:Ljava/lang/String;

.field private mFeedbackAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUserString:Ljava/lang/String;

.field private mVia:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 1

    .line 148
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getCleanText()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mCleanText:Ljava/lang/String;

    return-object p0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mCreatedAt:Ljava/lang/String;

    return-object p0
.end method

.method public getFeedbackAttachments()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mFeedbackAttachments:Ljava/util/List;

    return-object p0
.end method

.method public getId()I
    .registers 1

    .line 100
    iget p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mId:I

    return p0
.end method

.method public getModel()Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceModel:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 140
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getOem()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceOem:Ljava/lang/String;

    return-object p0
.end method

.method public getOsVersion()Ljava/lang/String;
    .registers 1

    .line 84
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceOsVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSubjec()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method public getUserString()Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mUserString:Ljava/lang/String;

    return-object p0
.end method

.method public getVia()I
    .registers 1

    .line 116
    iget p0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mVia:I

    return p0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setCleanText(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mCleanText:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mCreatedAt:Ljava/lang/String;

    return-void
.end method

.method public setFeedbackAttachments(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;)V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mFeedbackAttachments:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 104
    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mId:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceModel:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOem(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceOem:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceOsVersion:Ljava/lang/String;

    return-void
.end method

.method public setSubjec(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mText:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mToken:Ljava/lang/String;

    return-void
.end method

.method public setUserString(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mUserString:Ljava/lang/String;

    return-void
.end method

.method public setVia(I)V
    .registers 2

    .line 120
    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mVia:I

    return-void
.end method
