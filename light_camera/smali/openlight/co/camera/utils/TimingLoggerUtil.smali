.class public Lopenlight/co/camera/utils/TimingLoggerUtil;
.super Ljava/lang/Object;
.source "TimingLoggerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;,
        Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;,
        Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lopenlight/co/camera/utils/TimingLoggerUtil;


# instance fields
.field private final mFeatureToTimingLoggerMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;",
            "Landroid/util/TimingLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lopenlight/co/camera/utils/TimingLoggerUtil;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil;

    invoke-direct {v0}, Lopenlight/co/camera/utils/TimingLoggerUtil;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil;->sInstance:Lopenlight/co/camera/utils/TimingLoggerUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lopenlight/co/camera/utils/TimingLoggerUtil;->mFeatureToTimingLoggerMap:Ljava/util/EnumMap;

    return-void
.end method

.method public static get()Lopenlight/co/camera/utils/TimingLoggerUtil;
    .registers 1

    .line 52
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil;->sInstance:Lopenlight/co/camera/utils/TimingLoggerUtil;

    return-object v0
.end method


# virtual methods
.method public captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V
    .registers 5

    .line 86
    iget-object v0, p0, Lopenlight/co/camera/utils/TimingLoggerUtil;->mFeatureToTimingLoggerMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TimingLogger;

    .line 87
    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    invoke-virtual {p1}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4e

    goto :goto_4c

    .line 109
    :pswitch_16
    invoke-virtual {p1}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 111
    invoke-virtual {v0}, Landroid/util/TimingLogger;->reset()V

    goto :goto_4c

    .line 106
    :pswitch_24
    invoke-virtual {p1}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_4c

    :pswitch_2c
    if-nez v0, :cond_42

    .line 96
    new-instance v0, Landroid/util/TimingLogger;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil;->TAG:Ljava/lang/String;

    sget-object v2, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-virtual {v2}, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lopenlight/co/camera/utils/TimingLoggerUtil;->mFeatureToTimingLoggerMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_42
    invoke-virtual {v0}, Landroid/util/TimingLogger;->reset()V

    .line 100
    invoke-virtual {p1}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_16
    .end packed-switch
.end method

.method public captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V
    .registers 5

    .line 56
    iget-object v0, p0, Lopenlight/co/camera/utils/TimingLoggerUtil;->mFeatureToTimingLoggerMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TimingLogger;

    .line 57
    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    invoke-virtual {p1}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4e

    goto :goto_4c

    .line 78
    :pswitch_16
    invoke-virtual {p1}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 80
    invoke-virtual {v0}, Landroid/util/TimingLogger;->reset()V

    goto :goto_4c

    .line 75
    :pswitch_24
    invoke-virtual {p1}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_4c

    :pswitch_2c
    if-nez v0, :cond_42

    .line 62
    new-instance v0, Landroid/util/TimingLogger;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil;->TAG:Ljava/lang/String;

    sget-object v2, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-virtual {v2}, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lopenlight/co/camera/utils/TimingLoggerUtil;->mFeatureToTimingLoggerMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;->TIME_TO_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$Feature;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_42
    invoke-virtual {v0}, Landroid/util/TimingLogger;->reset()V

    .line 66
    invoke-virtual {p1}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_16
    .end packed-switch
.end method
