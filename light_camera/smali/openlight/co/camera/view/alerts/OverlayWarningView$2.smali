.class Lopenlight/co/camera/view/alerts/OverlayWarningView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OverlayWarningView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/alerts/OverlayWarningView;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView$2;->this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 144
    iget-object p1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView$2;->this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(I)V

    .line 147
    iget-object p0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView$2;->this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setAlpha(F)V

    return-void
.end method
