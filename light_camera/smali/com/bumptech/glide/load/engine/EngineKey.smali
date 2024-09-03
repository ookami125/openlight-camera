.class Lcom/bumptech/glide/load/engine/EngineKey;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final EMPTY_LOG_STRING:Ljava/lang/String; = ""


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final decoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final encoder:Lcom/bumptech/glide/load/ResourceEncoder;

.field private hashCode:I

.field private final height:I

.field private final id:Ljava/lang/String;

.field private originalKey:Lcom/bumptech/glide/load/Key;

.field private final signature:Lcom/bumptech/glide/load/Key;

.field private final sourceEncoder:Lcom/bumptech/glide/load/Encoder;

.field private stringKey:Ljava/lang/String;

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

.field private final transformation:Lcom/bumptech/glide/load/Transformation;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V
    .registers 11

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 36
    iput p3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 37
    iput p4, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 38
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 39
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 40
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 41
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 42
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 43
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_130

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_130

    .line 62
    :cond_13
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineKey;

    .line 64
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 66
    :cond_20
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 68
    :cond_2b
    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    iget v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    if-eq v2, v3, :cond_32

    return v1

    .line 70
    :cond_32
    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    iget v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    if-eq v2, v3, :cond_39

    return v1

    .line 72
    :cond_39
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v2, :cond_3f

    move v2, v0

    goto :goto_40

    :cond_3f
    move v2, v1

    :goto_40
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v3, :cond_46

    move v3, v0

    goto :goto_47

    :cond_46
    move v3, v1

    :goto_47
    xor-int/2addr v2, v3

    if-eqz v2, :cond_4b

    return v1

    .line 74
    :cond_4b
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    return v1

    .line 76
    :cond_62
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v2, :cond_68

    move v2, v0

    goto :goto_69

    :cond_68
    move v2, v1

    :goto_69
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_6f

    move v3, v0

    goto :goto_70

    :cond_6f
    move v3, v1

    :goto_70
    xor-int/2addr v2, v3

    if-eqz v2, :cond_74

    return v1

    .line 78
    :cond_74
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    return v1

    .line 80
    :cond_8b
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v2, :cond_91

    move v2, v0

    goto :goto_92

    :cond_91
    move v2, v1

    :goto_92
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_98

    move v3, v0

    goto :goto_99

    :cond_98
    move v3, v1

    :goto_99
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9d

    return v1

    .line 82
    :cond_9d
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b4

    return v1

    .line 84
    :cond_b4
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v2, :cond_ba

    move v2, v0

    goto :goto_bb

    :cond_ba
    move v2, v1

    :goto_bb
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v3, :cond_c1

    move v3, v0

    goto :goto_c2

    :cond_c1
    move v3, v1

    :goto_c2
    xor-int/2addr v2, v3

    if-eqz v2, :cond_c6

    return v1

    .line 86
    :cond_c6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v2, :cond_dd

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    return v1

    .line 88
    :cond_dd
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v2, :cond_e3

    move v2, v0

    goto :goto_e4

    :cond_e3
    move v2, v1

    :goto_e4
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v3, :cond_ea

    move v3, v0

    goto :goto_eb

    :cond_ea
    move v3, v1

    :goto_eb
    xor-int/2addr v2, v3

    if-eqz v2, :cond_ef

    return v1

    .line 90
    :cond_ef
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    return v1

    .line 92
    :cond_106
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v2, :cond_10c

    move v2, v0

    goto :goto_10d

    :cond_10c
    move v2, v1

    :goto_10d
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v3, :cond_113

    move v3, v0

    goto :goto_114

    :cond_113
    move v3, v1

    :goto_114
    xor-int/2addr v2, v3

    if-eqz v2, :cond_118

    return v1

    .line 94
    :cond_118
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v2, :cond_12f

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {p0}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {p1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12f

    return v1

    :cond_12f
    return v0

    :cond_130
    :goto_130
    return v1
.end method

.method public getOriginalKey()Lcom/bumptech/glide/load/Key;
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    if-nez v0, :cond_f

    .line 48
    new-instance v0, Lcom/bumptech/glide/load/engine/OriginalKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/OriginalKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    .line 50
    :cond_f
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 102
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    if-nez v0, :cond_b4

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 104
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 106
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 107
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 108
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 109
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6e

    :cond_6d
    move v1, v2

    :goto_6e
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 110
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_85

    :cond_84
    move v1, v2

    :goto_85
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 111
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9c

    :cond_9b
    move v1, v2

    :goto_9c
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 112
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_b1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 114
    :cond_b4
    iget p0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    if-nez v0, :cond_d6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "+["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_48

    :cond_46
    const-string v3, ""

    :goto_48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_61

    :cond_5f
    const-string v3, ""

    :goto_61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7a

    :cond_78
    const-string v3, ""

    :goto_7a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v3, :cond_91

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_93

    :cond_91
    const-string v3, ""

    :goto_93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v3, :cond_aa

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_ac

    :cond_aa
    const-string v3, ""

    :goto_ac
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_c5

    :cond_c3
    const-string v1, ""

    :goto_c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    .line 156
    :cond_d6
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 161
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 166
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_34
    const-string v0, ""

    :goto_36
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_4a
    const-string v0, ""

    :goto_4c
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_60
    const-string v0, ""

    :goto_62
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_76
    const-string v0, ""

    :goto_78
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_8c

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {p0}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_8e

    :cond_8c
    const-string p0, ""

    :goto_8e
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
