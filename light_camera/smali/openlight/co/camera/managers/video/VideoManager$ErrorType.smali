.class public final enum Lopenlight/co/camera/managers/video/VideoManager$ErrorType;
.super Ljava/lang/Enum;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/video/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/video/VideoManager$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

.field public static final enum FILE_SAVE_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

.field public static final enum MAX_FILE_SIZE_REACHED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

.field public static final enum VIDEO_RECORD_START_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

.field public static final enum VIDEO_RECORD_STOP_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    const-string v1, "FILE_SAVE_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->FILE_SAVE_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    .line 56
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    const-string v1, "MAX_FILE_SIZE_REACHED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->MAX_FILE_SIZE_REACHED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    .line 57
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    const-string v1, "VIDEO_RECORD_START_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_START_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    .line 58
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    const-string v1, "VIDEO_RECORD_STOP_FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_STOP_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    const/4 v0, 0x4

    .line 54
    new-array v0, v0, [Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->FILE_SAVE_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->MAX_FILE_SIZE_REACHED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_START_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_STOP_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->$VALUES:[Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/video/VideoManager$ErrorType;
    .locals 1

    .line 54
    const-class v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/video/VideoManager$ErrorType;
    .locals 1

    .line 54
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->$VALUES:[Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    return-object v0
.end method
