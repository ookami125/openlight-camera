.class Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;
.super Landroid/os/Handler;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedbackHandler"
.end annotation


# instance fields
.field private final mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/hockeyapp/android/FeedbackActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .registers 3

    .line 793
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 794
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;->mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 800
    new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    .line 802
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;->mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hockeyapp/android/FeedbackActivity;

    if-nez v1, :cond_10

    return-void

    :cond_10
    const/4 v2, 0x0

    if-eqz p1, :cond_7b

    .line 807
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7b

    .line 808
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "feedback_response"

    .line 809
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feedback_status"

    .line 810
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "request_type"

    .line 811
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "send"

    .line 812
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4c

    if-eqz v3, :cond_42

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0xc9

    if-eq v5, v7, :cond_4c

    .line 814
    :cond_42
    sget p1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_send_generic_error:I

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    goto :goto_84

    :cond_4c
    const-string v5, "fetch"

    .line 815
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    if-eqz v4, :cond_6a

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x194

    if-eq v5, v7, :cond_66

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1a6

    if-ne v4, v5, :cond_6a

    .line 817
    :cond_66
    # invokes: Lnet/hockeyapp/android/FeedbackActivity;->resetFeedbackView()V
    invoke-static {v1}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)V

    goto :goto_6f

    :cond_6a
    if-eqz v3, :cond_71

    .line 820
    # invokes: Lnet/hockeyapp/android/FeedbackActivity;->startParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, p1}, Lnet/hockeyapp/android/FeedbackActivity;->access$700(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6f
    move v2, v6

    goto :goto_84

    .line 823
    :cond_71
    sget p1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_send_network_error:I

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    goto :goto_84

    .line 826
    :cond_7b
    sget p1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_send_generic_error:I

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    .line 829
    :goto_84
    # setter for: Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;
    invoke-static {v1, v0}, Lnet/hockeyapp/android/FeedbackActivity;->access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;

    if-nez v2, :cond_91

    .line 832
    new-instance p1, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;

    invoke-direct {p1, p0, v1}, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 843
    :cond_91
    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/FeedbackActivity;->onSendFeedbackResult(Z)V

    return-void
.end method
