.class Lcom/bumptech/glide/ListPreloader$PreloadTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/BaseTarget<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private photoHeight:I

.field private photoWidth:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/ListPreloader$1;)V
    .registers 2

    .line 301
    invoke-direct {p0}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
    .registers 2

    .line 301
    iput p1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    return p1
.end method

.method static synthetic access$202(Lcom/bumptech/glide/ListPreloader$PreloadTarget;I)I
    .registers 2

    .line 301
    iput p1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    return p1
.end method


# virtual methods
.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .line 313
    iget v0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    iget p0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    invoke-interface {p1, v0, p0}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
