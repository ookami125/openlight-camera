.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;
.super Ljava/lang/Object;
.source "AttachmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadJob"
.end annotation


# instance fields
.field private final attachmentView:Lnet/hockeyapp/android/views/AttachmentView;

.field private final feedbackAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

.field private remainingRetries:I

.field private success:Z


# direct methods
.method private constructor <init>(Lnet/hockeyapp/android/objects/FeedbackAttachment;Lnet/hockeyapp/android/views/AttachmentView;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->feedbackAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    .line 103
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->attachmentView:Lnet/hockeyapp/android/views/AttachmentView;

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->success:Z

    const/4 p1, 0x2

    .line 105
    iput p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->remainingRetries:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/objects/FeedbackAttachment;Lnet/hockeyapp/android/views/AttachmentView;Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;)V
    .registers 4

    .line 94
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;-><init>(Lnet/hockeyapp/android/objects/FeedbackAttachment;Lnet/hockeyapp/android/views/AttachmentView;)V

    return-void
.end method


# virtual methods
.method public consumeRetry()Z
    .registers 3

    .line 129
    iget v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->remainingRetries:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->remainingRetries:I

    if-gez v0, :cond_9

    const/4 v1, 0x0

    :cond_9
    return v1
.end method

.method public getAttachmentView()Lnet/hockeyapp/android/views/AttachmentView;
    .registers 1

    .line 113
    iget-object p0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->attachmentView:Lnet/hockeyapp/android/views/AttachmentView;

    return-object p0
.end method

.method public getFeedbackAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .registers 1

    .line 109
    iget-object p0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->feedbackAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    return-object p0
.end method

.method public hasRetry()Z
    .registers 1

    .line 125
    iget p0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->remainingRetries:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isSuccess()Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->success:Z

    return p0
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->success:Z

    return-void
.end method
