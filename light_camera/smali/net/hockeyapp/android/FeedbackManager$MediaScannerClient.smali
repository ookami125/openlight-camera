.class Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
.super Ljava/lang/Object;
.source "FeedbackManager.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerClient"
.end annotation


# instance fields
.field private connection:Landroid/media/MediaScannerConnection;

.field private path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    .line 437
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->path:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManager$1;)V
    .registers 3

    .line 429
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 3

    .line 446
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_c

    .line 447
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->path:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    const-string v0, "Scanned path %s -> URI = %s"

    const/4 v1, 0x2

    .line 453
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;)V

    .line 454
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method

.method public setConnection(Landroid/media/MediaScannerConnection;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    return-void
.end method
