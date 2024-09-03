.class public Lopenlight/co/camera/view/burst/BurstView;
.super Lopenlight/co/camera/managers/controls/ControlManager;
.source "BurstView.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstView"


# instance fields
.field private mBurstCaptureSavingText:Landroid/widget/TextView;

.field private mBurstLayout:Landroid/widget/RelativeLayout;

.field private mBurstNumber:Landroid/widget/TextView;

.field private mBurstView:Landroid/view/View;

.field private mBurstWaitAnim:Landroid/widget/ImageView;

.field private final mImageFragmentView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 5

    .line 50
    invoke-direct {p0}, Lopenlight/co/camera/managers/controls/ControlManager;-><init>()V

    .line 51
    iput-object p1, p0, Lopenlight/co/camera/view/burst/BurstView;->mImageFragmentView:Landroid/view/ViewGroup;

    .line 52
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    if-nez v0, :cond_1d

    const v0, 0x7f0b0021

    .line 54
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mImageFragmentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    .line 56
    :cond_1d
    iget-object p1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    if-eqz p1, :cond_28

    .line 57
    iget-object p1, p0, Lopenlight/co/camera/view/burst/BurstView;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public addViewToFragment()V
    .registers 3

    .line 63
    iget-object v0, p0, Lopenlight/co/camera/view/burst/BurstView;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 66
    invoke-virtual {p0}, Lopenlight/co/camera/view/burst/BurstView;->initChildView()V

    return-void
.end method

.method public closeAll()V
    .registers 4

    .line 101
    iget-object v0, p0, Lopenlight/co/camera/view/burst/BurstView;->mImageFragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 102
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/burst/BurstView;->getListenerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object v0, p0, Lopenlight/co/camera/view/burst/BurstView;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    iput-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    :cond_1e
    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 122
    const-class p0, Lopenlight/co/camera/view/burst/BurstView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initChildView()V
    .registers 4

    .line 71
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstLayout:Landroid/widget/RelativeLayout;

    .line 73
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstWaitAnim:Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mImageFragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v2, 0x7f080063

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstWaitAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GifTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 76
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstNumber:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstCaptureSavingText:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstCaptureSavingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/burst/BurstView;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 3

    .line 116
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    .line 117
    iget-object p0, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x32

    invoke-static {p0, p1, v0}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public removeModeSelection()V
    .registers 1

    return-void
.end method

.method public setVisibility(Z)V
    .registers 2

    .line 111
    iget-object p0, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateBurstView(I)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 85
    iget-object p1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstWaitAnim:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object p0, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstCaptureSavingText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23

    .line 89
    :cond_15
    iget-object v1, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object p0, p0, Lopenlight/co/camera/view/burst/BurstView;->mBurstNumber:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_23
    return-void
.end method
