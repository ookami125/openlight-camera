.class Lopenlight/co/camera/BasePreviewFragment$6;
.super Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;
.source "BasePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/BasePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/BasePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/BasePreviewFragment;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$6;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-direct {p0}, Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lopenlight/co/touchstrip/TouchStrip$Event;)V
    .locals 3

    .line 728
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch Strip Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lopenlight/co/touchstrip/TouchStrip$Event;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$6;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    if-ne p1, v0, :cond_0

    .line 731
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$6;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lopenlight/co/camera/BasePreviewFragment;->access$400(Lopenlight/co/camera/BasePreviewFragment;Z)V

    goto :goto_0

    .line 732
    :cond_0
    sget-object v0, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    if-ne p1, v0, :cond_2

    .line 733
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$6;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lopenlight/co/camera/BasePreviewFragment;->access$400(Lopenlight/co/camera/BasePreviewFragment;Z)V

    goto :goto_0

    .line 738
    :cond_1
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignoring Touch Strip Event, the camera is not idle (meter/capture/focus in progress)"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
