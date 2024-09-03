.class public final enum Lltpb/ViewPreferences$Orientation;
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
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$Orientation$ProtoAdapter_Orientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/ViewPreferences$Orientation;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/ViewPreferences$Orientation;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences$Orientation;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ORIENTATION_HFLIP:Lltpb/ViewPreferences$Orientation;

.field public static final enum ORIENTATION_NORMAL:Lltpb/ViewPreferences$Orientation;

.field public static final enum ORIENTATION_ROT180:Lltpb/ViewPreferences$Orientation;

.field public static final enum ORIENTATION_ROT90_CCW:Lltpb/ViewPreferences$Orientation;

.field public static final enum ORIENTATION_ROT90_CCW_VFLIP:Lltpb/ViewPreferences$Orientation;

.field public static final enum ORIENTATION_ROT90_CW:Lltpb/ViewPreferences$Orientation;

.field public static final enum ORIENTATION_ROT90_CW_VFLIP:Lltpb/ViewPreferences$Orientation;

.field public static final enum ORIENTATION_VFLIP:Lltpb/ViewPreferences$Orientation;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 728
    new-instance v0, Lltpb/ViewPreferences$Orientation;

    const-string v1, "ORIENTATION_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/ViewPreferences$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_NORMAL:Lltpb/ViewPreferences$Orientation;

    .line 730
    new-instance v0, Lltpb/ViewPreferences$Orientation;

    const-string v1, "ORIENTATION_ROT90_CW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lltpb/ViewPreferences$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CW:Lltpb/ViewPreferences$Orientation;

    .line 732
    new-instance v0, Lltpb/ViewPreferences$Orientation;

    const-string v1, "ORIENTATION_ROT90_CCW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lltpb/ViewPreferences$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CCW:Lltpb/ViewPreferences$Orientation;

    .line 734
    new-instance v0, Lltpb/ViewPreferences$Orientation;

    const-string v1, "ORIENTATION_ROT90_CW_VFLIP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lltpb/ViewPreferences$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CW_VFLIP:Lltpb/ViewPreferences$Orientation;

    .line 736
    new-instance v0, Lltpb/ViewPreferences$Orientation;

    const-string v1, "ORIENTATION_ROT90_CCW_VFLIP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lltpb/ViewPreferences$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CCW_VFLIP:Lltpb/ViewPreferences$Orientation;

    .line 738
    new-instance v0, Lltpb/ViewPreferences$Orientation;

    const-string v1, "ORIENTATION_VFLIP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lltpb/ViewPreferences$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_VFLIP:Lltpb/ViewPreferences$Orientation;

    .line 740
    new-instance v0, Lltpb/ViewPreferences$Orientation;

    const-string v1, "ORIENTATION_HFLIP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lltpb/ViewPreferences$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_HFLIP:Lltpb/ViewPreferences$Orientation;

    .line 742
    new-instance v0, Lltpb/ViewPreferences$Orientation;

    const-string v1, "ORIENTATION_ROT180"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lltpb/ViewPreferences$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT180:Lltpb/ViewPreferences$Orientation;

    const/16 v0, 0x8

    .line 727
    new-array v0, v0, [Lltpb/ViewPreferences$Orientation;

    sget-object v1, Lltpb/ViewPreferences$Orientation;->ORIENTATION_NORMAL:Lltpb/ViewPreferences$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CW:Lltpb/ViewPreferences$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CCW:Lltpb/ViewPreferences$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CW_VFLIP:Lltpb/ViewPreferences$Orientation;

    aput-object v1, v0, v5

    sget-object v1, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CCW_VFLIP:Lltpb/ViewPreferences$Orientation;

    aput-object v1, v0, v6

    sget-object v1, Lltpb/ViewPreferences$Orientation;->ORIENTATION_VFLIP:Lltpb/ViewPreferences$Orientation;

    aput-object v1, v0, v7

    sget-object v1, Lltpb/ViewPreferences$Orientation;->ORIENTATION_HFLIP:Lltpb/ViewPreferences$Orientation;

    aput-object v1, v0, v8

    sget-object v1, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT180:Lltpb/ViewPreferences$Orientation;

    aput-object v1, v0, v9

    sput-object v0, Lltpb/ViewPreferences$Orientation;->$VALUES:[Lltpb/ViewPreferences$Orientation;

    .line 744
    new-instance v0, Lltpb/ViewPreferences$Orientation$ProtoAdapter_Orientation;

    invoke-direct {v0}, Lltpb/ViewPreferences$Orientation$ProtoAdapter_Orientation;-><init>()V

    sput-object v0, Lltpb/ViewPreferences$Orientation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 748
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 749
    iput p3, p0, Lltpb/ViewPreferences$Orientation;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/ViewPreferences$Orientation;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    return-object p0

    .line 764
    :pswitch_5
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT180:Lltpb/ViewPreferences$Orientation;

    return-object p0

    .line 763
    :pswitch_8
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_HFLIP:Lltpb/ViewPreferences$Orientation;

    return-object p0

    .line 762
    :pswitch_b
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_VFLIP:Lltpb/ViewPreferences$Orientation;

    return-object p0

    .line 761
    :pswitch_e
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CCW_VFLIP:Lltpb/ViewPreferences$Orientation;

    return-object p0

    .line 760
    :pswitch_11
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CW_VFLIP:Lltpb/ViewPreferences$Orientation;

    return-object p0

    .line 759
    :pswitch_14
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CCW:Lltpb/ViewPreferences$Orientation;

    return-object p0

    .line 758
    :pswitch_17
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CW:Lltpb/ViewPreferences$Orientation;

    return-object p0

    .line 757
    :pswitch_1a
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_NORMAL:Lltpb/ViewPreferences$Orientation;

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lltpb/ViewPreferences$Orientation;
    .registers 2

    .line 727
    const-class v0, Lltpb/ViewPreferences$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/ViewPreferences$Orientation;

    return-object p0
.end method

.method public static values()[Lltpb/ViewPreferences$Orientation;
    .registers 1

    .line 727
    sget-object v0, Lltpb/ViewPreferences$Orientation;->$VALUES:[Lltpb/ViewPreferences$Orientation;

    invoke-virtual {v0}, [Lltpb/ViewPreferences$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/ViewPreferences$Orientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 771
    iget p0, p0, Lltpb/ViewPreferences$Orientation;->value:I

    return p0
.end method
