.class final enum Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;
.super Ljava/lang/Enum;
.source "TimingLoggerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/TimingLoggerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

.field public static final enum TIME_TO_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

.field public static final enum TIME_TO_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 16
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    const-string v1, "TIME_TO_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    .line 17
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    const-string v1, "TIME_TO_FOCUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->$VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;
    .registers 2

    .line 15
    const-class v0, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;
    .registers 1

    .line 15
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->$VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    return-object v0
.end method
