.class public final enum Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;
.super Ljava/lang/Enum;
.source "ProcessRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/openlight/lightprocessingservice/ProcessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessingProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

.field public static final enum CAMERA:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

.field public static final enum DESKTOP:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

.field public static final enum MOBILE:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

.field public static final enum THUMBNAIL:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;


# instance fields
.field private final mProfileNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 727
    new-instance v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    const-string v1, "DESKTOP"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->DESKTOP:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    .line 732
    new-instance v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    const-string v1, "CAMERA"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->CAMERA:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    .line 737
    new-instance v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v4, v5}, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->MOBILE:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    .line 742
    new-instance v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    const-string v1, "THUMBNAIL"

    invoke-direct {v0, v1, v2, v3}, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->THUMBNAIL:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    const/4 v0, 0x4

    .line 720
    new-array v0, v0, [Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->DESKTOP:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    aput-object v1, v0, v3

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->CAMERA:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    aput-object v1, v0, v5

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->MOBILE:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    aput-object v1, v0, v4

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->THUMBNAIL:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    aput-object v1, v0, v2

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->$VALUES:[Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 747
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 748
    iput p3, p0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->mProfileNumber:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;
    .registers 2

    .line 720
    const-class v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    return-object p0
.end method

.method public static values()[Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;
    .registers 1

    .line 720
    sget-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->$VALUES:[Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    invoke-virtual {v0}, [Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 1

    .line 752
    iget p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->mProfileNumber:I

    return p0
.end method
