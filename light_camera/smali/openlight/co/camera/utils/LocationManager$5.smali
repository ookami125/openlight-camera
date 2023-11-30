.class Lopenlight/co/camera/utils/LocationManager$5;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/utils/LocationManager;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/LocationManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/LocationManager;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager$5;->this$0:Lopenlight/co/camera/utils/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 250
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager$5;->this$0:Lopenlight/co/camera/utils/LocationManager;

    invoke-static {v0}, Lopenlight/co/camera/utils/LocationManager;->access$1000(Lopenlight/co/camera/utils/LocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager$5;->this$0:Lopenlight/co/camera/utils/LocationManager;

    invoke-static {p0}, Lopenlight/co/camera/utils/LocationManager;->access$900(Lopenlight/co/camera/utils/LocationManager;)Landroid/location/GpsStatus$NmeaListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    return-void
.end method
