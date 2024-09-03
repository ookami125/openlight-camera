.class public final enum Lopenlight/co/thermalmonitor/ThermalIntent$Level;
.super Ljava/lang/Enum;
.source "ThermalIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/thermalmonitor/ThermalIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/thermalmonitor/ThermalIntent$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/thermalmonitor/ThermalIntent$Level;

.field public static final enum COOLING:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

.field public static final enum HOT:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

.field public static final enum SAFE:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

.field public static final enum WARMER:Lopenlight/co/thermalmonitor/ThermalIntent$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 11
    new-instance v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    const-string v1, "SAFE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/thermalmonitor/ThermalIntent$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->SAFE:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    .line 12
    new-instance v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    const-string v1, "WARMER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/thermalmonitor/ThermalIntent$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->WARMER:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    .line 13
    new-instance v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    const-string v1, "HOT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/thermalmonitor/ThermalIntent$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->HOT:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    .line 14
    new-instance v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    const-string v1, "COOLING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/thermalmonitor/ThermalIntent$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->COOLING:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    sget-object v1, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->SAFE:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->WARMER:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->HOT:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->COOLING:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    aput-object v1, v0, v5

    sput-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->$VALUES:[Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/thermalmonitor/ThermalIntent$Level;
    .registers 2

    .line 10
    const-class v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    return-object p0
.end method

.method public static values()[Lopenlight/co/thermalmonitor/ThermalIntent$Level;
    .registers 1

    .line 10
    sget-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->$VALUES:[Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    invoke-virtual {v0}, [Lopenlight/co/thermalmonitor/ThermalIntent$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    return-object v0
.end method
