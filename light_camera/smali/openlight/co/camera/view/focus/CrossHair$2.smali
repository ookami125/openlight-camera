.class Lopenlight/co/camera/view/focus/CrossHair$2;
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
    .locals 0

    .line 137
    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$2;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$2;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-static {p0}, Lopenlight/co/camera/view/focus/CrossHair;->access$400(Lopenlight/co/camera/view/focus/CrossHair;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
