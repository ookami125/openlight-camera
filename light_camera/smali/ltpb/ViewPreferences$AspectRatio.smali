.class public final enum Lltpb/ViewPreferences$AspectRatio;
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
    name = "AspectRatio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$AspectRatio$ProtoAdapter_AspectRatio;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/ViewPreferences$AspectRatio;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/ViewPreferences$AspectRatio;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences$AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ASPECT_RATIO_16_9:Lltpb/ViewPreferences$AspectRatio;

.field public static final enum ASPECT_RATIO_4_3:Lltpb/ViewPreferences$AspectRatio;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 787
    new-instance v0, Lltpb/ViewPreferences$AspectRatio;

    const-string v1, "ASPECT_RATIO_4_3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/ViewPreferences$AspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_4_3:Lltpb/ViewPreferences$AspectRatio;

    .line 789
    new-instance v0, Lltpb/ViewPreferences$AspectRatio;

    const-string v1, "ASPECT_RATIO_16_9"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lltpb/ViewPreferences$AspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_16_9:Lltpb/ViewPreferences$AspectRatio;

    const/4 v0, 0x2

    .line 786
    new-array v0, v0, [Lltpb/ViewPreferences$AspectRatio;

    sget-object v1, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_4_3:Lltpb/ViewPreferences$AspectRatio;

    aput-object v1, v0, v2

    sget-object v1, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_16_9:Lltpb/ViewPreferences$AspectRatio;

    aput-object v1, v0, v3

    sput-object v0, Lltpb/ViewPreferences$AspectRatio;->$VALUES:[Lltpb/ViewPreferences$AspectRatio;

    .line 791
    new-instance v0, Lltpb/ViewPreferences$AspectRatio$ProtoAdapter_AspectRatio;

    invoke-direct {v0}, Lltpb/ViewPreferences$AspectRatio$ProtoAdapter_AspectRatio;-><init>()V

    sput-object v0, Lltpb/ViewPreferences$AspectRatio;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 795
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 796
    iput p3, p0, Lltpb/ViewPreferences$AspectRatio;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/ViewPreferences$AspectRatio;
    .registers 1

    packed-switch p0, :pswitch_data_c

    const/4 p0, 0x0

    return-object p0

    .line 805
    :pswitch_5
    sget-object p0, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_16_9:Lltpb/ViewPreferences$AspectRatio;

    return-object p0

    .line 804
    :pswitch_8
    sget-object p0, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_4_3:Lltpb/ViewPreferences$AspectRatio;

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lltpb/ViewPreferences$AspectRatio;
    .registers 2

    .line 786
    const-class v0, Lltpb/ViewPreferences$AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/ViewPreferences$AspectRatio;

    return-object p0
.end method

.method public static values()[Lltpb/ViewPreferences$AspectRatio;
    .registers 1

    .line 786
    sget-object v0, Lltpb/ViewPreferences$AspectRatio;->$VALUES:[Lltpb/ViewPreferences$AspectRatio;

    invoke-virtual {v0}, [Lltpb/ViewPreferences$AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/ViewPreferences$AspectRatio;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 812
    iget p0, p0, Lltpb/ViewPreferences$AspectRatio;->value:I

    return p0
.end method
