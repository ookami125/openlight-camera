.class Lopenlight/co/camera/view/level/Leveler$1;
.super Ljava/lang/Object;
.source "Leveler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/level/Leveler;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/level/Leveler;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/level/Leveler;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$000(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 66
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$000(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$100(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 67
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$200(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$100(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;->add(F)V

    .line 68
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$000(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$300(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {p1, v2, v3, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 69
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$300(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$400(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 71
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$500(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$400(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;->add(F)V

    .line 72
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$600(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$400(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;->add(F)V

    .line 73
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$700(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$400(Lopenlight/co/camera/view/level/Leveler;)[F

    move-result-object v0

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;->add(F)V

    .line 75
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$800(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/DeviceRotationVector;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$700(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;->degrees()I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    iput v0, p1, Lopenlight/co/camera/view/level/DeviceRotationVector;->roll:F

    .line 76
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$800(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/DeviceRotationVector;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$600(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;->degrees()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lopenlight/co/camera/view/level/DeviceRotationVector;->pitch:F

    .line 77
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$800(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/DeviceRotationVector;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$500(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/AngleLowPassFilter;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/level/AngleLowPassFilter;->degrees()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lopenlight/co/camera/view/level/DeviceRotationVector;->azimuth:F

    .line 78
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$900(Lopenlight/co/camera/view/level/Leveler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    invoke-static {}, Lopenlight/co/camera/view/level/Leveler;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pitch change inside listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v2}, Lopenlight/co/camera/view/level/Leveler;->access$800(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/DeviceRotationVector;

    move-result-object v2

    iget v2, v2, Lopenlight/co/camera/view/level/DeviceRotationVector;->pitch:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lopenlight/co/camera/view/level/Leveler;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roll change inside listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v2}, Lopenlight/co/camera/view/level/Leveler;->access$800(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/DeviceRotationVector;

    move-result-object v2

    iget v2, v2, Lopenlight/co/camera/view/level/DeviceRotationVector;->roll:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lopenlight/co/camera/view/level/Leveler;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Azimuth change inside listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v2}, Lopenlight/co/camera/view/level/Leveler;->access$800(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/DeviceRotationVector;

    move-result-object v2

    iget v2, v2, Lopenlight/co/camera/view/level/DeviceRotationVector;->azimuth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$1100(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/LevelView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$1100(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/LevelView;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {v0}, Lopenlight/co/camera/view/level/Leveler;->access$800(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/DeviceRotationVector;

    move-result-object v0

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/level/LevelView;->setDeviceRotationVector(Lopenlight/co/camera/view/level/DeviceRotationVector;)V

    .line 84
    iget-object p1, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p1}, Lopenlight/co/camera/view/level/Leveler;->access$1200(Lopenlight/co/camera/view/level/Leveler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler$1;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-static {p0}, Lopenlight/co/camera/view/level/Leveler;->access$1100(Lopenlight/co/camera/view/level/Leveler;)Lopenlight/co/camera/view/level/LevelView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/level/LevelView;->setVisibility(I)V

    :cond_0
    return-void
.end method
