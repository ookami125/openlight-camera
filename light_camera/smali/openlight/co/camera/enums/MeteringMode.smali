.class public final enum Lopenlight/co/camera/enums/MeteringMode;
.super Ljava/lang/Enum;
.source "MeteringMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/MeteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/MeteringMode;

.field public static final enum CENTER:Lopenlight/co/camera/enums/MeteringMode;

.field public static final enum DEFAULT:Lopenlight/co/camera/enums/MeteringMode;

.field private static final sTagToMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lopenlight/co/camera/enums/MeteringMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMeteringIcon:I

.field private final mMeteringSelectedIcon:I

.field private final mMeteringTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v6, Lopenlight/co/camera/enums/MeteringMode;

    const-string v1, "DEFAULT"

    const-string v3, "touch-weighted"

    const/4 v2, 0x0

    const v4, 0x7f080113

    const v5, 0x7f080114

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/enums/MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lopenlight/co/camera/enums/MeteringMode;->DEFAULT:Lopenlight/co/camera/enums/MeteringMode;

    .line 12
    new-instance v0, Lopenlight/co/camera/enums/MeteringMode;

    const-string v8, "CENTER"

    const-string v10, "center-weighted"

    const/4 v9, 0x1

    const v11, 0x7f08010f

    const v12, 0x7f080110

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lopenlight/co/camera/enums/MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/MeteringMode;->CENTER:Lopenlight/co/camera/enums/MeteringMode;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lopenlight/co/camera/enums/MeteringMode;

    sget-object v1, Lopenlight/co/camera/enums/MeteringMode;->DEFAULT:Lopenlight/co/camera/enums/MeteringMode;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/MeteringMode;->CENTER:Lopenlight/co/camera/enums/MeteringMode;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/enums/MeteringMode;->$VALUES:[Lopenlight/co/camera/enums/MeteringMode;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lopenlight/co/camera/enums/MeteringMode;->sTagToMode:Ljava/util/HashMap;

    .line 19
    invoke-static {}, Lopenlight/co/camera/enums/MeteringMode;->values()[Lopenlight/co/camera/enums/MeteringMode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 20
    sget-object v4, Lopenlight/co/camera/enums/MeteringMode;->sTagToMode:Ljava/util/HashMap;

    iget-object v5, v3, Lopenlight/co/camera/enums/MeteringMode;->mMeteringTag:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lopenlight/co/camera/enums/MeteringMode;->mMeteringTag:Ljava/lang/String;

    .line 30
    iput p4, p0, Lopenlight/co/camera/enums/MeteringMode;->mMeteringIcon:I

    .line 31
    iput p5, p0, Lopenlight/co/camera/enums/MeteringMode;->mMeteringSelectedIcon:I

    return-void
.end method

.method public static forTag(Ljava/lang/String;)Lopenlight/co/camera/enums/MeteringMode;
    .locals 1

    .line 48
    sget-object v0, Lopenlight/co/camera/enums/MeteringMode;->sTagToMode:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/MeteringMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/MeteringMode;
    .locals 1

    .line 8
    const-class v0, Lopenlight/co/camera/enums/MeteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/MeteringMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/MeteringMode;
    .locals 1

    .line 8
    sget-object v0, Lopenlight/co/camera/enums/MeteringMode;->$VALUES:[Lopenlight/co/camera/enums/MeteringMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/MeteringMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/MeteringMode;

    return-object v0
.end method


# virtual methods
.method public getMeteringIcon()I
    .locals 0

    .line 35
    iget p0, p0, Lopenlight/co/camera/enums/MeteringMode;->mMeteringIcon:I

    return p0
.end method

.method public getMeteringSelectedIcon()I
    .locals 0

    .line 39
    iget p0, p0, Lopenlight/co/camera/enums/MeteringMode;->mMeteringSelectedIcon:I

    return p0
.end method
