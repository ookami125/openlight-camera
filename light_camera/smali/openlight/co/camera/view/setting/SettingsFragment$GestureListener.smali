.class final Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/setting/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/setting/SettingsFragment;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingsFragment$1;)V
    .locals 0

    .line 666
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 671
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1400(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 674
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1500(Lopenlight/co/camera/view/setting/SettingsFragment;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 675
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v0, v2}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1502(Lopenlight/co/camera/view/setting/SettingsFragment;F)F

    .line 677
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v2}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1500(Lopenlight/co/camera/view/setting/SettingsFragment;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    .line 678
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_2

    const v0, -0x43dc28f6    # -0.01f

    .line 683
    :cond_2
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v1, v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1600(Lopenlight/co/camera/view/setting/SettingsFragment;F)V

    .line 684
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1502(Lopenlight/co/camera/view/setting/SettingsFragment;F)F

    .line 685
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1700(Lopenlight/co/camera/view/setting/SettingsFragment;Z)V

    .line 686
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1800(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method
