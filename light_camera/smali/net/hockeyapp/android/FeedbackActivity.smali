.class public Lnet/hockeyapp/android/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;,
        Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;
    }
.end annotation


# static fields
.field private static final ATTACH_FILE:I = 0x2

.field private static final ATTACH_PICTURE:I = 0x1

.field private static final DIALOG_ERROR_ID:I = 0x0

.field public static final EXTRA_FORCE_NEW_THREAD:Ljava/lang/String; = "forceNewThread"

.field public static final EXTRA_INITIAL_ATTACHMENTS:Ljava/lang/String; = "initialAttachments"

.field public static final EXTRA_INITIAL_USER_EMAIL:Ljava/lang/String; = "initialUserEmail"

.field public static final EXTRA_INITIAL_USER_NAME:Ljava/lang/String; = "initialUserName"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final MAX_ATTACHMENTS_PER_MSG:I = 0x3

.field private static final PAINT_IMAGE:I = 0x3


# instance fields
.field private initialUserEmail:Ljava/lang/String;

.field private initialUserName:Ljava/lang/String;

.field private mAddAttachmentButton:Landroid/widget/Button;

.field private mAddResponseButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEmailInput:Landroid/widget/EditText;

.field private mError:Lnet/hockeyapp/android/objects/ErrorObject;

.field private mFeedbackHandler:Landroid/os/Handler;

.field private mFeedbackMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedbackScrollview:Landroid/widget/ScrollView;

.field private mFeedbackViewInitialized:Z

.field private mForceNewThread:Z

.field private mInSendFeedback:Z

.field private mInitialAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedTextView:Landroid/widget/TextView;

.field private mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

.field private mMessagesListView:Landroid/widget/ListView;

.field private mNameInput:Landroid/widget/EditText;

.field private mParseFeedbackHandler:Landroid/os/Handler;

.field private mParseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

.field private mRefreshButton:Landroid/widget/Button;

.field private mSendFeedbackButton:Landroid/widget/Button;

.field private mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

.field private mSubjectInput:Landroid/widget/EditText;

.field private mTextInput:Landroid/widget/EditText;

.field private mToken:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
    .registers 2

    .line 63
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    return-object p1
.end method

.method static synthetic access$100(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 63
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 63
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackMessages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;
    .registers 1

    .line 63
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mLastUpdatedTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/adapters/MessagesAdapter;
    .registers 1

    .line 63
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/adapters/MessagesAdapter;)Lnet/hockeyapp/android/adapters/MessagesAdapter;
    .registers 2

    .line 63
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mMessagesAdapter:Lnet/hockeyapp/android/adapters/MessagesAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;
    .registers 1

    .line 63
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;
    .registers 1

    .line 63
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mMessagesListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$600(Lnet/hockeyapp/android/FeedbackActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->resetFeedbackView()V

    return-void
.end method

.method static synthetic access$700(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/FeedbackActivity;->startParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    return-void
.end method

.method static synthetic access$902(Lnet/hockeyapp/android/FeedbackActivity;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    return p1
.end method

.method private addAttachment(I)Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_21

    .line 583
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "*/*"

    .line 584
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    .line 585
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    sget v2, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_select_file:I

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    :cond_21
    if-ne p1, v1, :cond_40

    .line 590
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "image/*"

    .line 591
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    .line 592
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_select_picture:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method private configureAppropriateView()V
    .registers 12

    .line 601
    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mForceNewThread:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    if-eqz v0, :cond_12

    .line 602
    :cond_8
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mToken:Ljava/lang/String;

    .line 605
    :cond_12
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    if-eqz v0, :cond_1b

    goto :goto_30

    :cond_1b
    const/4 v0, 0x1

    .line 610
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 611
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lnet/hockeyapp/android/FeedbackActivity;->mToken:Ljava/lang/String;

    iget-object v9, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_34

    :cond_30
    :goto_30
    const/4 v0, 0x0

    .line 607
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    :goto_34
    return-void
.end method

.method private createParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 621
    new-instance v0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mParseFeedbackHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1, p2}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mParseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    return-void
.end method

.method private hideKeyboard()V
    .registers 3

    .line 625
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    if-eqz v0, :cond_16

    const-string v0, "input_method"

    .line 626
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 627
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_16
    return-void
.end method

.method private initFeedbackHandler()V
    .registers 2

    .line 635
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private initParseFeedbackHandler()V
    .registers 2

    .line 642
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mParseFeedbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private loadFeedbackMessages(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 652
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$2;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/FeedbackActivity$2;-><init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetFeedbackView()V
    .registers 2

    .line 697
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$3;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$3;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendFeedback()V
    .registers 13

    .line 717
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 718
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_error_no_network_message:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 719
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_11
    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 724
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->hideKeyboard()V

    .line 726
    iget-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mForceNewThread:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    if-nez v1, :cond_22

    const/4 v1, 0x0

    goto :goto_2c

    :cond_22
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_2c
    move-object v9, v1

    .line 728
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 729
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 730
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 731
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 733
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 734
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_subject_error:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto/16 :goto_e7

    .line 736
    :cond_79
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getRequireUserName()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    if-ne v0, v1, :cond_8f

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 737
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_name_error:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_e7

    .line 738
    :cond_8f
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getRequireUserEmail()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    if-ne v0, v1, :cond_a5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 739
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_email_empty:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_e7

    .line 740
    :cond_a5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 741
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_text_error:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_e7

    .line 742
    :cond_b3
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getRequireUserEmail()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    if-ne v0, v1, :cond_c9

    invoke-static {v5}, Lnet/hockeyapp/android/utils/Util;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 743
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_validate_email_error:I

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->setError(Landroid/widget/EditText;I)V

    goto :goto_e7

    .line 746
    :cond_c9
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v4, v5, v6}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveNameEmailSubjectToPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    sget v0, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentListView;

    .line 750
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentListView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v8

    .line 753
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mUrl:Ljava/lang/String;

    iget-object v10, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    :goto_e7
    return-void
.end method

.method private sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 775
    new-instance v12, Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    iget-object v2, v0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    move-object v1, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    iput-object v12, v0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    .line 776
    iget-object v0, v0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    return-void
.end method

.method private setError(Landroid/widget/EditText;I)V
    .registers 3

    .line 758
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 759
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    return-void
.end method

.method private startParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 785
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/FeedbackActivity;->createParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mParseFeedbackTask:Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    invoke-static {p0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    return-void
.end method


# virtual methods
.method protected configureFeedbackView(Z)V
    .registers 8

    .line 472
    sget v0, Lnet/hockeyapp/android/R$id;->wrapper_feedback_scroll:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackScrollview:Landroid/widget/ScrollView;

    .line 473
    sget v0, Lnet/hockeyapp/android/R$id;->wrapper_messages:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mWrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    .line 474
    sget v0, Lnet/hockeyapp/android/R$id;->list_feedback_messages:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mMessagesListView:Landroid/widget/ListView;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_5d

    .line 478
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mWrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackScrollview:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 481
    sget p1, Lnet/hockeyapp/android/R$id;->label_last_updated:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mLastUpdatedTextView:Landroid/widget/TextView;

    .line 482
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mLastUpdatedTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    sget p1, Lnet/hockeyapp/android/R$id;->button_add_response:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddResponseButton:Landroid/widget/Button;

    .line 485
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddResponseButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    sget p1, Lnet/hockeyapp/android/R$id;->button_refresh:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mRefreshButton:Landroid/widget/Button;

    .line 488
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a0

    .line 491
    :cond_5d
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mWrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackScrollview:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 494
    sget p1, Lnet/hockeyapp/android/R$id;->input_name:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    .line 495
    sget p1, Lnet/hockeyapp/android/R$id;->input_email:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    .line 496
    sget p1, Lnet/hockeyapp/android/R$id;->input_subject:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    .line 497
    sget p1, Lnet/hockeyapp/android/R$id;->input_message:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    .line 500
    iget-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    const/4 v2, 0x1

    if-nez p1, :cond_10d

    .line 501
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object p1

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/utils/PrefsUtil;->getNameEmailFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d5

    const-string v3, "\\|"

    .line 504
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10b

    .line 505
    array-length v3, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_10b

    .line 506
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-boolean v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mForceNewThread:Z

    if-nez v3, :cond_cf

    array-length v3, p1

    const/4 v5, 0x3

    if-lt v3, v5, :cond_cf

    .line 510
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    aget-object p1, p1, v4

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_10b

    .line 513
    :cond_cf
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_10b

    .line 518
    :cond_d5
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserEmail:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 522
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_10b

    .line 523
    :cond_f8
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserEmail:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_106

    .line 524
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_10b

    .line 526
    :cond_106
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 530
    :cond_10b
    :goto_10b
    iput-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    .line 533
    :cond_10d
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mNameInput:Landroid/widget/EditText;

    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getRequireUserName()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    move-result-object v3

    sget-object v4, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->DONT_SHOW:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    if-ne v3, v4, :cond_119

    move v3, v0

    goto :goto_11a

    :cond_119
    move v3, v1

    :goto_11a
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 534
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mEmailInput:Landroid/widget/EditText;

    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getRequireUserEmail()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    move-result-object v3

    sget-object v4, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->DONT_SHOW:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    if-ne v3, v4, :cond_129

    move v3, v0

    goto :goto_12a

    :cond_129
    move v3, v1

    :goto_12a
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 537
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mTextInput:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mForceNewThread:Z

    if-eqz p1, :cond_13c

    iget-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    if-eqz p1, :cond_14e

    :cond_13c
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object p1

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14e

    .line 542
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_153

    .line 545
    :cond_14e
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 549
    :goto_153
    sget p1, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 550
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 552
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    if-eqz v0, :cond_17d

    .line 553
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_168
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 554
    new-instance v3, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {v3, p0, p1, v1, v2}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_168

    .line 559
    :cond_17d
    sget p1, Lnet/hockeyapp/android/R$id;->button_attachment:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddAttachmentButton:Landroid/widget/Button;

    .line 560
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddAttachmentButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mAddAttachmentButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 563
    sget p1, Lnet/hockeyapp/android/R$id;->button_send:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackButton:Landroid/widget/Button;

    .line 564
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1a0
    return-void
.end method

.method public enableDisableSendFeedbackButton(Z)V
    .registers 3

    .line 460
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 461
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public getLayoutView()Landroid/view/View;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lnet/hockeyapp/android/R$layout;->hockeyapp_activity_feedback:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1f

    .line 414
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 417
    sget p2, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 418
    new-instance p3, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {p3, p0, p2, p1, v0}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5d

    :cond_1f
    const/4 p2, 0x3

    if-ne p1, v0, :cond_41

    .line 423
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 428
    :try_start_28
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lnet/hockeyapp/android/PaintActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "imageUri"

    .line 429
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, p3, p2}, Lnet/hockeyapp/android/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_37} :catch_38

    goto :goto_5d

    :catch_38
    move-exception p0

    const-string p1, "HockeyApp"

    const-string p2, "Paint activity not declared!"

    .line 432
    invoke-static {p1, p2, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    :cond_41
    if-ne p1, p2, :cond_5e

    const-string p1, "imageUri"

    .line 439
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_5d

    .line 442
    sget p2, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 443
    new-instance p3, Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {p3, p0, p2, p1, v0}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 320
    sget v1, Lnet/hockeyapp/android/R$id;->button_send:I

    if-ne v0, v1, :cond_c

    .line 321
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->sendFeedback()V

    goto :goto_57

    .line 322
    :cond_c
    sget v1, Lnet/hockeyapp/android/R$id;->button_attachment:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_30

    .line 323
    sget v0, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2c

    .line 326
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_57

    .line 328
    :cond_2c
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_57

    .line 330
    :cond_30
    sget p1, Lnet/hockeyapp/android/R$id;->button_add_response:I

    if-ne v0, p1, :cond_3b

    const/4 p1, 0x1

    .line 331
    iput-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    .line 332
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    goto :goto_57

    .line 333
    :cond_3b
    sget p1, Lnet/hockeyapp/android/R$id;->button_refresh:I

    if-ne v0, p1, :cond_57

    .line 334
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object p1

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lnet/hockeyapp/android/FeedbackActivity;->sendFetchFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    :cond_57
    :goto_57
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 354
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 360
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 357
    :pswitch_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->addAttachment(I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getLayoutView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->setContentView(Landroid/view/View;)V

    .line 201
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_title:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    iput-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    const-string v2, "url"

    .line 206
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mUrl:Ljava/lang/String;

    const-string v2, "forceNewThread"

    .line 207
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mForceNewThread:Z

    const-string v2, "initialUserName"

    .line 208
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserName:Ljava/lang/String;

    const-string v2, "initialUserEmail"

    .line 209
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->initialUserEmail:Ljava/lang/String;

    const-string v2, "initialAttachments"

    .line 211
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    .line 214
    array-length v2, v0

    move v3, v1

    :goto_51
    if-ge v3, v2, :cond_5f

    aget-object v4, v0, v3

    .line 215
    iget-object v5, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    check-cast v4, Landroid/net/Uri;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_5f
    if-eqz p1, :cond_72

    const-string v0, "feedbackViewInitialized"

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    const-string v0, "inSendFeedback"

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    goto :goto_76

    .line 224
    :cond_72
    iput-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    .line 225
    iput-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    :goto_76
    const-string p1, "notification"

    .line 229
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 v0, 0x2

    .line 230
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 232
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->initFeedbackHandler()V

    .line 233
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->initParseFeedbackHandler()V

    .line 234
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->configureAppropriateView()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    .line 343
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 345
    sget p2, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_attach_file:I

    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 346
    sget p2, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_attach_picture:I

    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p1, p3, p2, p3, p0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 368
    :cond_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_dialog_error_message:I

    .line 369
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_dialog_error_title:I

    .line 371
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1080027

    .line 372
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_dialog_positive_button:I

    .line 373
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/hockeyapp/android/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/FeedbackActivity$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 378
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 299
    iget-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 300
    iput-boolean p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    .line 301
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->configureAppropriateView()V

    goto :goto_11

    .line 303
    :cond_e
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->finish()V

    :goto_11
    const/4 p0, 0x1

    return p0

    .line 309
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_1c

    .line 388
    :cond_3
    check-cast p2, Landroid/app/AlertDialog;

    .line 389
    iget-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    if-eqz p1, :cond_13

    .line 391
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-virtual {p0}, Lnet/hockeyapp/android/objects/ErrorObject;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 394
    :cond_13
    sget p1, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_generic_error:I

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1c
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7

    if-eqz p1, :cond_3a

    .line 243
    sget v0, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "attachments"

    .line 244
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 246
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInitialAttachments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 247
    new-instance v3, Lnet/hockeyapp/android/views/AttachmentView;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v2, v4}, Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_14

    :cond_32
    const-string v0, "feedbackViewInitialized"

    .line 251
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    .line 254
    :cond_3a
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 289
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    if-eqz v0, :cond_9

    .line 290
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->detach()V

    .line 293
    :cond_9
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    return-object p0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 262
    sget v0, Lnet/hockeyapp/android/R$id;->wrapper_attachments:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentListView;

    const-string v1, "attachments"

    .line 264
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentListView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "feedbackViewInitialized"

    .line 265
    iget-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mFeedbackViewInitialized:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "inSendFeedback"

    .line 266
    iget-boolean v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->mInSendFeedback:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSendFeedbackResult(Z)V
    .registers 2

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 275
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    if-eqz v0, :cond_c

    .line 276
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->mSendFeedbackTask:Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->detach()V

    :cond_c
    return-void
.end method
