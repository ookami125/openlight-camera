.class public final enum Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;
.super Ljava/lang/Enum;
.source "HapticFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/haptic/HapticFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HapticStrength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

.field public static final enum NORMAL:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

.field public static final enum OFF:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

.field public static final enum STRONG:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->OFF:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    .line 14
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->NORMAL:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    .line 15
    new-instance v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    const-string v1, "STRONG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->STRONG:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->OFF:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->NORMAL:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->STRONG:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->$VALUES:[Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;
    .locals 1

    .line 12
    const-class v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;
    .locals 1

    .line 12
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->$VALUES:[Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    invoke-virtual {v0}, [Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    return-object v0
.end method
