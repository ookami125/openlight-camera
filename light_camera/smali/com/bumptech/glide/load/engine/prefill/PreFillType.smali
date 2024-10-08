.class public final Lcom/bumptech/glide/load/engine/prefill/PreFillType;
.super Ljava/lang/Object;
.source "PreFillType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final config:Landroid/graphics/Bitmap$Config;

.field private final height:I

.field private final weight:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method constructor <init>(IILandroid/graphics/Bitmap$Config;I)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_e

    .line 34
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    .line 35
    iput p2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    .line 36
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    .line 37
    iput p4, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    return-void

    .line 31
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Config must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 70
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 71
    check-cast p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 72
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    if-ne v0, v2, :cond_20

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    if-ne v0, v2, :cond_20

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    if-ne p0, p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    :cond_21
    return v1
.end method

.method getConfig()Landroid/graphics/Bitmap$Config;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method getHeight()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    return p0
.end method

.method getWeight()I
    .registers 1

    .line 65
    iget p0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    return p0
.end method

.method getWidth()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 82
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget p0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreFillSize{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
