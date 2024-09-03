.class final enum Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType$1;
.super Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;
.source "SignificantMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;F)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 36
    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;-><init>(Ljava/lang/String;ILjava/lang/String;FLopenlight/co/camera/listener/SignificantMotionDetector$1;)V

    return-void
.end method


# virtual methods
.method public processEvent(Landroid/hardware/SensorEvent;Lopenlight/co/camera/listener/SignificantMotionDetector;)V
    .registers 3

    .line 40
    # invokes: Lopenlight/co/camera/listener/SignificantMotionDetector;->processGryoEvent(Landroid/hardware/SensorEvent;)V
    invoke-static {p2, p1}, Lopenlight/co/camera/listener/SignificantMotionDetector;->access$100(Lopenlight/co/camera/listener/SignificantMotionDetector;Landroid/hardware/SensorEvent;)V

    return-void
.end method
