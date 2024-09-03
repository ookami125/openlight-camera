.class public Lopenlight/co/thermalmonitor/ThermalIntent;
.super Ljava/lang/Object;
.source "ThermalIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/thermalmonitor/ThermalIntent$Level;
    }
.end annotation


# static fields
.field public static final ACTION_THERMAL_SERVICE:Ljava/lang/String; = "openlight.co.thermalmonitor.ThermalService"

.field public static final EXTRA_THERMAL_LEVEL:Ljava/lang/String; = "extra_thermal_level"

.field public static final LIGHT_LENS_MODULES_THERMAL_LEVEL_CHANGED:Ljava/lang/String; = "light_lens_modules_thermal_level_changed"

.field public static final PACKAGE_THERMAL_SERVICE:Ljava/lang/String; = "openlight.co.thermalmonitor"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
