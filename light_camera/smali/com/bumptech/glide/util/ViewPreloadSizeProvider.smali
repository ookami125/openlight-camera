.class public Lcom/bumptech/glide/util/ViewPreloadSizeProvider;
.super Ljava/lang/Object;
.source "ViewPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
        "TT;>;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private size:[I

.field private viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_6
    iget-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    iget-object p0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    array-length p0, p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public onSizeReady(II)V
    .registers 5

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 72
    :cond_9
    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    return-void

    :cond_11
    :goto_11
    return-void
.end method
