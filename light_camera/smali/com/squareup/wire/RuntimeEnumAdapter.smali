.class final Lcom/squareup/wire/RuntimeEnumAdapter;
.super Lcom/squareup/wire/EnumAdapter;
.source "RuntimeEnumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/squareup/wire/WireEnum;",
        ">",
        "Lcom/squareup/wire/EnumAdapter<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private fromValueMethod:Ljava/lang/reflect/Method;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    .line 30
    iput-object p1, p0, Lcom/squareup/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    return-void
.end method

.method private getFromValueMethod()Ljava/lang/reflect/Method;
    .registers 6

    .line 34
    iget-object v0, p0, Lcom/squareup/wire/RuntimeEnumAdapter;->fromValueMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    return-object v0

    .line 39
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/squareup/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    const-string v1, "fromValue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/RuntimeEnumAdapter;->fromValueMethod:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception p0

    .line 41
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 57
    instance-of v0, p1, Lcom/squareup/wire/RuntimeEnumAdapter;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/squareup/wire/RuntimeEnumAdapter;

    iget-object p1, p1, Lcom/squareup/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    iget-object p0, p0, Lcom/squareup/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method protected fromValue(I)Lcom/squareup/wire/WireEnum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/wire/RuntimeEnumAdapter;->getFromValueMethod()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/WireEnum;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public hashCode()I
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/squareup/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
