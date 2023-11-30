.class public Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;
.super Lopenlight/co/camera/view/ftu/ImageFtuBaseController;
.source "ImageFtuAlertController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;

.field private mFocusFailed:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;ILopenlight/co/camera/enums/FtuView;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;-><init>()V

    .line 31
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mContainer:Landroid/view/ViewGroup;

    .line 32
    iput p2, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mResId:I

    .line 33
    iput-object p3, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    .line 34
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private init()V
    .locals 2

    .line 103
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mFocusFailed:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;

    .line 104
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mFocusFailed:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    return-void
.end method

.method public static synthetic lambda$displayFtuScreen$0(Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected displayFtuScreen()V
    .locals 4

    .line 79
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->getViewForFtu(Lopenlight/co/camera/enums/FtuView;)Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    move-result-object v0

    .line 80
    new-instance v1, Lopenlight/co/camera/view/ftu/ftuAlert/-$$Lambda$ImageFtuAlertController$vkEh0RXTiqLzoya9BQNlT9dg30o;

    invoke-direct {v1, p0, v0}, Lopenlight/co/camera/view/ftu/ftuAlert/-$$Lambda$ImageFtuAlertController$vkEh0RXTiqLzoya9BQNlT9dg30o;-><init>(Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected getViewForFtu(Lopenlight/co/camera/enums/FtuView;)Lopenlight/co/camera/view/ftu/BaseFtuLayout;
    .locals 1

    .line 92
    sget-object v0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController$1;->$SwitchMap$light$co$camera$enums$FtuView:[I

    invoke-virtual {p1}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mFocusFailed:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;

    return-object p0
.end method

.method protected onIncorrectResponseInPrime()V
    .locals 0

    return-void
.end method

.method public setFtuActionListener(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->setFtuActionListener(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mIsShown:Z

    if-eq p1, v0, :cond_1

    .line 57
    iput-boolean p1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mIsShown:Z

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mResId:I

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mRootContainer:Landroid/view/ViewGroup;

    .line 60
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->init()V

    .line 61
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->displayFtuScreen()V

    .line 64
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0xcb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateVisibilityOfView(Z)V
    .locals 0

    return-void
.end method
