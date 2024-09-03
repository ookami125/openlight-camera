.class public abstract Lnet/hockeyapp/android/FeedbackManagerListener;
.super Ljava/lang/Object;
.source "FeedbackManagerListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract feedbackAnswered(Lnet/hockeyapp/android/objects/FeedbackMessage;)Z
.end method

.method public getFeedbackActivityClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/hockeyapp/android/FeedbackActivity;",
            ">;"
        }
    .end annotation

    .line 18
    const-class p0, Lnet/hockeyapp/android/FeedbackActivity;

    return-object p0
.end method

.method public shouldCreateNewFeedbackThread()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
