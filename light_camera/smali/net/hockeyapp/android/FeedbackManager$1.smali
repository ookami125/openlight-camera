.class final Lnet/hockeyapp/android/FeedbackManager$1;
.super Landroid/os/Handler;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackManager;->checkForAnswersAndNotify(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 221
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "feedback_response"

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    new-instance v0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "fetch"

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    .line 226
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->setUrlString(Ljava/lang/String;)V

    .line 227
    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    :cond_0
    return-void
.end method
