.class public final Lcom/google/gson/internal/LazilyParsedNumber;
.super Ljava/lang/Number;
.source "LazilyParsedNumber.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .line 63
    iget-object p0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 90
    :cond_4
    instance-of v1, p1, Lcom/google/gson/internal/LazilyParsedNumber;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 91
    check-cast p1, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 92
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    if-eq v1, v3, :cond_1d

    iget-object p0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    return v2
.end method

.method public floatValue()F
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public intValue()I
    .registers 3

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 40
    :catch_7
    :try_start_7
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_d} :catch_f

    long-to-int p0, v0

    return p0

    .line 42
    :catch_f
    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0
.end method

.method public longValue()J
    .registers 3

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 52
    :catch_7
    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    return-object p0
.end method
