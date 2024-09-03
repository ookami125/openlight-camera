.class public Lnet/hockeyapp/android/objects/FeedbackResponse;
.super Ljava/lang/Object;
.source "FeedbackResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xf2d2472b72e4b8eL


# instance fields
.field private mFeedback:Lnet/hockeyapp/android/objects/Feedback;

.field private mStatus:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeedback()Lnet/hockeyapp/android/objects/Feedback;
    .registers 1

    .line 27
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->mFeedback:Lnet/hockeyapp/android/objects/Feedback;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->mStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method public setFeedback(Lnet/hockeyapp/android/objects/Feedback;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->mFeedback:Lnet/hockeyapp/android/objects/Feedback;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->mStatus:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->mToken:Ljava/lang/String;

    return-void
.end method
