.class synthetic Lopenlight/co/camera/view/ftu/FtuHelper$3;
.super Ljava/lang/Object;
.source "FtuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ftu/FtuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$enums$FtuView:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    invoke-static {}, Lopenlight/co/camera/enums/FtuView;->values()[Lopenlight/co/camera/enums/FtuView;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/view/ftu/FtuHelper$3;->$SwitchMap$light$co$camera$enums$FtuView:[I

    :try_start_0
    sget-object v0, Lopenlight/co/camera/view/ftu/FtuHelper$3;->$SwitchMap$light$co$camera$enums$FtuView:[I

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->ZOOM_SCREEN:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lopenlight/co/camera/view/ftu/FtuHelper$3;->$SwitchMap$light$co$camera$enums$FtuView:[I

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lopenlight/co/camera/view/ftu/FtuHelper$3;->$SwitchMap$light$co$camera$enums$FtuView:[I

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->WHEEL_SCREEN:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
