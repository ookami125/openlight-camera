.class public final enum Lopenlight/co/camera/haptic/Immersion;
.super Ljava/lang/Enum;
.source "Immersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/haptic/Immersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/haptic/Immersion;

.field public static final enum BRIGHTNESS_BEGIN:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum BRIGHTNESS_END:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum BRIGHTNESS_PREV_VALUE:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum BRIGHTNESS_SCROLL:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum DISPLAY_ZOOM_DOT:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum DISPLAY_ZOOM_PRIME:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum DOF_ADJUSTING:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum DOF_END:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum FOCUS_ACHIEVED:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum FOCUS_LOCK:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum GALLERY_SCROLL_LIMIT:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum GALLERY_SELECTION:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum LENS_BLOCKED:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum LOW_BATTERY:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum TOUCHSTRIP_ZOOM_DOT:Lopenlight/co/camera/haptic/Immersion;

.field public static final enum TOUCHSTRIP_ZOOM_PRIME:Lopenlight/co/camera/haptic/Immersion;


# instance fields
.field private final mHapticCategory:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

.field private final mIndexedEffectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 23
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "FOCUS_ACHIEVED"

    const-string v2, "light_focus_achieved"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->FOCUS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->FOCUS_ACHIEVED:Lopenlight/co/camera/haptic/Immersion;

    .line 24
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "FOCUS_LOCK"

    const-string v2, "light_focus_lock"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->FOCUS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->FOCUS_LOCK:Lopenlight/co/camera/haptic/Immersion;

    .line 28
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "DISPLAY_ZOOM_PRIME"

    const-string v2, "light_flick_screen"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->SCREEN_FLICK:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->DISPLAY_ZOOM_PRIME:Lopenlight/co/camera/haptic/Immersion;

    .line 30
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "DISPLAY_ZOOM_DOT"

    const-string v2, "light_screen_zoom_dots"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->ZOOM:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->DISPLAY_ZOOM_DOT:Lopenlight/co/camera/haptic/Immersion;

    .line 34
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "TOUCHSTRIP_ZOOM_PRIME"

    const-string v2, "light_flick_touch"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->TOUCHSTRIP:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->TOUCHSTRIP_ZOOM_PRIME:Lopenlight/co/camera/haptic/Immersion;

    .line 37
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "TOUCHSTRIP_ZOOM_DOT"

    const-string v2, "light_strip_zoom_dots"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->ZOOM:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->TOUCHSTRIP_ZOOM_DOT:Lopenlight/co/camera/haptic/Immersion;

    .line 44
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "LOW_BATTERY"

    const-string v2, "light_low_battery"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BATTERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->LOW_BATTERY:Lopenlight/co/camera/haptic/Immersion;

    .line 46
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "LENS_BLOCKED"

    const-string v2, "light_sensor_blocked"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->LENS_BLOCKED:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->LENS_BLOCKED:Lopenlight/co/camera/haptic/Immersion;

    .line 48
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "GALLERY_SELECTION"

    const-string v2, "light_gallery_selection"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->GALLERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->GALLERY_SELECTION:Lopenlight/co/camera/haptic/Immersion;

    .line 49
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "GALLERY_SCROLL_LIMIT"

    const-string v2, "light_gallery_scroll_limit"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->GALLERY:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->GALLERY_SCROLL_LIMIT:Lopenlight/co/camera/haptic/Immersion;

    .line 52
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "BRIGHTNESS_BEGIN"

    const-string v2, "light_brightness_begin"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BRIGHTNESS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_BEGIN:Lopenlight/co/camera/haptic/Immersion;

    .line 53
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "BRIGHTNESS_SCROLL"

    const-string v2, "light_brightness_scroll"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BRIGHTNESS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_SCROLL:Lopenlight/co/camera/haptic/Immersion;

    .line 54
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "BRIGHTNESS_PREV_VALUE"

    const-string v2, "light_brightness_previous_value"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BRIGHTNESS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_PREV_VALUE:Lopenlight/co/camera/haptic/Immersion;

    .line 55
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "BRIGHTNESS_END"

    const-string v2, "light_brightness_end"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->BRIGHTNESS:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_END:Lopenlight/co/camera/haptic/Immersion;

    .line 58
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "DOF_ADJUSTING"

    const-string v2, "light_dof_adjusting"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->DOF:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->DOF_ADJUSTING:Lopenlight/co/camera/haptic/Immersion;

    .line 59
    new-instance v0, Lopenlight/co/camera/haptic/Immersion;

    const-string v1, "DOF_END"

    const-string v2, "light_dof_end"

    sget-object v3, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->DOF:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v3}, Lopenlight/co/camera/haptic/Immersion;-><init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->DOF_END:Lopenlight/co/camera/haptic/Immersion;

    const/16 v0, 0x10

    .line 13
    new-array v0, v0, [Lopenlight/co/camera/haptic/Immersion;

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->FOCUS_ACHIEVED:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->FOCUS_LOCK:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->DISPLAY_ZOOM_PRIME:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->DISPLAY_ZOOM_DOT:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->TOUCHSTRIP_ZOOM_PRIME:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->TOUCHSTRIP_ZOOM_DOT:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->LOW_BATTERY:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->LENS_BLOCKED:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->GALLERY_SELECTION:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v12

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->GALLERY_SCROLL_LIMIT:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v13

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_BEGIN:Lopenlight/co/camera/haptic/Immersion;

    aput-object v1, v0, v14

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_SCROLL:Lopenlight/co/camera/haptic/Immersion;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_PREV_VALUE:Lopenlight/co/camera/haptic/Immersion;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_END:Lopenlight/co/camera/haptic/Immersion;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->DOF_ADJUSTING:Lopenlight/co/camera/haptic/Immersion;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->DOF_END:Lopenlight/co/camera/haptic/Immersion;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/haptic/Immersion;->$VALUES:[Lopenlight/co/camera/haptic/Immersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lopenlight/co/camera/haptic/Immersion;->mIndexedEffectName:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lopenlight/co/camera/haptic/Immersion;->mHapticCategory:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/haptic/Immersion;
    .registers 2

    .line 13
    const-class v0, Lopenlight/co/camera/haptic/Immersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/haptic/Immersion;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/haptic/Immersion;
    .registers 1

    .line 13
    sget-object v0, Lopenlight/co/camera/haptic/Immersion;->$VALUES:[Lopenlight/co/camera/haptic/Immersion;

    invoke-virtual {v0}, [Lopenlight/co/camera/haptic/Immersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/haptic/Immersion;

    return-object v0
.end method


# virtual methods
.method public getHapticCategory()Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;
    .registers 1

    .line 82
    iget-object p0, p0, Lopenlight/co/camera/haptic/Immersion;->mHapticCategory:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    return-object p0
.end method

.method public getIndexedEffectName()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/haptic/Immersion;->mIndexedEffectName:Ljava/lang/String;

    return-object p0
.end method
