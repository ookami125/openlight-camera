.class public Lopenlight/co/camera/utils/GlideSetting;
.super Ljava/lang/Object;
.source "GlideSetting.java"

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .registers 7

    .line 19
    new-instance p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    const/high16 v0, 0x3200000

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    .line 22
    sget-object p0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/GlideBuilder;->setDecodeFormat(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/GlideBuilder;

    .line 24
    new-instance p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result p1

    .line 26
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result p0

    int-to-double v0, p1

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    int-to-double v0, p0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;

    .line 32
    new-instance p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(I)V

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V
    .registers 3

    return-void
.end method
