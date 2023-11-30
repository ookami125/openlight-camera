.class public final synthetic Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$ZHpO1bcKevjhZLQ3h_puhfWI2zE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$ZHpO1bcKevjhZLQ3h_puhfWI2zE;->f$0:Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$ZHpO1bcKevjhZLQ3h_puhfWI2zE;->f$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->lambda$setToStartPosition$5(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method
