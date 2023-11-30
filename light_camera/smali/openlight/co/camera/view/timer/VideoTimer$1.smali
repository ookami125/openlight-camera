.class Lopenlight/co/camera/view/timer/VideoTimer$1;
.super Ljava/lang/Object;
.source "VideoTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/timer/VideoTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/timer/VideoTimer;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/timer/VideoTimer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 58
    iget-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-static {v3}, Lopenlight/co/camera/view/timer/VideoTimer;->access$100(Lopenlight/co/camera/view/timer/VideoTimer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lopenlight/co/camera/view/timer/VideoTimer;->access$002(Lopenlight/co/camera/view/timer/VideoTimer;J)J

    .line 59
    iget-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    iget-object v1, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-static {v1}, Lopenlight/co/camera/view/timer/VideoTimer;->access$300(Lopenlight/co/camera/view/timer/VideoTimer;)J

    move-result-wide v1

    iget-object v3, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-static {v3}, Lopenlight/co/camera/view/timer/VideoTimer;->access$000(Lopenlight/co/camera/view/timer/VideoTimer;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lopenlight/co/camera/view/timer/VideoTimer;->access$202(Lopenlight/co/camera/view/timer/VideoTimer;J)J

    .line 60
    iget-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-static {v0}, Lopenlight/co/camera/view/timer/VideoTimer;->access$200(Lopenlight/co/camera/view/timer/VideoTimer;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 61
    div-int/lit8 v1, v0, 0x3c

    .line 62
    rem-int/lit8 v0, v0, 0x3c

    .line 63
    div-int/lit8 v2, v1, 0x3c

    .line 64
    rem-int/lit8 v1, v1, 0x3c

    .line 65
    iget-object v3, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-static {v3}, Lopenlight/co/camera/view/timer/VideoTimer;->access$400(Lopenlight/co/camera/view/timer/VideoTimer;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-static {v3}, Lopenlight/co/camera/view/timer/VideoTimer;->access$400(Lopenlight/co/camera/view/timer/VideoTimer;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%02d"

    new-array v5, v6, [Ljava/lang/Object;

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%02d"

    new-array v2, v6, [Ljava/lang/Object;

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/timer/VideoTimer$1;->this$0:Lopenlight/co/camera/view/timer/VideoTimer;

    invoke-static {v0}, Lopenlight/co/camera/view/timer/VideoTimer;->access$500(Lopenlight/co/camera/view/timer/VideoTimer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
