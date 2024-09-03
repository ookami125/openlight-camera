.class Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AncillaryToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->animateAndRotateObject(Landroid/animation/ObjectAnimator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$2;->this$0:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 350
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 351
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$2;->this$0:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;

    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    return-void
.end method
