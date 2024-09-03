.class public final enum Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;
.super Ljava/lang/Enum;
.source "SmartAFTriggerMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoFocusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

.field public static final enum AFD:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

.field public static final enum AFS:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 110
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    const-string v1, "AFD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->AFD:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    .line 111
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    const-string v1, "AFS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->AFS:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->AFD:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->AFS:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->$VALUES:[Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;
    .registers 2

    .line 109
    const-class v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;
    .registers 1

    .line 109
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->$VALUES:[Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    return-object v0
.end method
