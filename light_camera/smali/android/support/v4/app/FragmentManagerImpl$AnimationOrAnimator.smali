.class Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/Animation;

.field public final animator:Landroid/animation/Animator;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    .line 3878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3879
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 3880
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz p1, :cond_b

    return-void

    .line 3882
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animator cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;Landroid/support/v4/app/FragmentManagerImpl$1;)V
    .registers 3

    .line 3866
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .registers 3

    .line 3870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3871
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    .line 3872
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz p1, :cond_b

    return-void

    .line 3874
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animation cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;Landroid/support/v4/app/FragmentManagerImpl$1;)V
    .registers 3

    .line 3866
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
