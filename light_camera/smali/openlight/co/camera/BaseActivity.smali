.class public Lopenlight/co/camera/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private final mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

.field private final mTouchStrip:Lopenlight/co/touchstrip/TouchStrip;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/touchstrip/TouchStrip;->get(Landroid/app/Application;)Lopenlight/co/touchstrip/TouchStrip;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BaseActivity;->mTouchStrip:Lopenlight/co/touchstrip/TouchStrip;

    .line 18
    invoke-static {}, Lopenlight/co/camera/listener/HardKeyManager;->get()Lopenlight/co/camera/listener/HardKeyManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BaseActivity;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x100008

    if-ne v0, v3, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-eqz v0, :cond_19

    .line 72
    iget-object p0, p0, Lopenlight/co/camera/BaseActivity;->mTouchStrip:Lopenlight/co/touchstrip/TouchStrip;

    invoke-virtual {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->processEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 41
    sget-object v0, Lopenlight/co/camera/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KEYEVENT] KeyCode onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lopenlight/co/camera/BaseActivity;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v0, p1, p2, v1}, Lopenlight/co/camera/listener/HardKeyManager;->processEvent(ILandroid/view/KeyEvent;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 45
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    :goto_2a
    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 50
    sget-object v0, Lopenlight/co/camera/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KEYEVENT] KeyCode onKeyLongPress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lopenlight/co/camera/BaseActivity;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v0, p1, p2, v1}, Lopenlight/co/camera/listener/HardKeyManager;->processEvent(ILandroid/view/KeyEvent;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    :goto_2a
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 58
    sget-object v0, Lopenlight/co/camera/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KEYEVENT] KeyCode onKeyUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lopenlight/co/camera/BaseActivity;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v0, p1, p2, v1}, Lopenlight/co/camera/listener/HardKeyManager;->processEvent(ILandroid/view/KeyEvent;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 61
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    :goto_2a
    return p0
.end method

.method public onPause()V
    .registers 1

    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 29
    invoke-static {p0}, Lopenlight/co/camera/utils/HockeyAppUtil;->tearDown(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 23
    invoke-virtual {p0}, Lopenlight/co/camera/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/camera/utils/HockeyAppUtil;->init(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method
