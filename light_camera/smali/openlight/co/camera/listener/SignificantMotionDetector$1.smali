.class Lopenlight/co/camera/listener/SignificantMotionDetector$1;
.super Ljava/lang/Object;
.source "SignificantMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/SignificantMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/listener/SignificantMotionDetector;


# direct methods
.method constructor <init>(Lopenlight/co/camera/listener/SignificantMotionDetector;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector$1;->this$0:Lopenlight/co/camera/listener/SignificantMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 100
    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector$1;->this$0:Lopenlight/co/camera/listener/SignificantMotionDetector;

    invoke-static {v0}, Lopenlight/co/camera/listener/SignificantMotionDetector;->access$300(Lopenlight/co/camera/listener/SignificantMotionDetector;)Lopenlight/co/camera/listener/SignificantMotionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector$1;->this$0:Lopenlight/co/camera/listener/SignificantMotionDetector;

    invoke-static {p0}, Lopenlight/co/camera/listener/SignificantMotionDetector;->access$300(Lopenlight/co/camera/listener/SignificantMotionDetector;)Lopenlight/co/camera/listener/SignificantMotionListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/listener/SignificantMotionListener;->onMotionDetected()V

    :cond_0
    return-void
.end method
