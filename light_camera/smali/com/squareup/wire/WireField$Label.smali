.class public final enum Lcom/squareup/wire/WireField$Label;
.super Ljava/lang/Enum;
.source "WireField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/WireField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/wire/WireField$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/WireField$Label;

.field public static final enum ONE_OF:Lcom/squareup/wire/WireField$Label;

.field public static final enum OPTIONAL:Lcom/squareup/wire/WireField$Label;

.field public static final enum PACKED:Lcom/squareup/wire/WireField$Label;

.field public static final enum REPEATED:Lcom/squareup/wire/WireField$Label;

.field public static final enum REQUIRED:Lcom/squareup/wire/WireField$Label;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 62
    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;

    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "OPTIONAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->OPTIONAL:Lcom/squareup/wire/WireField$Label;

    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "REPEATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;

    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "ONE_OF"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->ONE_OF:Lcom/squareup/wire/WireField$Label;

    .line 64
    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "PACKED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;

    const/4 v0, 0x5

    .line 61
    new-array v0, v0, [Lcom/squareup/wire/WireField$Label;

    sget-object v1, Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/WireField$Label;->OPTIONAL:Lcom/squareup/wire/WireField$Label;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/wire/WireField$Label;->ONE_OF:Lcom/squareup/wire/WireField$Label;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;

    aput-object v1, v0, v6

    sput-object v0, Lcom/squareup/wire/WireField$Label;->$VALUES:[Lcom/squareup/wire/WireField$Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/WireField$Label;
    .registers 2

    .line 61
    const-class v0, Lcom/squareup/wire/WireField$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/WireField$Label;

    return-object p0
.end method

.method public static values()[Lcom/squareup/wire/WireField$Label;
    .registers 1

    .line 61
    sget-object v0, Lcom/squareup/wire/WireField$Label;->$VALUES:[Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v0}, [Lcom/squareup/wire/WireField$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/WireField$Label;

    return-object v0
.end method


# virtual methods
.method isOneOf()Z
    .registers 2

    .line 75
    sget-object v0, Lcom/squareup/wire/WireField$Label;->ONE_OF:Lcom/squareup/wire/WireField$Label;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method isPacked()Z
    .registers 2

    .line 71
    sget-object v0, Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method isRepeated()Z
    .registers 2

    .line 67
    sget-object v0, Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method
