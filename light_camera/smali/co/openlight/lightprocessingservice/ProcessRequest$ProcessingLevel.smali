.class public final enum Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;
.super Ljava/lang/Enum;
.source "ProcessRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/openlight/lightprocessingservice/ProcessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessingLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

.field public static final enum ONE:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

.field public static final enum TWO:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

.field public static final enum ZERO:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;


# instance fields
.field private final mLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 763
    new-instance v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->ZERO:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    .line 764
    new-instance v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    const-string v1, "ONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->ONE:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    .line 768
    new-instance v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    const-string v1, "TWO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->TWO:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    const/4 v0, 0x3

    .line 759
    new-array v0, v0, [Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->ZERO:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    aput-object v1, v0, v2

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->ONE:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    aput-object v1, v0, v3

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->TWO:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    aput-object v1, v0, v4

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->$VALUES:[Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 772
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 773
    iput p3, p0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->mLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;
    .registers 2

    .line 759
    const-class v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    return-object p0
.end method

.method public static values()[Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;
    .registers 1

    .line 759
    sget-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->$VALUES:[Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    invoke-virtual {v0}, [Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 1

    .line 777
    iget p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->mLevel:I

    return p0
.end method
