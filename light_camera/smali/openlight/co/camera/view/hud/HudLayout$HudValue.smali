.class final enum Lopenlight/co/camera/view/hud/HudLayout$HudValue;
.super Ljava/lang/Enum;
.source "HudLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/hud/HudLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HudValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/hud/HudLayout$HudValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

.field public static final enum EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

.field public static final enum ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

.field public static final enum RESOLUTION:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

.field public static final enum SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

.field public static final enum ZOOM:Lopenlight/co/camera/view/hud/HudLayout$HudValue;


# instance fields
.field private final mHudElementLayoutResourceId:I

.field private final mHudElementTitleResourceId:I

.field private final mHudElementValueResourceId:I

.field private final mHudUnitTextResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 583
    new-instance v7, Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const-string v1, "ISO"

    const/4 v2, 0x0

    const v3, 0x7f0e00da

    const v4, 0x7f0e00da

    const v5, 0x7f0900b9

    const v6, 0x7f0900ba

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    .line 584
    new-instance v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const-string v9, "EV"

    const/4 v10, 0x1

    const v11, 0x7f0e0055

    const v12, 0x7f0e00d3

    const v13, 0x7f0900b7

    const v14, 0x7f0900b8

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    .line 586
    new-instance v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const-string v2, "ZOOM"

    const/4 v3, 0x2

    const v4, 0x7f0e013f

    const v5, 0x7f0e00d8

    const v6, 0x7f0900c2

    const v7, 0x7f0900c3

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ZOOM:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    .line 587
    new-instance v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const-string v9, "SHUTTER_SPEED"

    const/4 v10, 0x3

    const v11, 0x7f0e0124

    const v12, 0x7f0e00d7

    const v13, 0x7f0900c0

    const v14, 0x7f0900bf

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    .line 589
    new-instance v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const-string v2, "RESOLUTION"

    const/4 v3, 0x4

    const v4, 0x7f0e0101

    const v5, 0x7f0e00d6

    const v6, 0x7f0900bd

    const v7, 0x7f0900be

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->RESOLUTION:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const/4 v0, 0x5

    .line 582
    new-array v0, v0, [Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ZOOM:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->RESOLUTION:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->$VALUES:[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 597
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 598
    iput p3, p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->mHudElementTitleResourceId:I

    .line 599
    iput p4, p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->mHudUnitTextResourceId:I

    .line 600
    iput p5, p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->mHudElementValueResourceId:I

    .line 601
    iput p6, p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->mHudElementLayoutResourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/hud/HudLayout$HudValue;
    .locals 1

    .line 582
    const-class v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/hud/HudLayout$HudValue;
    .locals 1

    .line 582
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->$VALUES:[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/hud/HudLayout$HudValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    return-object v0
.end method


# virtual methods
.method public getHudElementLayoutResourceId()I
    .locals 0

    .line 609
    iget p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->mHudElementLayoutResourceId:I

    return p0
.end method

.method public getHudElementTitle()I
    .locals 0

    .line 605
    iget p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->mHudElementTitleResourceId:I

    return p0
.end method

.method public getHudElementValueResourceId()I
    .locals 0

    .line 613
    iget p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->mHudElementValueResourceId:I

    return p0
.end method

.method public getHudUnitTextResourceId()I
    .locals 0

    .line 617
    iget p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->mHudUnitTextResourceId:I

    return p0
.end method
