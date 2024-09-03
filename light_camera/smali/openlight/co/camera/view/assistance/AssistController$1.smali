.class synthetic Lopenlight/co/camera/view/assistance/AssistController$1;
.super Ljava/lang/Object;
.source "AssistController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/assistance/AssistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$view$assistance$AssistController$AssistType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    invoke-static {}, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->values()[Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/view/assistance/AssistController$1;->$SwitchMap$light$co$camera$view$assistance$AssistController$AssistType:[I

    :try_start_9
    sget-object v0, Lopenlight/co/camera/view/assistance/AssistController$1;->$SwitchMap$light$co$camera$view$assistance$AssistController$AssistType:[I

    sget-object v1, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->LOW_LIGHT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lopenlight/co/camera/view/assistance/AssistController$1;->$SwitchMap$light$co$camera$view$assistance$AssistController$AssistType:[I

    sget-object v1, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->TRIPOD_DETECT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lopenlight/co/camera/view/assistance/AssistController$1;->$SwitchMap$light$co$camera$view$assistance$AssistController$AssistType:[I

    sget-object v1, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->HAND_SHAKE_ASSIST:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
