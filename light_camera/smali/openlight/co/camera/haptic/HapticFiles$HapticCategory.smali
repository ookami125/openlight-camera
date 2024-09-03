.class public final enum Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;
.super Ljava/lang/Enum;
.source "HapticFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/haptic/HapticFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HapticCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum BATTERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum BRIGHTNESS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum DOF:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum FOCUS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum GALLERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum INVALID:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum LENS_BLOCKED:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum SCREEN_FLICK:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum TOUCHSTRIP:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field public static final enum ZOOM:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;


# instance fields
.field private final mNormalStrengthFile:Ljava/lang/String;

.field private final mStrongStrengthFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 21
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "BRIGHTNESS"

    const-string v2, "light_brightness_soft.ivt"

    const-string v3, "light_brightness_strong.ivt"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BRIGHTNESS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 22
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "DOF"

    const-string v2, "light_dof_soft.ivt"

    const-string v3, "light_dof_strong.ivt"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->DOF:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 23
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "FOCUS"

    const-string v2, "light_focus_soft.ivt"

    const-string v3, "light_focus_strong.ivt"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->FOCUS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 24
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "BATTERY"

    const-string v2, "light_battery_soft.ivt"

    const-string v3, "light_battery_strong.ivt"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BATTERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 25
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "LENS_BLOCKED"

    const-string v2, "light_sensor_soft.ivt"

    const-string v3, "light_sensor_strong.ivt"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->LENS_BLOCKED:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 26
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "ZOOM"

    const-string v2, "light_zoom_soft.ivt"

    const-string v3, "light_zoom_strong.ivt"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->ZOOM:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 27
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "SCREEN_FLICK"

    const-string v2, "light_flick_screen_soft.ivt"

    const-string v3, "light_flick_screen_strong.ivt"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->SCREEN_FLICK:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 28
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "GALLERY"

    const-string v2, "light_gallery_soft.ivt"

    const-string v3, "light_gallery_strong.ivt"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->GALLERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 29
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "TOUCHSTRIP"

    const-string v2, "light_touchstrip_soft.ivt"

    const-string v3, "light_touchstrip_strong.ivt"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->TOUCHSTRIP:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    .line 30
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2, v2}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->INVALID:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v0, 0xa

    .line 18
    new-array v0, v0, [Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BRIGHTNESS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->DOF:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->FOCUS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BATTERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->LENS_BLOCKED:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->ZOOM:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->SCREEN_FLICK:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->GALLERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->TOUCHSTRIP:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v12

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->INVALID:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->$VALUES:[Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->mNormalStrengthFile:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->mStrongStrengthFile:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;
    .registers 2

    .line 18
    const-class v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;
    .registers 1

    .line 18
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->$VALUES:[Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    invoke-virtual {v0}, [Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    return-object v0
.end method


# virtual methods
.method public getHapticFile(Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;)Ljava/lang/String;
    .registers 3

    .line 52
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->NORMAL:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    if-ne p1, v0, :cond_7

    .line 53
    iget-object p0, p0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->mNormalStrengthFile:Ljava/lang/String;

    goto :goto_f

    .line 54
    :cond_7
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->STRONG:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    if-ne p1, v0, :cond_e

    .line 55
    iget-object p0, p0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->mStrongStrengthFile:Ljava/lang/String;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method
