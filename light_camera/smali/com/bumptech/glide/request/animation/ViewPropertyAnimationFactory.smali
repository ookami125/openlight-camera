.class public Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "ViewPropertyAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_15

    if-nez p2, :cond_5

    goto :goto_15

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    if-nez p1, :cond_12

    .line 29
    new-instance p1, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    iget-object p2, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animator:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;-><init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V

    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    .line 32
    :cond_12
    iget-object p0, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    return-object p0

    .line 26
    :cond_15
    :goto_15
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object p0

    return-object p0
.end method
