.class Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;
.super Ljava/lang/Object;
.source "ImagePrimaryControl.java"

# interfaces
.implements Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .registers 2

    .line 1070
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChanged(Lopenlight/co/lib/content/Prefs;Ljava/lang/String;)V
    .registers 4

    .line 1073
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x11e151fb

    if-eq p1, v0, :cond_28

    const v0, 0x3ad4468e

    if-eq p1, v0, :cond_1e

    const v0, 0x6fda0646

    if-eq p1, v0, :cond_14

    goto :goto_32

    :cond_14
    const-string p1, "ex_index"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    goto :goto_33

    :cond_1e
    const-string p1, "camera_mode_setting"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x2

    goto :goto_33

    :cond_28
    const-string p1, "zoom_value"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    :goto_32
    const/4 p1, -0x1

    :goto_33
    packed-switch p1, :pswitch_data_80

    goto :goto_7e

    .line 1083
    :pswitch_37
    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$800()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Camera mode change"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z
    invoke-static {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 1089
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mUpdatePreferenceListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;
    invoke-static {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2200(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;->updatePreference()V

    .line 1090
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;
    invoke-static {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/hud/HudLayout;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/hud/HudLayout;->checkAndUpdateMode()Z

    .line 1091
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/hud/HudLayout;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudValues()V

    goto :goto_7e

    .line 1076
    :pswitch_64
    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$800()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HUD change in EV & ZOOM preference"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z
    invoke-static {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 1078
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/hud/HudLayout;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudValues()V

    :cond_7e
    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_64
        :pswitch_64
        :pswitch_37
    .end packed-switch
.end method
