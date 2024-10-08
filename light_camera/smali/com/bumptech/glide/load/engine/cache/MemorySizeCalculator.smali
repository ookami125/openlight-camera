.class public Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    }
.end annotation


# static fields
.field static final BITMAP_POOL_TARGET_SCREENS:I = 0x4

.field static final BYTES_PER_ARGB_8888_PIXEL:I = 0x4

.field static final LOW_MEMORY_MAX_SIZE_MULTIPLIER:F = 0.33f

.field static final MAX_SIZE_MULTIPLIER:F = 0.4f

.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemorySizeCalculator"


# instance fields
.field private final bitmapPoolSize:I

.field private final context:Landroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "activity"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 43
    invoke-static {p2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;)I

    move-result p1

    .line 45
    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v0

    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result p3

    mul-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 p3, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    add-int v1, v0, p3

    if-gt v1, p1, :cond_21

    .line 52
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 53
    iput p3, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    goto :goto_31

    :cond_21
    int-to-float p3, p1

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p3, v0

    .line 55
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-int/lit8 v0, p3, 0x2

    .line 56
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    mul-int/lit8 p3, p3, 0x4

    .line 57
    iput p3, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    :goto_31
    const-string p3, "MemorySizeCalculator"

    const/4 v0, 0x3

    .line 60
    invoke-static {p3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_95

    const-string p3, "MemorySizeCalculator"

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated memory cache size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pool size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " memory class limited? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, p1, :cond_66

    const/4 v1, 0x1

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    :goto_67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " max size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " memoryClass: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " isLowMemoryDevice: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    return-void
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;)I
    .registers 2

    .line 83
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 84
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result p0

    int-to-float v0, v0

    if-eqz p0, :cond_13

    const p0, 0x3ea8f5c3    # 0.33f

    goto :goto_16

    :cond_13
    const p0, 0x3ecccccd    # 0.4f

    :goto_16
    mul-float/2addr v0, p0

    .line 85
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 96
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    .line 98
    :cond_b
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private toMb(I)Ljava/lang/String;
    .registers 4

    .line 90
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBitmapPoolSize()I
    .registers 1

    .line 79
    iget p0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    return p0
.end method

.method public getMemoryCacheSize()I
    .registers 1

    .line 72
    iget p0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    return p0
.end method
