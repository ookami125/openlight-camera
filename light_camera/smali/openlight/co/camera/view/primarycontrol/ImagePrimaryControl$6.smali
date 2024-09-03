.class Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;
.super Lopenlight/co/camera/view/statusbar/StatusBar;
.source "ImagePrimaryControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addStatusBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    .line 1394
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0, p2, p3}, Lopenlight/co/camera/view/statusbar/StatusBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public onOpenOptionSetting(Ljava/lang/String;)V
    .registers 5

    .line 1397
    invoke-super {p0, p1}, Lopenlight/co/camera/view/statusbar/StatusBar;->onOpenOptionSetting(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x11cc3fca

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    const v1, 0x7657c2f8

    if-eq v0, v1, :cond_13

    goto :goto_27

    :cond_13
    const-string v0, "image_encryption_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_1d
    const-string v0, "metering_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, -0x1

    :goto_28
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5c

    .line 1414
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleViewLeftControl(Z)V
    invoke-static {v0, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1200(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Z)V

    .line 1416
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrShowAncillaryToolbar(Ljava/lang/String;Z)V
    invoke-static {v0, p1, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1400(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Ljava/lang/String;Z)V

    .line 1417
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeStatusBar()V
    invoke-static {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    .line 1418
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setAlphaInformationViews(Z)V
    invoke-static {p0, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2400(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Z)V

    goto :goto_5a

    .line 1406
    :pswitch_41
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getCameraActivity()Lopenlight/co/camera/CameraActivity;
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/CameraActivity;

    move-result-object p0

    if-eqz p0, :cond_5a

    const-string p1, "image_encryption_setting"

    .line 1408
    invoke-virtual {p0, v1, p1}, Lopenlight/co/camera/CameraActivity;->launchSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 1400
    :pswitch_4f
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getCameraActivity()Lopenlight/co/camera/CameraActivity;
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/CameraActivity;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 1402
    invoke-virtual {p0, p1, v1}, Lopenlight/co/camera/CameraActivity;->launchSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_41
    .end packed-switch
.end method
