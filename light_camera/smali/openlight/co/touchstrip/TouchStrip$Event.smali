.class public final enum Lopenlight/co/touchstrip/TouchStrip$Event;
.super Ljava/lang/Enum;
.source "TouchStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/touchstrip/TouchStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/touchstrip/TouchStrip$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum FLING_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum FLING_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum LONG_PRESS_END:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum LONG_PRESS_START_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum LONG_PRESS_START_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum SWIPE_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum SWIPE_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum TAP_CENTER:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum TAP_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum TAP_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

.field public static final enum UNKNOWN:Lopenlight/co/touchstrip/TouchStrip$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 117
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "FLING_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 118
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "FLING_LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 119
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "LONG_PRESS_START_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_START_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 120
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "LONG_PRESS_START_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_START_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 121
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "LONG_PRESS_END"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_END:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 122
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "TAP_LEFT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 123
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "TAP_RIGHT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 124
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "TAP_CENTER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_CENTER:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 125
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "SWIPE_LEFT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 126
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "SWIPE_RIGHT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    .line 127
    new-instance v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    const-string v1, "UNKNOWN"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lopenlight/co/touchstrip/TouchStrip$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->UNKNOWN:Lopenlight/co/touchstrip/TouchStrip$Event;

    const/16 v0, 0xb

    .line 116
    new-array v0, v0, [Lopenlight/co/touchstrip/TouchStrip$Event;

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_START_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_START_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_END:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_CENTER:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->UNKNOWN:Lopenlight/co/touchstrip/TouchStrip$Event;

    aput-object v1, v0, v12

    sput-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->$VALUES:[Lopenlight/co/touchstrip/TouchStrip$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/touchstrip/TouchStrip$Event;
    .locals 1

    .line 116
    const-class v0, Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/touchstrip/TouchStrip$Event;

    return-object p0
.end method

.method public static values()[Lopenlight/co/touchstrip/TouchStrip$Event;
    .locals 1

    .line 116
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->$VALUES:[Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-virtual {v0}, [Lopenlight/co/touchstrip/TouchStrip$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/touchstrip/TouchStrip$Event;

    return-object v0
.end method
