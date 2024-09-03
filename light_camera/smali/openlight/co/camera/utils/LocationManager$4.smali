.class Lopenlight/co/camera/utils/LocationManager$4;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/LocationManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/LocationManager;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 10

    const-string v0, "$GPGGA"

    .line 182
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 183
    # getter for: Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NMEA @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ","

    .line 184
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    .line 186
    aget-object p2, p1, p2

    .line 187
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_fe

    const/4 p3, 0x2

    .line 189
    aget-object p3, p1, p3

    .line 190
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fe

    const-string v0, "N"

    const/4 v1, 0x3

    .line 192
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    move v0, v2

    goto :goto_56

    :cond_55
    move v0, v1

    .line 193
    :goto_56
    iget-object v3, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    iget-object v4, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # invokes: Lopenlight/co/camera/utils/LocationManager;->nmeaCoordToDouble(Ljava/lang/String;)D
    invoke-static {v4, p3}, Lopenlight/co/camera/utils/LocationManager;->access$500(Lopenlight/co/camera/utils/LocationManager;Ljava/lang/String;)D

    move-result-wide v4

    # invokes: Lopenlight/co/camera/utils/LocationManager;->box(D)I
    invoke-static {v3, v4, v5}, Lopenlight/co/camera/utils/LocationManager;->access$600(Lopenlight/co/camera/utils/LocationManager;D)I

    move-result p3

    mul-int/2addr v0, p3

    const-string p3, "E"

    const/4 v3, 0x5

    .line 194
    aget-object v3, p1, v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6f

    move v1, v2

    .line 195
    :cond_6f
    iget-object p3, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    iget-object v2, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    const/4 v3, 0x4

    aget-object p1, p1, v3

    # invokes: Lopenlight/co/camera/utils/LocationManager;->nmeaCoordToDouble(Ljava/lang/String;)D
    invoke-static {v2, p1}, Lopenlight/co/camera/utils/LocationManager;->access$500(Lopenlight/co/camera/utils/LocationManager;Ljava/lang/String;)D

    move-result-wide v2

    # invokes: Lopenlight/co/camera/utils/LocationManager;->box(D)I
    invoke-static {p3, v2, v3}, Lopenlight/co/camera/utils/LocationManager;->access$600(Lopenlight/co/camera/utils/LocationManager;D)I

    move-result p1

    mul-int/2addr v1, p1

    .line 196
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 199
    iget-object p2, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # getter for: Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;
    invoke-static {p2}, Lopenlight/co/camera/utils/LocationManager;->access$100(Lopenlight/co/camera/utils/LocationManager;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2

    .line 201
    :try_start_8a
    iget-object p3, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # getter for: Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;
    invoke-static {p3}, Lopenlight/co/camera/utils/LocationManager;->access$100(Lopenlight/co/camera/utils/LocationManager;)Ljava/util/HashMap;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    if-nez p3, :cond_ae

    .line 204
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 205
    iget-object v2, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # getter for: Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;
    invoke-static {v2}, Lopenlight/co/camera/utils/LocationManager;->access$100(Lopenlight/co/camera/utils/LocationManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_ae
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;

    if-nez v2, :cond_c9

    .line 211
    new-instance v2, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;

    iget-object v3, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;-><init>(Lopenlight/co/camera/utils/LocationManager;Lopenlight/co/camera/utils/LocationManager$1;)V

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_c9
    invoke-virtual {v2, p1}, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->apply(F)V

    .line 216
    # getter for: Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated correction at "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager$4;->this$0:Lopenlight/co/camera/utils/LocationManager;

    # invokes: Lopenlight/co/camera/utils/LocationManager;->scheduleSave()V
    invoke-static {p0}, Lopenlight/co/camera/utils/LocationManager;->access$800(Lopenlight/co/camera/utils/LocationManager;)V

    .line 220
    monitor-exit p2

    goto :goto_fe

    :catchall_fb
    move-exception p0

    monitor-exit p2
    :try_end_fd
    .catchall {:try_start_8a .. :try_end_fd} :catchall_fb

    throw p0

    :cond_fe
    :goto_fe
    return-void
.end method
