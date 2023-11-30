.class final enum Lopenlight/co/camera/utils/SoundManager$Sound;
.super Ljava/lang/Enum;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Sound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/SoundManager$Sound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/SoundManager$Sound;

.field public static final enum BURST_TICKS:Lopenlight/co/camera/utils/SoundManager$Sound;

.field public static final enum COUNTDOWN_TIMER:Lopenlight/co/camera/utils/SoundManager$Sound;

.field public static final enum SHUTTER_CLOSE:Lopenlight/co/camera/utils/SoundManager$Sound;

.field public static final enum SHUTTER_OPEN:Lopenlight/co/camera/utils/SoundManager$Sound;


# instance fields
.field private final mRawResIdClassic:I

.field private final mRawResIdModern:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 78
    new-instance v0, Lopenlight/co/camera/utils/SoundManager$Sound;

    const-string v1, "SHUTTER_OPEN"

    const/4 v2, 0x0

    const v3, 0x7f0d0006

    const v4, 0x7f0d0007

    invoke-direct {v0, v1, v2, v3, v4}, Lopenlight/co/camera/utils/SoundManager$Sound;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->SHUTTER_OPEN:Lopenlight/co/camera/utils/SoundManager$Sound;

    .line 79
    new-instance v0, Lopenlight/co/camera/utils/SoundManager$Sound;

    const-string v1, "SHUTTER_CLOSE"

    const/4 v3, 0x1

    const v4, 0x7f0d0004

    const v5, 0x7f0d0005

    invoke-direct {v0, v1, v3, v4, v5}, Lopenlight/co/camera/utils/SoundManager$Sound;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->SHUTTER_CLOSE:Lopenlight/co/camera/utils/SoundManager$Sound;

    .line 80
    new-instance v0, Lopenlight/co/camera/utils/SoundManager$Sound;

    const-string v1, "COUNTDOWN_TIMER"

    const/4 v4, 0x2

    const v5, 0x7f0d0001

    const v6, 0x7f0d0002

    invoke-direct {v0, v1, v4, v5, v6}, Lopenlight/co/camera/utils/SoundManager$Sound;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->COUNTDOWN_TIMER:Lopenlight/co/camera/utils/SoundManager$Sound;

    .line 81
    new-instance v0, Lopenlight/co/camera/utils/SoundManager$Sound;

    const-string v1, "BURST_TICKS"

    const/high16 v5, 0x7f0d0000

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v5, v5}, Lopenlight/co/camera/utils/SoundManager$Sound;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->BURST_TICKS:Lopenlight/co/camera/utils/SoundManager$Sound;

    const/4 v0, 0x4

    .line 76
    new-array v0, v0, [Lopenlight/co/camera/utils/SoundManager$Sound;

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Sound;->SHUTTER_OPEN:Lopenlight/co/camera/utils/SoundManager$Sound;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Sound;->SHUTTER_CLOSE:Lopenlight/co/camera/utils/SoundManager$Sound;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Sound;->COUNTDOWN_TIMER:Lopenlight/co/camera/utils/SoundManager$Sound;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Sound;->BURST_TICKS:Lopenlight/co/camera/utils/SoundManager$Sound;

    aput-object v1, v0, v6

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->$VALUES:[Lopenlight/co/camera/utils/SoundManager$Sound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lopenlight/co/camera/utils/SoundManager$Sound;->mRawResIdClassic:I

    .line 88
    iput p4, p0, Lopenlight/co/camera/utils/SoundManager$Sound;->mRawResIdModern:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/SoundManager$Sound;
    .locals 1

    .line 76
    const-class v0, Lopenlight/co/camera/utils/SoundManager$Sound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/SoundManager$Sound;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/SoundManager$Sound;
    .locals 1

    .line 76
    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->$VALUES:[Lopenlight/co/camera/utils/SoundManager$Sound;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/SoundManager$Sound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/SoundManager$Sound;

    return-object v0
.end method


# virtual methods
.method getRawSoundResourceId(Lopenlight/co/camera/utils/SoundManager$Theme;)I
    .locals 1

    .line 92
    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->CLASSIC:Lopenlight/co/camera/utils/SoundManager$Theme;

    if-ne p1, v0, :cond_0

    .line 93
    iget p0, p0, Lopenlight/co/camera/utils/SoundManager$Sound;->mRawResIdClassic:I

    return p0

    .line 94
    :cond_0
    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->MODERN:Lopenlight/co/camera/utils/SoundManager$Theme;

    if-ne p1, v0, :cond_1

    .line 95
    iget p0, p0, Lopenlight/co/camera/utils/SoundManager$Sound;->mRawResIdModern:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
