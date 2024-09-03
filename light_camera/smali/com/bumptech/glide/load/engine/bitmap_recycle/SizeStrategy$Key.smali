.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private size:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I
    .registers 1

    .line 121
    iget p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 135
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 136
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 137
    iget p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    if-ne p0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    return v1
.end method

.method public hashCode()I
    .registers 1

    .line 144
    iget p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return p0
.end method

.method public init(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return-void
.end method

.method public offer()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 149
    iget p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    # invokes: Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->access$100(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
