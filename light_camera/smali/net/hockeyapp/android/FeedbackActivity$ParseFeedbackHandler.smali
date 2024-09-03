.class Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;
.super Landroid/os/Handler;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseFeedbackHandler"
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

    .line 852
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 853
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;->mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 860
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;->mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/FeedbackActivity;

    if-nez v0, :cond_b

    return-void

    .line 865
    :cond_b
    new-instance v1, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v1}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    # setter for: Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;
    invoke-static {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4f

    .line 867
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 868
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "parse_feedback_response"

    .line 869
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lnet/hockeyapp/android/objects/FeedbackResponse;

    if-eqz p1, :cond_4f

    .line 871
    invoke-virtual {p1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 875
    invoke-virtual {p1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 877
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v3

    invoke-virtual {p1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveFeedbackTokenToPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 879
    # invokes: Lnet/hockeyapp/android/FeedbackActivity;->loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    invoke-static {v0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    .line 880
    # setter for: Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z
    invoke-static {v0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->access$902(Lnet/hockeyapp/android/FeedbackActivity;Z)Z

    :cond_4e
    move v2, v1

    :cond_4f
    if-nez v2, :cond_59

    .line 890
    new-instance p1, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler$1;

    invoke-direct {p1, p0, v0}, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 900
    :cond_59
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    return-void
.end method
