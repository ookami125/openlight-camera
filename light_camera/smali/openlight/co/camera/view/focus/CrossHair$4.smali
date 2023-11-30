.class Lopenlight/co/camera/view/focus/CrossHair$4;
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
    .locals 0

    .line 188
    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$4;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 191
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$4;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->invalidate()V

    return-void
.end method
