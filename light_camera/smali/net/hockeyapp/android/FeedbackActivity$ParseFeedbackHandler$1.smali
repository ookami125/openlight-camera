.class Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;

.field final synthetic val$feedbackActivity:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;Lnet/hockeyapp/android/FeedbackActivity;)V
    .registers 3

    .line 890
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;

    iput-object p2, p0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler$1;->val$feedbackActivity:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 895
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler$1;->val$feedbackActivity:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->showDialog(I)V

    return-void
.end method
