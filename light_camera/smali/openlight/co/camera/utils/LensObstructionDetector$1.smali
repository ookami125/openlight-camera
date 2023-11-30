.class Lopenlight/co/camera/utils/LensObstructionDetector$1;
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
    .locals 0

    .line 101
    iput-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method convertBitsToPositionArray(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    shl-int v2, v0, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method detectLensBlockedTransition()V
    .locals 6

    .line 164
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$300(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$400(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v1

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$200(Lopenlight/co/camera/utils/LensObstructionDetector;)Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;->onNoObstruction()V

    .line 175
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$500(Lopenlight/co/camera/utils/LensObstructionDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$200(Lopenlight/co/camera/utils/LensObstructionDetector;)Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;->onOutOfPocket()V

    .line 177
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$600(Lopenlight/co/camera/utils/LensObstructionDetector;)V

    .line 181
    :cond_0
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1, v0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$702(Lopenlight/co/camera/utils/LensObstructionDetector;I)I

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$400(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v1

    iget-object v2, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v2}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$700(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 188
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    iget-object v2, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v2}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$400(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v2

    invoke-static {v1, v2}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$702(Lopenlight/co/camera/utils/LensObstructionDetector;I)I

    .line 190
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$400(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 194
    iget-object v2, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v2}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$800(Lopenlight/co/camera/utils/LensObstructionDetector;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    .line 197
    iget-object v2, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    .line 198
    invoke-static {v2}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$400(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v2

    invoke-virtual {p0, v2}, Lopenlight/co/camera/utils/LensObstructionDetector$1;->convertBitsToPositionArray(I)Ljava/util/List;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v3}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$200(Lopenlight/co/camera/utils/LensObstructionDetector;)Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    move-result-object v3

    invoke-virtual {v3, v2}, Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;->onObstruction(Ljava/util/List;)V

    .line 203
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    .line 208
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$900(Lopenlight/co/camera/utils/LensObstructionDetector;)V

    .line 211
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$1000(Lopenlight/co/camera/utils/LensObstructionDetector;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 212
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1, v2, v3}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$1002(Lopenlight/co/camera/utils/LensObstructionDetector;J)J

    goto :goto_0

    .line 218
    :cond_3
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$900(Lopenlight/co/camera/utils/LensObstructionDetector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 221
    invoke-static {}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$1100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception in lens obstruction event listener"

    invoke-static {v2, v3, v1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 225
    :cond_4
    :goto_0
    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1, v0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$302(Lopenlight/co/camera/utils/LensObstructionDetector;I)I

    .line 228
    iget-object p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {p0, v0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$402(Lopenlight/co/camera/utils/LensObstructionDetector;I)I

    :cond_5
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$000(Lopenlight/co/camera/utils/LensObstructionDetector;)Lopenlight/co/camera/view/ftu/FtuHelper;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$100(Lopenlight/co/camera/utils/LensObstructionDetector;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$200(Lopenlight/co/camera/utils/LensObstructionDetector;)Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$308(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    .line 112
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v0}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$300(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v0, v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$402(Lopenlight/co/camera/utils/LensObstructionDetector;I)I

    .line 118
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 120
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x1

    aget p1, p1, v0

    float-to-int p1, p1

    shl-int p1, v0, p1

    .line 125
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector$1;->this$0:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$400(Lopenlight/co/camera/utils/LensObstructionDetector;)I

    move-result v1

    or-int/2addr p1, v1

    invoke-static {v0, p1}, Lopenlight/co/camera/utils/LensObstructionDetector;->access$402(Lopenlight/co/camera/utils/LensObstructionDetector;I)I

    .line 130
    :cond_2
    invoke-virtual {p0}, Lopenlight/co/camera/utils/LensObstructionDetector$1;->detectLensBlockedTransition()V

    :cond_3
    return-void
.end method
