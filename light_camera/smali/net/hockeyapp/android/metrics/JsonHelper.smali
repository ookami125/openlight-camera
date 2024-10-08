.class public final Lnet/hockeyapp/android/metrics/JsonHelper;
.super Ljava/lang/Object;
.source "JsonHelper.java"


# static fields
.field private static final CONTROL_CHARACTERS:[Ljava/lang/String;

.field private static final CONTROL_CHARACTER_RANGE:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x80

    .line 21
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_22

    .line 25
    sget-object v2, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const-string v3, "\\u%04X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 29
    :cond_22
    sget-object v0, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 30
    sget-object v0, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 31
    sget-object v0, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 32
    sget-object v0, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 33
    sget-object v0, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 34
    sget-object v0, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 35
    sget-object v0, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(C)Ljava/lang/String;
    .registers 1

    .line 104
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Double;)Ljava/lang/String;
    .registers 3

    .line 124
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Float;)Ljava/lang/String;
    .registers 1

    .line 114
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Long;)Ljava/lang/String;
    .registers 3

    .line 94
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 146
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "\"\""

    return-object p0

    .line 149
    :cond_e
    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->escapeJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Z)Ljava/lang/String;
    .registers 1

    .line 134
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static escapeJSON(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 53
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_27

    .line 56
    sget-object v3, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_23

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 60
    :cond_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_27
    const/16 v3, 0x2028

    if-ne v2, v3, :cond_31

    const-string v2, "\\u2028"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_31
    const/16 v3, 0x2029

    if-ne v2, v3, :cond_3b

    const-string v2, "\\u2029"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 69
    :cond_3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_41
    const-string p0, "\""

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_85

    .line 175
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_85

    .line 178
    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "{"

    .line 183
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, ":"

    .line 188
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 189
    invoke-static {p0, v2}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeItem(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 191
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    .line 194
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, ":"

    .line 196
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 198
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    invoke-static {p0, v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeItem(Ljava/io/Writer;Ljava/lang/Object;)V

    goto :goto_48

    :cond_7f
    const-string p1, "}"

    .line 202
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8a

    :cond_85
    :goto_85
    const-string p1, "null"

    .line 176
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method private static writeItem(Ljava/io/Writer;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5f

    .line 246
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 247
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_64

    .line 248
    :cond_10
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1e

    .line 249
    check-cast p1, Ljava/lang/Double;

    invoke-static {p1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_64

    .line 250
    :cond_1e
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    .line 251
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_64

    .line 252
    :cond_2c
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3a

    .line 253
    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_64

    .line 254
    :cond_3a
    instance-of v0, p1, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;

    if-eqz v0, :cond_44

    .line 255
    check-cast p1, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;

    invoke-interface {p1, p0}, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;->serialize(Ljava/io/Writer;)V

    goto :goto_64

    .line 257
    :cond_44
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot serialize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    const-string p1, "null"

    .line 260
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method public static writeJsonSerializable(Ljava/io/Writer;Lnet/hockeyapp/android/metrics/model/IJsonSerializable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 163
    invoke-interface {p1, p0}, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;->serialize(Ljava/io/Writer;)V

    :cond_5
    return-void
.end method

.method public static writeList(Ljava/io/Writer;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/hockeyapp/android/metrics/model/IJsonSerializable;",
            ">(",
            "Ljava/io/Writer;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3c

    .line 215
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3c

    .line 218
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 219
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "["

    .line 220
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 222
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;

    .line 223
    invoke-interface {v0, p0}, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;->serialize(Ljava/io/Writer;)V

    .line 225
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 226
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;

    const-string v1, ","

    .line 227
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 228
    invoke-interface {v0, p0}, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;->serialize(Ljava/io/Writer;)V

    goto :goto_21

    :cond_36
    const-string p1, "]"

    .line 231
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_41

    :cond_3c
    :goto_3c
    const-string p1, "null"

    .line 216
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method
