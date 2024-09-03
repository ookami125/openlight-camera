.class Lopenlight/co/camera/utils/LensObstructionDetector$2;
.super Ljava/lang/Object;
.source "LensObstructionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/LensObstructionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/LensObstructionDetector;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/LensObstructionDetector;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$2;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 241
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lopenlight/co/camera/utils/LensObstructionDetector$2;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    # getter for: Lopenlight/co/camera/utils/LensObstructionDetector;->mAmbientLightSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$1200(Lopenlight/co/camera/utils/LensObstructionDetector;)Landroid/hardware/Sensor;

    move-result-object v3

    if-ne v2, v3, :cond_4b

    .line 243
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    # getter for: Lopenlight/co/camera/utils/LensObstructionDetector;->MAX_IN_POCKET_ILLUMINANCE:F
    invoke-static {}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$1300()F

    move-result v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2b

    .line 244
    iget-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$2;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    # getter for: Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J
    invoke-static {p1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$1400(Lopenlight/co/camera/utils/LensObstructionDetector;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_4b

    .line 245
    iget-object p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$2;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    # setter for: Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J
    invoke-static {p0, v0, v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$1402(Lopenlight/co/camera/utils/LensObstructionDetector;J)J

    goto :goto_4b

    .line 248
    :cond_2b
    iget-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$2;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    const-wide v0, 0x7fffffffffffffffL

    # setter for: Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J
    invoke-static {p1, v0, v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$1402(Lopenlight/co/camera/utils/LensObstructionDetector;J)J

    .line 249
    iget-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$2;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    # getter for: Lopenlight/co/camera/utils/LensObstructionDetector;->mCurrentlyInPocket:Z
    invoke-static {p1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$500(Lopenlight/co/camera/utils/LensObstructionDetector;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 250
    iget-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$2;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    # getter for: Lopenlight/co/camera/utils/LensObstructionDetector;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;
    invoke-static {p1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$200(Lopenlight/co/camera/utils/LensObstructionDetector;)Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;->onOutOfPocket()V

    .line 251
    iget-object p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$2;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    # invokes: Lopenlight/co/camera/utils/LensObstructionDetector;->resetInPocketStatus()V
    invoke-static {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$600(Lopenlight/co/camera/utils/LensObstructionDetector;)V

    :cond_4b
    :goto_4b
    return-void
.end method
