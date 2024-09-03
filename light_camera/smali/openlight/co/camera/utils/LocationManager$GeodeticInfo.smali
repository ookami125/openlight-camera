.class Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeodeticInfo"
.end annotation


# instance fields
.field correction:F

.field count:I

.field final synthetic this$0:Lopenlight/co/camera/utils/LocationManager;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/utils/LocationManager;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->this$0:Lopenlight/co/camera/utils/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/utils/LocationManager;Lopenlight/co/camera/utils/LocationManager$1;)V
    .registers 3

    .line 152
    invoke-direct {p0, p1}, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;-><init>(Lopenlight/co/camera/utils/LocationManager;)V

    return-void
.end method


# virtual methods
.method apply(F)V
    .registers 4

    .line 164
    iget v0, p0, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->correction:F

    iget v1, p0, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->count:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 165
    iget p1, p0, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->count:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->correction:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeodeticInfo{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", correction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->correction:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
