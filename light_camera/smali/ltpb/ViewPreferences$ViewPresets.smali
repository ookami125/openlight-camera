.class public final enum Lltpb/ViewPreferences$ViewPresets;
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
    name = "ViewPresets"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$ViewPresets$ProtoAdapter_ViewPresets;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/ViewPreferences$ViewPresets;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/ViewPreferences$ViewPresets;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences$ViewPresets;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum VIEW_PRESET_FAITHFUL:Lltpb/ViewPreferences$ViewPresets;

.field public static final enum VIEW_PRESET_LANDSCAPE:Lltpb/ViewPreferences$ViewPresets;

.field public static final enum VIEW_PRESET_NATURAL:Lltpb/ViewPreferences$ViewPresets;

.field public static final enum VIEW_PRESET_NONE:Lltpb/ViewPreferences$ViewPresets;

.field public static final enum VIEW_PRESET_PORTRAIT:Lltpb/ViewPreferences$ViewPresets;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 557
    new-instance v0, Lltpb/ViewPreferences$ViewPresets;

    const-string v1, "VIEW_PRESET_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/ViewPreferences$ViewPresets;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_NONE:Lltpb/ViewPreferences$ViewPresets;

    .line 559
    new-instance v0, Lltpb/ViewPreferences$ViewPresets;

    const-string v1, "VIEW_PRESET_NATURAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lltpb/ViewPreferences$ViewPresets;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_NATURAL:Lltpb/ViewPreferences$ViewPresets;

    .line 561
    new-instance v0, Lltpb/ViewPreferences$ViewPresets;

    const-string v1, "VIEW_PRESET_FAITHFUL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lltpb/ViewPreferences$ViewPresets;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_FAITHFUL:Lltpb/ViewPreferences$ViewPresets;

    .line 563
    new-instance v0, Lltpb/ViewPreferences$ViewPresets;

    const-string v1, "VIEW_PRESET_LANDSCAPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lltpb/ViewPreferences$ViewPresets;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_LANDSCAPE:Lltpb/ViewPreferences$ViewPresets;

    .line 565
    new-instance v0, Lltpb/ViewPreferences$ViewPresets;

    const-string v1, "VIEW_PRESET_PORTRAIT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lltpb/ViewPreferences$ViewPresets;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_PORTRAIT:Lltpb/ViewPreferences$ViewPresets;

    const/4 v0, 0x5

    .line 553
    new-array v0, v0, [Lltpb/ViewPreferences$ViewPresets;

    sget-object v1, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_NONE:Lltpb/ViewPreferences$ViewPresets;

    aput-object v1, v0, v2

    sget-object v1, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_NATURAL:Lltpb/ViewPreferences$ViewPresets;

    aput-object v1, v0, v3

    sget-object v1, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_FAITHFUL:Lltpb/ViewPreferences$ViewPresets;

    aput-object v1, v0, v4

    sget-object v1, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_LANDSCAPE:Lltpb/ViewPreferences$ViewPresets;

    aput-object v1, v0, v5

    sget-object v1, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_PORTRAIT:Lltpb/ViewPreferences$ViewPresets;

    aput-object v1, v0, v6

    sput-object v0, Lltpb/ViewPreferences$ViewPresets;->$VALUES:[Lltpb/ViewPreferences$ViewPresets;

    .line 567
    new-instance v0, Lltpb/ViewPreferences$ViewPresets$ProtoAdapter_ViewPresets;

    invoke-direct {v0}, Lltpb/ViewPreferences$ViewPresets$ProtoAdapter_ViewPresets;-><init>()V

    sput-object v0, Lltpb/ViewPreferences$ViewPresets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 571
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 572
    iput p3, p0, Lltpb/ViewPreferences$ViewPresets;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/ViewPreferences$ViewPresets;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 584
    :pswitch_0
    sget-object p0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_PORTRAIT:Lltpb/ViewPreferences$ViewPresets;

    return-object p0

    .line 583
    :pswitch_1
    sget-object p0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_LANDSCAPE:Lltpb/ViewPreferences$ViewPresets;

    return-object p0

    .line 582
    :pswitch_2
    sget-object p0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_FAITHFUL:Lltpb/ViewPreferences$ViewPresets;

    return-object p0

    .line 581
    :pswitch_3
    sget-object p0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_NATURAL:Lltpb/ViewPreferences$ViewPresets;

    return-object p0

    .line 580
    :pswitch_4
    sget-object p0, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_NONE:Lltpb/ViewPreferences$ViewPresets;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lltpb/ViewPreferences$ViewPresets;
    .locals 1

    .line 553
    const-class v0, Lltpb/ViewPreferences$ViewPresets;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/ViewPreferences$ViewPresets;

    return-object p0
.end method

.method public static values()[Lltpb/ViewPreferences$ViewPresets;
    .locals 1

    .line 553
    sget-object v0, Lltpb/ViewPreferences$ViewPresets;->$VALUES:[Lltpb/ViewPreferences$ViewPresets;

    invoke-virtual {v0}, [Lltpb/ViewPreferences$ViewPresets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/ViewPreferences$ViewPresets;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 591
    iget p0, p0, Lltpb/ViewPreferences$ViewPresets;->value:I

    return p0
.end method
