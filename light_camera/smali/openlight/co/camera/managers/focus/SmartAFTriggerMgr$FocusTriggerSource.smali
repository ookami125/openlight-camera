.class final enum Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;
.super Ljava/lang/Enum;
.source "SmartAFTriggerMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FocusTriggerSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum SIGNIFICATION_MOTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum TEST:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum USER:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum USER_HW:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum USER_HW_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field public static final enum ZOOM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;


# instance fields
.field private final mFocusTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 117
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 118
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "FACE_DETECTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 119
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "SIGNIFICATION_MOTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SIGNIFICATION_MOTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 120
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "ZOOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->ZOOM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 121
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "USER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 122
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "USER_HW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 123
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "TEST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->TEST:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 124
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "USER_SCREEN_LOCK"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 125
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const-string v1, "USER_HW_LOCK"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 116
    new-array v0, v11, [Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SIGNIFICATION_MOTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->ZOOM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->TEST:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    aput-object v1, v0, v10

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->$VALUES:[Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->mFocusTypeId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;
    .locals 1

    .line 116
    const-class v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;
    .locals 1

    .line 116
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->$VALUES:[Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    return-object v0
.end method


# virtual methods
.method public getFocusTriggerId()I
    .locals 0

    .line 137
    iget p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->mFocusTypeId:I

    return p0
.end method
