.class Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "PictureTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/timer/PictureTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/timer/PictureTimer;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/timer/PictureTimer;JJ)V
    .registers 6

    .line 163
    iput-object p1, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    .line 164
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .line 192
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    # getter for: Lopenlight/co/camera/view/timer/PictureTimer;->mOnTimerEventListener:Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;
    invoke-static {v0}, Lopenlight/co/camera/view/timer/PictureTimer;->access$300(Lopenlight/co/camera/view/timer/PictureTimer;)Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 193
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    # getter for: Lopenlight/co/camera/view/timer/PictureTimer;->mOnTimerEventListener:Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;
    invoke-static {v0}, Lopenlight/co/camera/view/timer/PictureTimer;->access$300(Lopenlight/co/camera/view/timer/PictureTimer;)Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;->onTimerComplete()V

    .line 195
    :cond_11
    iget-object v0, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    # getter for: Lopenlight/co/camera/view/timer/PictureTimer;->mTickCounter:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lopenlight/co/camera/view/timer/PictureTimer;->access$400(Lopenlight/co/camera/view/timer/PictureTimer;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 196
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    invoke-virtual {p0}, Lopenlight/co/camera/view/timer/PictureTimer;->closeAll()V

    return-void
.end method

.method public onTick(J)V
    .registers 7

    const-wide/16 v0, 0x3e7

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    .line 176
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 177
    # getter for: Lopenlight/co/camera/view/timer/PictureTimer;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/timer/PictureTimer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "millisUntilFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " text: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    # getter for: Lopenlight/co/camera/view/timer/PictureTimer;->mText:Ljava/lang/String;
    invoke-static {p1}, Lopenlight/co/camera/view/timer/PictureTimer;->access$100(Lopenlight/co/camera/view/timer/PictureTimer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_55

    .line 179
    iget-object p1, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    # setter for: Lopenlight/co/camera/view/timer/PictureTimer;->mText:Ljava/lang/String;
    invoke-static {p1, v0}, Lopenlight/co/camera/view/timer/PictureTimer;->access$102(Lopenlight/co/camera/view/timer/PictureTimer;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object p1, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    # getter for: Lopenlight/co/camera/view/timer/PictureTimer;->mTickerText:Landroid/widget/TextView;
    invoke-static {p1}, Lopenlight/co/camera/view/timer/PictureTimer;->access$200(Lopenlight/co/camera/view/timer/PictureTimer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p1, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    # getter for: Lopenlight/co/camera/view/timer/PictureTimer;->mOnTimerEventListener:Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;
    invoke-static {p1}, Lopenlight/co/camera/view/timer/PictureTimer;->access$300(Lopenlight/co/camera/view/timer/PictureTimer;)Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 182
    iget-object p0, p0, Lopenlight/co/camera/view/timer/PictureTimer$PictureCountDownTimer;->this$0:Lopenlight/co/camera/view/timer/PictureTimer;

    # getter for: Lopenlight/co/camera/view/timer/PictureTimer;->mOnTimerEventListener:Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;
    invoke-static {p0}, Lopenlight/co/camera/view/timer/PictureTimer;->access$300(Lopenlight/co/camera/view/timer/PictureTimer;)Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;->onTickListener()V

    :cond_55
    return-void
.end method
