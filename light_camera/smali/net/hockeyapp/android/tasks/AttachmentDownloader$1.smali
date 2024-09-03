.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;
.super Landroid/os/Handler;
.source "AttachmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader;->downloadNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 72
    iget-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    # getter for: Lnet/hockeyapp/android/tasks/AttachmentDownloader;->queue:Ljava/util/Queue;
    invoke-static {p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$200(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    .line 73
    invoke-virtual {p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->consumeRetry()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 74
    new-instance v0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;-><init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    :cond_22
    iget-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    const/4 v0, 0x0

    # setter for: Lnet/hockeyapp/android/tasks/AttachmentDownloader;->downloadRunning:Z
    invoke-static {p1, v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$402(Lnet/hockeyapp/android/tasks/AttachmentDownloader;Z)Z

    .line 83
    iget-object p0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    # invokes: Lnet/hockeyapp/android/tasks/AttachmentDownloader;->downloadNext()V
    invoke-static {p0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$300(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)V

    return-void
.end method
