.class public abstract Lnet/hockeyapp/android/listeners/SendFeedbackListener;
.super Ljava/lang/Object;
.source "SendFeedbackListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public feedbackFailed(Lnet/hockeyapp/android/tasks/SendFeedbackTask;Ljava/lang/Boolean;)V
    .registers 3

    return-void
.end method

.method public feedbackSuccessful(Lnet/hockeyapp/android/tasks/SendFeedbackTask;)V
    .registers 2

    return-void
.end method
