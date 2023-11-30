.class public final enum Lltpb/ViewPreferences$HDRMode;
.super Ljava/lang/Enum;
.source "ViewPreferences.java"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HDRMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$HDRMode$ProtoAdapter_HDRMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/ViewPreferences$HDRMode;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/ViewPreferences$HDRMode;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences$HDRMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum HDR_MODE_DEFAULT:Lltpb/ViewPreferences$HDRMode;

.field public static final enum HDR_MODE_NATURAL:Lltpb/ViewPreferences$HDRMode;

.field public static final enum HDR_MODE_NONE:Lltpb/ViewPreferences$HDRMode;

.field public static final enum HDR_MODE_SURREAL:Lltpb/ViewPreferences$HDRMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 507
    new-instance v0, Lltpb/ViewPreferences$HDRMode;

    const-string v1, "HDR_MODE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/ViewPreferences$HDRMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_NONE:Lltpb/ViewPreferences$HDRMode;

    .line 509
    new-instance v0, Lltpb/ViewPreferences$HDRMode;

    const-string v1, "HDR_MODE_DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lltpb/ViewPreferences$HDRMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_DEFAULT:Lltpb/ViewPreferences$HDRMode;

    .line 511
    new-instance v0, Lltpb/ViewPreferences$HDRMode;

    const-string v1, "HDR_MODE_NATURAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lltpb/ViewPreferences$HDRMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_NATURAL:Lltpb/ViewPreferences$HDRMode;

    .line 513
    new-instance v0, Lltpb/ViewPreferences$HDRMode;

    const-string v1, "HDR_MODE_SURREAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lltpb/ViewPreferences$HDRMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_SURREAL:Lltpb/ViewPreferences$HDRMode;

    const/4 v0, 0x4

    .line 503
    new-array v0, v0, [Lltpb/ViewPreferences$HDRMode;

    sget-object v1, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_NONE:Lltpb/ViewPreferences$HDRMode;

    aput-object v1, v0, v2

    sget-object v1, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_DEFAULT:Lltpb/ViewPreferences$HDRMode;

    aput-object v1, v0, v3

    sget-object v1, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_NATURAL:Lltpb/ViewPreferences$HDRMode;

    aput-object v1, v0, v4

    sget-object v1, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_SURREAL:Lltpb/ViewPreferences$HDRMode;

    aput-object v1, v0, v5

    sput-object v0, Lltpb/ViewPreferences$HDRMode;->$VALUES:[Lltpb/ViewPreferences$HDRMode;

    .line 515
    new-instance v0, Lltpb/ViewPreferences$HDRMode$ProtoAdapter_HDRMode;

    invoke-direct {v0}, Lltpb/ViewPreferences$HDRMode$ProtoAdapter_HDRMode;-><init>()V

    sput-object v0, Lltpb/ViewPreferences$HDRMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 519
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 520
    iput p3, p0, Lltpb/ViewPreferences$HDRMode;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/ViewPreferences$HDRMode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 531
    :pswitch_0
    sget-object p0, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_SURREAL:Lltpb/ViewPreferences$HDRMode;

    return-object p0

    .line 530
    :pswitch_1
    sget-object p0, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_NATURAL:Lltpb/ViewPreferences$HDRMode;

    return-object p0

    .line 529
    :pswitch_2
    sget-object p0, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_DEFAULT:Lltpb/ViewPreferences$HDRMode;

    return-object p0

    .line 528
    :pswitch_3
    sget-object p0, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_NONE:Lltpb/ViewPreferences$HDRMode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lltpb/ViewPreferences$HDRMode;
    .locals 1

    .line 503
    const-class v0, Lltpb/ViewPreferences$HDRMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/ViewPreferences$HDRMode;

    return-object p0
.end method

.method public static values()[Lltpb/ViewPreferences$HDRMode;
    .locals 1

    .line 503
    sget-object v0, Lltpb/ViewPreferences$HDRMode;->$VALUES:[Lltpb/ViewPreferences$HDRMode;

    invoke-virtual {v0}, [Lltpb/ViewPreferences$HDRMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/ViewPreferences$HDRMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 538
    iget p0, p0, Lltpb/ViewPreferences$HDRMode;->value:I

    return p0
.end method
