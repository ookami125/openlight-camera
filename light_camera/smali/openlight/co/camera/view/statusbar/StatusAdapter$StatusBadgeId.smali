.class enum Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;
.super Ljava/lang/Enum;
.source "StatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/statusbar/StatusAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "StatusBadgeId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

.field public static final enum BURST:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

.field public static final enum CAF:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

.field public static final enum ENCRYPTION:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

.field public static final enum FLASH:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

.field public static final enum METERING:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

.field public static final enum TIMER:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

.field public static final enum WHITE_BALANCE:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;


# instance fields
.field private final mAlpha:F

.field private final mIconId:I

.field private final mIsDisplayed:Z

.field private final mPreferenceKey:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 45
    new-instance v8, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$1;

    const-string v1, "METERING"

    const-string v4, "metering_setting"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$1;-><init>(Ljava/lang/String;IZLjava/lang/String;IFI)V

    sput-object v8, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->METERING:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    .line 52
    new-instance v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$2;

    const-string v10, "BURST"

    const-string v13, "burst_mode"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$2;-><init>(Ljava/lang/String;IZLjava/lang/String;IFI)V

    sput-object v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->BURST:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    .line 60
    new-instance v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$3;

    const-string v2, "FLASH"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$3;-><init>(Ljava/lang/String;IZLjava/lang/String;IFI)V

    sput-object v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->FLASH:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    .line 77
    new-instance v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$4;

    const-string v10, "CAF"

    const/4 v11, 0x3

    const/4 v13, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$4;-><init>(Ljava/lang/String;IZLjava/lang/String;IFI)V

    sput-object v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->CAF:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    .line 94
    new-instance v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$5;

    const-string v2, "TIMER"

    const-string v5, "timer_setting"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$5;-><init>(Ljava/lang/String;IZLjava/lang/String;IFI)V

    sput-object v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->TIMER:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    .line 102
    new-instance v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$6;

    const-string v10, "WHITE_BALANCE"

    const-string v13, "white_balance_setting"

    const/4 v11, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$6;-><init>(Ljava/lang/String;IZLjava/lang/String;IFI)V

    sput-object v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->WHITE_BALANCE:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    .line 110
    new-instance v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$7;

    const-string v2, "ENCRYPTION"

    const-string v5, "image_encryption_setting"

    const/4 v3, 0x6

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$7;-><init>(Ljava/lang/String;IZLjava/lang/String;IFI)V

    sput-object v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->ENCRYPTION:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    const/4 v0, 0x7

    .line 44
    new-array v0, v0, [Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    sget-object v1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->METERING:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->BURST:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->FLASH:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->CAF:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->TIMER:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->WHITE_BALANCE:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->ENCRYPTION:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->$VALUES:[Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IFI)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-boolean p3, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mIsDisplayed:Z

    .line 128
    iput-object p4, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mPreferenceKey:Ljava/lang/String;

    .line 129
    iput p5, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mIconId:I

    .line 130
    iput p6, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mAlpha:F

    .line 131
    iput p7, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLjava/lang/String;IFILopenlight/co/camera/view/statusbar/StatusAdapter$1;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p7}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;-><init>(Ljava/lang/String;IZLjava/lang/String;IFI)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;
    .locals 1

    .line 44
    const-class v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;
    .locals 1

    .line 44
    sget-object v0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->$VALUES:[Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    return-object v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    .line 151
    iget p0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mAlpha:F

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 143
    iget p0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mIconId:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 147
    iget p0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mType:I

    return p0
.end method

.method public isDisplayed()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->mIsDisplayed:Z

    return p0
.end method
