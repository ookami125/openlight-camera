.class public abstract Lnet/hockeyapp/android/listeners/DownloadFileListener;
.super Ljava/lang/Object;
.source "DownloadFileListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFailed(Lnet/hockeyapp/android/tasks/DownloadFileTask;Ljava/lang/Boolean;)V
    .registers 3

    return-void
.end method

.method public downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .registers 2

    return-void
.end method
