.class public final enum Lopenlight/co/camera/enums/VideoQualityMode;
.super Ljava/lang/Enum;
.source "VideoQualityMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/VideoQualityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/VideoQualityMode;

.field public static final DEFAULT:Ljava/lang/String;

.field public static final enum QUALITY_1080P:Lopenlight/co/camera/enums/VideoQualityMode;

.field public static final enum QUALITY_2160P:Lopenlight/co/camera/enums/VideoQualityMode;

.field public static final enum QUALITY_480P:Lopenlight/co/camera/enums/VideoQualityMode;

.field public static final enum QUALITY_720P:Lopenlight/co/camera/enums/VideoQualityMode;

.field public static final enum QUALITY_HIGH:Lopenlight/co/camera/enums/VideoQualityMode;


# instance fields
.field private final mQualityProfile:I

.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 13
    new-instance v0, Lopenlight/co/camera/enums/VideoQualityMode;

    const-string v1, "QUALITY_480P"

    const/4 v2, 0x0

    const/4 v3, 0x4

    const v4, 0x7f0e002e

    invoke-direct {v0, v1, v2, v3, v4}, Lopenlight/co/camera/enums/VideoQualityMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_480P:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 15
    new-instance v0, Lopenlight/co/camera/enums/VideoQualityMode;

    const-string v1, "QUALITY_720P"

    const/4 v4, 0x5

    const/4 v5, 0x1

    const v6, 0x7f0e002f

    invoke-direct {v0, v1, v5, v4, v6}, Lopenlight/co/camera/enums/VideoQualityMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_720P:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 17
    new-instance v0, Lopenlight/co/camera/enums/VideoQualityMode;

    const-string v1, "QUALITY_1080P"

    const/4 v6, 0x2

    const/4 v7, 0x6

    const v8, 0x7f0e002c

    invoke-direct {v0, v1, v6, v7, v8}, Lopenlight/co/camera/enums/VideoQualityMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_1080P:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 19
    new-instance v0, Lopenlight/co/camera/enums/VideoQualityMode;

    const-string v1, "QUALITY_2160P"

    const/4 v7, 0x3

    const/16 v8, 0x8

    const v9, 0x7f0e002d

    invoke-direct {v0, v1, v7, v8, v9}, Lopenlight/co/camera/enums/VideoQualityMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_2160P:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 21
    new-instance v0, Lopenlight/co/camera/enums/VideoQualityMode;

    const-string v1, "QUALITY_HIGH"

    const v8, 0x7f0e0030

    invoke-direct {v0, v1, v3, v5, v8}, Lopenlight/co/camera/enums/VideoQualityMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_HIGH:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 11
    new-array v0, v4, [Lopenlight/co/camera/enums/VideoQualityMode;

    sget-object v1, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_480P:Lopenlight/co/camera/enums/VideoQualityMode;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_720P:Lopenlight/co/camera/enums/VideoQualityMode;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_1080P:Lopenlight/co/camera/enums/VideoQualityMode;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_2160P:Lopenlight/co/camera/enums/VideoQualityMode;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_HIGH:Lopenlight/co/camera/enums/VideoQualityMode;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->$VALUES:[Lopenlight/co/camera/enums/VideoQualityMode;

    .line 35
    sget-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_1080P:Lopenlight/co/camera/enums/VideoQualityMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->DEFAULT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lopenlight/co/camera/enums/VideoQualityMode;->mQualityProfile:I

    .line 31
    iput p4, p0, Lopenlight/co/camera/enums/VideoQualityMode;->mResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/VideoQualityMode;
    .locals 1

    .line 11
    const-class v0, Lopenlight/co/camera/enums/VideoQualityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/VideoQualityMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/VideoQualityMode;
    .locals 1

    .line 11
    sget-object v0, Lopenlight/co/camera/enums/VideoQualityMode;->$VALUES:[Lopenlight/co/camera/enums/VideoQualityMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/VideoQualityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/VideoQualityMode;

    return-object v0
.end method


# virtual methods
.method public getQualityProfile()I
    .locals 0

    .line 45
    iget p0, p0, Lopenlight/co/camera/enums/VideoQualityMode;->mQualityProfile:I

    return p0
.end method

.method public getResId()I
    .locals 0

    .line 53
    iget p0, p0, Lopenlight/co/camera/enums/VideoQualityMode;->mResId:I

    return p0
.end method
