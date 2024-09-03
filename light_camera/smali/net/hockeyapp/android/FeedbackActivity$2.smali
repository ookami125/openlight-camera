.class Lnet/hockeyapp/android/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity;->loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity;

.field final synthetic val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .registers 3

    .line 652
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    iput-object p2, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 656
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 658
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 659
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMM h:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 662
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v3

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    .line 663
    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    .line 664
    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f4

    .line 666
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->val$feedbackResponse:Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {v4}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v4

    # setter for: Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lnet/hockeyapp/android/FeedbackActivity;->access$102(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 668
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;
    invoke-static {v3}, Lnet/hockeyapp/android/FeedbackActivity;->access$100(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 672
    :try_start_54
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;
    invoke-static {v3}, Lnet/hockeyapp/android/FeedbackActivity;->access$100(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 673
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mLastUpdatedTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lnet/hockeyapp/android/FeedbackActivity;->access$200(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    sget v6, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_last_updated_text:I

    invoke-virtual {v5, v6}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mLastUpdatedTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->access$200(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_8f
    .catch Ljava/text/ParseException; {:try_start_54 .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception v0

    .line 676
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 679
    :goto_94
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;
    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->access$300(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v0

    if-nez v0, :cond_b3

    .line 680
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v1, Lnet/hockeyapp/android/adapters/MessagesAdapter;

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lnet/hockeyapp/android/FeedbackActivity;->access$400(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;
    invoke-static {v3}, Lnet/hockeyapp/android/FeedbackActivity;->access$100(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/hockeyapp/android/adapters/MessagesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;
    invoke-static {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->access$302(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/adapters/MessagesAdapter;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    goto :goto_e5

    .line 682
    :cond_b3
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;
    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->access$300(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->clear()V

    .line 683
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;
    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->access$100(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .line 684
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;
    invoke-static {v2}, Lnet/hockeyapp/android/FeedbackActivity;->access$300(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->add(Lnet/hockeyapp/android/objects/FeedbackMessage;)V

    goto :goto_c6

    .line 687
    :cond_dc
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;
    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->access$300(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/adapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 690
    :goto_e5
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mMessagesListView:Landroid/widget/ListView;
    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->access$500(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    # getter for: Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;
    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackActivity;->access$300(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_f4
    return-void
.end method
