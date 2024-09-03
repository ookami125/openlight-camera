.class final enum Lopenlight/co/lightsdk/process/Processor$Status;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lightsdk/process/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/lightsdk/process/Processor$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/lightsdk/process/Processor$Status;

.field public static final enum BINDING:Lopenlight/co/lightsdk/process/Processor$Status;

.field public static final enum BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

.field public static final enum NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 282
    new-instance v0, Lopenlight/co/lightsdk/process/Processor$Status;

    const-string v1, "NOT_BOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/process/Processor$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    .line 283
    new-instance v0, Lopenlight/co/lightsdk/process/Processor$Status;

    const-string v1, "BINDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/lightsdk/process/Processor$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->BINDING:Lopenlight/co/lightsdk/process/Processor$Status;

    .line 284
    new-instance v0, Lopenlight/co/lightsdk/process/Processor$Status;

    const-string v1, "BOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/lightsdk/process/Processor$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    const/4 v0, 0x3

    .line 281
    new-array v0, v0, [Lopenlight/co/lightsdk/process/Processor$Status;

    sget-object v1, Lopenlight/co/lightsdk/process/Processor$Status;->NOT_BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/lightsdk/process/Processor$Status;->BINDING:Lopenlight/co/lightsdk/process/Processor$Status;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/lightsdk/process/Processor$Status;->BOUND:Lopenlight/co/lightsdk/process/Processor$Status;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->$VALUES:[Lopenlight/co/lightsdk/process/Processor$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/lightsdk/process/Processor$Status;
    .registers 2

    .line 281
    const-class v0, Lopenlight/co/lightsdk/process/Processor$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/lightsdk/process/Processor$Status;

    return-object p0
.end method

.method public static values()[Lopenlight/co/lightsdk/process/Processor$Status;
    .registers 1

    .line 281
    sget-object v0, Lopenlight/co/lightsdk/process/Processor$Status;->$VALUES:[Lopenlight/co/lightsdk/process/Processor$Status;

    invoke-virtual {v0}, [Lopenlight/co/lightsdk/process/Processor$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/lightsdk/process/Processor$Status;

    return-object v0
.end method
