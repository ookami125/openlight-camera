.class Lopenlight/co/camera/view/focus/CrossHair$3;
.super Ljava/lang/Object;
.source "CrossHair.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/focus/CrossHair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/focus/CrossHair;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/focus/CrossHair;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$3;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 167
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$3;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # getter for: Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
    invoke-static {p1}, Lopenlight/co/camera/view/focus/CrossHair;->access$200(Lopenlight/co/camera/view/focus/CrossHair;)Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFocusLocked()Z

    move-result p1

    if-nez p1, :cond_21

    .line 168
    # getter for: Lopenlight/co/camera/view/focus/CrossHair;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/focus/CrossHair;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remove cross hair delayed msg"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$3;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # getter for: Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairStatusHandler:Landroid/os/Handler;
    invoke-static {p0}, Lopenlight/co/camera/view/focus/CrossHair;->access$300(Lopenlight/co/camera/view/focus/CrossHair;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_21
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
