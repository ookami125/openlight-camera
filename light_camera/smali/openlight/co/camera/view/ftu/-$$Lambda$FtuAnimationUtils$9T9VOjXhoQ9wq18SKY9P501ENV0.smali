.class public final synthetic Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$9T9VOjXhoQ9wq18SKY9P501ENV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/ViewPropertyAnimator;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$9T9VOjXhoQ9wq18SKY9P501ENV0;->f$0:Landroid/view/ViewPropertyAnimator;

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$9T9VOjXhoQ9wq18SKY9P501ENV0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$9T9VOjXhoQ9wq18SKY9P501ENV0;->f$0:Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$9T9VOjXhoQ9wq18SKY9P501ENV0;->f$1:Landroid/view/View;

    invoke-static {v0, p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->lambda$null$11(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    return-void
.end method
