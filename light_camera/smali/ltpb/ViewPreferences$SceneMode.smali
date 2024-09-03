.class public final enum Lltpb/ViewPreferences$SceneMode;
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
    name = "SceneMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$SceneMode$ProtoAdapter_SceneMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/ViewPreferences$SceneMode;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/ViewPreferences$SceneMode;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences$SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SCENE_MODE_LANDSCAPE:Lltpb/ViewPreferences$SceneMode;

.field public static final enum SCENE_MODE_MACRO:Lltpb/ViewPreferences$SceneMode;

.field public static final enum SCENE_MODE_NIGHT:Lltpb/ViewPreferences$SceneMode;

.field public static final enum SCENE_MODE_NONE:Lltpb/ViewPreferences$SceneMode;

.field public static final enum SCENE_MODE_PORTRAIT:Lltpb/ViewPreferences$SceneMode;

.field public static final enum SCENE_MODE_SPORT:Lltpb/ViewPreferences$SceneMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 607
    new-instance v0, Lltpb/ViewPreferences$SceneMode;

    const-string v1, "SCENE_MODE_PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/ViewPreferences$SceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_PORTRAIT:Lltpb/ViewPreferences$SceneMode;

    .line 609
    new-instance v0, Lltpb/ViewPreferences$SceneMode;

    const-string v1, "SCENE_MODE_LANDSCAPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lltpb/ViewPreferences$SceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_LANDSCAPE:Lltpb/ViewPreferences$SceneMode;

    .line 611
    new-instance v0, Lltpb/ViewPreferences$SceneMode;

    const-string v1, "SCENE_MODE_SPORT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lltpb/ViewPreferences$SceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_SPORT:Lltpb/ViewPreferences$SceneMode;

    .line 613
    new-instance v0, Lltpb/ViewPreferences$SceneMode;

    const-string v1, "SCENE_MODE_MACRO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lltpb/ViewPreferences$SceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_MACRO:Lltpb/ViewPreferences$SceneMode;

    .line 615
    new-instance v0, Lltpb/ViewPreferences$SceneMode;

    const-string v1, "SCENE_MODE_NIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lltpb/ViewPreferences$SceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_NIGHT:Lltpb/ViewPreferences$SceneMode;

    .line 620
    new-instance v0, Lltpb/ViewPreferences$SceneMode;

    const-string v1, "SCENE_MODE_NONE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lltpb/ViewPreferences$SceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_NONE:Lltpb/ViewPreferences$SceneMode;

    const/4 v0, 0x6

    .line 606
    new-array v0, v0, [Lltpb/ViewPreferences$SceneMode;

    sget-object v1, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_PORTRAIT:Lltpb/ViewPreferences$SceneMode;

    aput-object v1, v0, v2

    sget-object v1, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_LANDSCAPE:Lltpb/ViewPreferences$SceneMode;

    aput-object v1, v0, v3

    sget-object v1, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_SPORT:Lltpb/ViewPreferences$SceneMode;

    aput-object v1, v0, v4

    sget-object v1, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_MACRO:Lltpb/ViewPreferences$SceneMode;

    aput-object v1, v0, v5

    sget-object v1, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_NIGHT:Lltpb/ViewPreferences$SceneMode;

    aput-object v1, v0, v6

    sget-object v1, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_NONE:Lltpb/ViewPreferences$SceneMode;

    aput-object v1, v0, v7

    sput-object v0, Lltpb/ViewPreferences$SceneMode;->$VALUES:[Lltpb/ViewPreferences$SceneMode;

    .line 622
    new-instance v0, Lltpb/ViewPreferences$SceneMode$ProtoAdapter_SceneMode;

    invoke-direct {v0}, Lltpb/ViewPreferences$SceneMode$ProtoAdapter_SceneMode;-><init>()V

    sput-object v0, Lltpb/ViewPreferences$SceneMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 626
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 627
    iput p3, p0, Lltpb/ViewPreferences$SceneMode;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/ViewPreferences$SceneMode;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return-object p0

    .line 640
    :pswitch_5
    sget-object p0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_NONE:Lltpb/ViewPreferences$SceneMode;

    return-object p0

    .line 639
    :pswitch_8
    sget-object p0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_NIGHT:Lltpb/ViewPreferences$SceneMode;

    return-object p0

    .line 638
    :pswitch_b
    sget-object p0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_MACRO:Lltpb/ViewPreferences$SceneMode;

    return-object p0

    .line 637
    :pswitch_e
    sget-object p0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_SPORT:Lltpb/ViewPreferences$SceneMode;

    return-object p0

    .line 636
    :pswitch_11
    sget-object p0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_LANDSCAPE:Lltpb/ViewPreferences$SceneMode;

    return-object p0

    .line 635
    :pswitch_14
    sget-object p0, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_PORTRAIT:Lltpb/ViewPreferences$SceneMode;

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lltpb/ViewPreferences$SceneMode;
    .registers 2

    .line 606
    const-class v0, Lltpb/ViewPreferences$SceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/ViewPreferences$SceneMode;

    return-object p0
.end method

.method public static values()[Lltpb/ViewPreferences$SceneMode;
    .registers 1

    .line 606
    sget-object v0, Lltpb/ViewPreferences$SceneMode;->$VALUES:[Lltpb/ViewPreferences$SceneMode;

    invoke-virtual {v0}, [Lltpb/ViewPreferences$SceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/ViewPreferences$SceneMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 647
    iget p0, p0, Lltpb/ViewPreferences$SceneMode;->value:I

    return p0
.end method
