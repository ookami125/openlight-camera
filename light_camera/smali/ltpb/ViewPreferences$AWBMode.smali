.class public final enum Lltpb/ViewPreferences$AWBMode;
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
    name = "AWBMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$AWBMode$ProtoAdapter_AWBMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/ViewPreferences$AWBMode;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/ViewPreferences$AWBMode;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences$AWBMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum AWB_MODE_AUTO:Lltpb/ViewPreferences$AWBMode;

.field public static final enum AWB_MODE_CLOUDY:Lltpb/ViewPreferences$AWBMode;

.field public static final enum AWB_MODE_CUSTOM:Lltpb/ViewPreferences$AWBMode;

.field public static final enum AWB_MODE_DAYLIGHT:Lltpb/ViewPreferences$AWBMode;

.field public static final enum AWB_MODE_FLASH:Lltpb/ViewPreferences$AWBMode;

.field public static final enum AWB_MODE_FLUORESCENT:Lltpb/ViewPreferences$AWBMode;

.field public static final enum AWB_MODE_KELVIN:Lltpb/ViewPreferences$AWBMode;

.field public static final enum AWB_MODE_SHADE:Lltpb/ViewPreferences$AWBMode;

.field public static final enum AWB_MODE_TUNGSTEN:Lltpb/ViewPreferences$AWBMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 663
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_AUTO:Lltpb/ViewPreferences$AWBMode;

    .line 665
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_DAYLIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_DAYLIGHT:Lltpb/ViewPreferences$AWBMode;

    .line 667
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_SHADE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_SHADE:Lltpb/ViewPreferences$AWBMode;

    .line 669
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_CLOUDY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_CLOUDY:Lltpb/ViewPreferences$AWBMode;

    .line 671
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_TUNGSTEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_TUNGSTEN:Lltpb/ViewPreferences$AWBMode;

    .line 673
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_FLUORESCENT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_FLUORESCENT:Lltpb/ViewPreferences$AWBMode;

    .line 675
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_FLASH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_FLASH:Lltpb/ViewPreferences$AWBMode;

    .line 677
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_CUSTOM"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_CUSTOM:Lltpb/ViewPreferences$AWBMode;

    .line 682
    new-instance v0, Lltpb/ViewPreferences$AWBMode;

    const-string v1, "AWB_MODE_KELVIN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lltpb/ViewPreferences$AWBMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_KELVIN:Lltpb/ViewPreferences$AWBMode;

    const/16 v0, 0x9

    .line 662
    new-array v0, v0, [Lltpb/ViewPreferences$AWBMode;

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_AUTO:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v2

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_DAYLIGHT:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v3

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_SHADE:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v4

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_CLOUDY:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v5

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_TUNGSTEN:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v6

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_FLUORESCENT:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v7

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_FLASH:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v8

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_CUSTOM:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v9

    sget-object v1, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_KELVIN:Lltpb/ViewPreferences$AWBMode;

    aput-object v1, v0, v10

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->$VALUES:[Lltpb/ViewPreferences$AWBMode;

    .line 684
    new-instance v0, Lltpb/ViewPreferences$AWBMode$ProtoAdapter_AWBMode;

    invoke-direct {v0}, Lltpb/ViewPreferences$AWBMode$ProtoAdapter_AWBMode;-><init>()V

    sput-object v0, Lltpb/ViewPreferences$AWBMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 688
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 689
    iput p3, p0, Lltpb/ViewPreferences$AWBMode;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/ViewPreferences$AWBMode;
    .registers 1

    packed-switch p0, :pswitch_data_20

    const/4 p0, 0x0

    return-object p0

    .line 705
    :pswitch_5
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_KELVIN:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    .line 704
    :pswitch_8
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_CUSTOM:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    .line 703
    :pswitch_b
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_FLASH:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    .line 702
    :pswitch_e
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_FLUORESCENT:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    .line 701
    :pswitch_11
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_TUNGSTEN:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    .line 700
    :pswitch_14
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_CLOUDY:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    .line 699
    :pswitch_17
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_SHADE:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    .line 698
    :pswitch_1a
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_DAYLIGHT:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    .line 697
    :pswitch_1d
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_AUTO:Lltpb/ViewPreferences$AWBMode;

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
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

.method public static valueOf(Ljava/lang/String;)Lltpb/ViewPreferences$AWBMode;
    .registers 2

    .line 662
    const-class v0, Lltpb/ViewPreferences$AWBMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/ViewPreferences$AWBMode;

    return-object p0
.end method

.method public static values()[Lltpb/ViewPreferences$AWBMode;
    .registers 1

    .line 662
    sget-object v0, Lltpb/ViewPreferences$AWBMode;->$VALUES:[Lltpb/ViewPreferences$AWBMode;

    invoke-virtual {v0}, [Lltpb/ViewPreferences$AWBMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/ViewPreferences$AWBMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 712
    iget p0, p0, Lltpb/ViewPreferences$AWBMode;->value:I

    return p0
.end method
