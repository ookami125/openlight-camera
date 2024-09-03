.class Lopenlight/co/camera/view/focus/CrossHair$5;
.super Ljava/lang/Object;
.source "CrossHair.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 200
    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$5;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 203
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair$5;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # getter for: Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
    invoke-static {v0}, Lopenlight/co/camera/view/focus/CrossHair;->access$200(Lopenlight/co/camera/view/focus/CrossHair;)Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getLastFocusTriggeredFace()Landroid/hardware/camera2/params/Face;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 204
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair$5;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # getter for: Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lopenlight/co/camera/view/focus/CrossHair;->access$600(Lopenlight/co/camera/view/focus/CrossHair;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_43

    .line 205
    :cond_24
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair$5;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # getter for: Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lopenlight/co/camera/view/focus/CrossHair;->access$700(Lopenlight/co/camera/view/focus/CrossHair;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 206
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair$5;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # getter for: Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lopenlight/co/camera/view/focus/CrossHair;->access$700(Lopenlight/co/camera/view/focus/CrossHair;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 208
    :cond_43
    :goto_43
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$5;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->invalidate()V

    return-void
.end method
