.class Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$GestureListener;
.super Ljava/lang/Object;
.source "ImagePrimaryControl.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .registers 2

    .line 1599
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$GestureListener;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;)V
    .registers 3

    .line 1599
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$GestureListener;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1612
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$GestureListener;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1613
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$GestureListener;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2500(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/wheel/ModeWheel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/wheel/ModeWheel;->updateModeOnTap(Landroid/view/MotionEvent;)V

    :cond_11
    const/4 p0, 0x1

    return p0
.end method
