.class public final enum Lopenlight/co/camera/enums/FtuView;
.super Ljava/lang/Enum;
.source "FtuView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/FtuView;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/FtuView;

.field public static final enum EDIT_IMAGE:Lopenlight/co/camera/enums/FtuView;

.field public static final enum FINISH_SCREEN:Lopenlight/co/camera/enums/FtuView;

.field public static final enum FOCUS_FAILED:Lopenlight/co/camera/enums/FtuView;

.field public static final enum FOCUS_SCREEN:Lopenlight/co/camera/enums/FtuView;

.field public static final enum IMAGE_QUALITY:Lopenlight/co/camera/enums/FtuView;

.field public static final enum PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

.field private static final TAG:Ljava/lang/String;

.field public static final enum VIDEO_SCREEN:Lopenlight/co/camera/enums/FtuView;

.field public static final enum VIDEO_SCREEN_FINISH:Lopenlight/co/camera/enums/FtuView;

.field public static final enum VIDEO_SCREEN_LIMITATION:Lopenlight/co/camera/enums/FtuView;

.field public static final enum VIDEO_SCREEN_SPECS:Lopenlight/co/camera/enums/FtuView;

.field public static final enum WELCOME_SCREEN:Lopenlight/co/camera/enums/FtuView;

.field public static final enum WHEEL_SCREEN:Lopenlight/co/camera/enums/FtuView;

.field public static final enum ZOOM_SCREEN:Lopenlight/co/camera/enums/FtuView;


# instance fields
.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "WELCOME_SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->WELCOME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    .line 11
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "ZOOM_SCREEN"

    const v3, 0x7f0e0075

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->ZOOM_SCREEN:Lopenlight/co/camera/enums/FtuView;

    .line 12
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "PRIME_SCREEN"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    .line 13
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "WHEEL_SCREEN"

    const/4 v3, 0x3

    const v6, 0x7f0e0071

    invoke-direct {v0, v1, v3, v6}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->WHEEL_SCREEN:Lopenlight/co/camera/enums/FtuView;

    .line 14
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "FOCUS_SCREEN"

    const/4 v6, 0x4

    const v7, 0x7f0e0072

    invoke-direct {v0, v1, v6, v7}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->FOCUS_SCREEN:Lopenlight/co/camera/enums/FtuView;

    .line 15
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "FINISH_SCREEN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v2}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->FINISH_SCREEN:Lopenlight/co/camera/enums/FtuView;

    .line 16
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "EDIT_IMAGE"

    const/4 v8, 0x6

    const v9, 0x7f0e0070

    invoke-direct {v0, v1, v8, v9}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->EDIT_IMAGE:Lopenlight/co/camera/enums/FtuView;

    .line 17
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "IMAGE_QUALITY"

    const/4 v9, 0x7

    const v10, 0x7f0e0073

    invoke-direct {v0, v1, v9, v10}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->IMAGE_QUALITY:Lopenlight/co/camera/enums/FtuView;

    .line 18
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "FOCUS_FAILED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v2}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->FOCUS_FAILED:Lopenlight/co/camera/enums/FtuView;

    .line 19
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "VIDEO_SCREEN"

    const/16 v11, 0x9

    const v12, 0x7f0e0074

    invoke-direct {v0, v1, v11, v12}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN:Lopenlight/co/camera/enums/FtuView;

    .line 20
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "VIDEO_SCREEN_SPECS"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v12}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN_SPECS:Lopenlight/co/camera/enums/FtuView;

    .line 21
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "VIDEO_SCREEN_LIMITATION"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v12}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN_LIMITATION:Lopenlight/co/camera/enums/FtuView;

    .line 22
    new-instance v0, Lopenlight/co/camera/enums/FtuView;

    const-string v1, "VIDEO_SCREEN_FINISH"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v12}, Lopenlight/co/camera/enums/FtuView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN_FINISH:Lopenlight/co/camera/enums/FtuView;

    const/16 v0, 0xd

    .line 9
    new-array v0, v0, [Lopenlight/co/camera/enums/FtuView;

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->WELCOME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->ZOOM_SCREEN:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->WHEEL_SCREEN:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->FOCUS_SCREEN:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->FINISH_SCREEN:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->EDIT_IMAGE:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->IMAGE_QUALITY:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->FOCUS_FAILED:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN_SPECS:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v13

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN_LIMITATION:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v14

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN_FINISH:Lopenlight/co/camera/enums/FtuView;

    aput-object v1, v0, v15

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->$VALUES:[Lopenlight/co/camera/enums/FtuView;

    .line 26
    const-class v0, Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/enums/FtuView;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lopenlight/co/camera/enums/FtuView;->mResId:I

    return-void
.end method

.method public static getFtuLabelResourceIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {}, Lopenlight/co/camera/enums/FtuView;->values()[Lopenlight/co/camera/enums/FtuView;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 54
    invoke-virtual {v4}, Lopenlight/co/camera/enums/FtuView;->getResId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getFtuViewFromResId(I)Lopenlight/co/camera/enums/FtuView;
    .locals 5

    .line 42
    invoke-static {}, Lopenlight/co/camera/enums/FtuView;->values()[Lopenlight/co/camera/enums/FtuView;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 43
    invoke-virtual {v3}, Lopenlight/co/camera/enums/FtuView;->getResId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching Ftu view found for resource id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/FtuView;
    .locals 1

    .line 9
    const-class v0, Lopenlight/co/camera/enums/FtuView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/FtuView;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/FtuView;
    .locals 1

    .line 9
    sget-object v0, Lopenlight/co/camera/enums/FtuView;->$VALUES:[Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/FtuView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/FtuView;

    return-object v0
.end method


# virtual methods
.method public getNext()Lopenlight/co/camera/enums/FtuView;
    .locals 3

    .line 37
    sget-object v0, Lopenlight/co/camera/enums/FtuView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTU next ordinal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result v0

    invoke-static {}, Lopenlight/co/camera/enums/FtuView;->values()[Lopenlight/co/camera/enums/FtuView;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lopenlight/co/camera/enums/FtuView;->values()[Lopenlight/co/camera/enums/FtuView;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getResId()I
    .locals 0

    .line 33
    iget p0, p0, Lopenlight/co/camera/enums/FtuView;->mResId:I

    return p0
.end method
