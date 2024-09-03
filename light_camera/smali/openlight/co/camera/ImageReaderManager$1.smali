.class Lopenlight/co/camera/ImageReaderManager$1;
.super Ljava/lang/Object;
.source "ImageReaderManager.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/ImageReaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/ImageReaderManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/ImageReaderManager;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lopenlight/co/camera/ImageReaderManager$1;->this$0:Lopenlight/co/camera/ImageReaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 3

    .line 130
    # getter for: Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JPEG Image Available"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lopenlight/co/camera/ImageReaderManager$1;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;
    invoke-static {p1}, Lopenlight/co/camera/ImageReaderManager;->access$100(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->JPEG_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 132
    iget-object p1, p0, Lopenlight/co/camera/ImageReaderManager$1;->this$0:Lopenlight/co/camera/ImageReaderManager;

    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$1;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mJpegResultQueue:Ljava/util/TreeMap;
    invoke-static {v0}, Lopenlight/co/camera/ImageReaderManager;->access$200(Lopenlight/co/camera/ImageReaderManager;)Ljava/util/TreeMap;

    move-result-object v0

    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$1;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;
    invoke-static {p0}, Lopenlight/co/camera/ImageReaderManager;->access$300(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    move-result-object p0

    # invokes: Lopenlight/co/camera/ImageReaderManager;->dequeueAndSaveImage(Ljava/util/TreeMap;Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;)V
    invoke-static {p1, v0, p0}, Lopenlight/co/camera/ImageReaderManager;->access$400(Lopenlight/co/camera/ImageReaderManager;Ljava/util/TreeMap;Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;)V

    return-void
.end method
