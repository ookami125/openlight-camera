.class public abstract Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.super Landroid/widget/FrameLayout;
.source "BaseFtuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;
    }
.end annotation


# static fields
.field private static final SYS_UI_STATUS_BAR_HEIGHT_OFFSET_IN_PX:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BaseFtuLayout"


# instance fields
.field private mListener:Lopenlight/co/camera/view/ftu/OnFtuActionListener;

.field protected mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 14
    sget-object v0, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/ftu/BaseFtuLayout;)Lopenlight/co/camera/view/ftu/OnFtuActionListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->mListener:Lopenlight/co/camera/view/ftu/OnFtuActionListener;

    return-object p0
.end method


# virtual methods
.method public abstract getImageView()Landroid/view/View;
.end method

.method public abstract hideView(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V
.end method

.method protected onButtonClick()V
    .registers 2

    .line 50
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->mListener:Lopenlight/co/camera/view/ftu/OnFtuActionListener;

    if-eqz v0, :cond_9

    .line 51
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->mListener:Lopenlight/co/camera/view/ftu/OnFtuActionListener;

    invoke-interface {p0}, Lopenlight/co/camera/view/ftu/OnFtuActionListener;->onButtonClicked()V

    :cond_9
    return-void
.end method

.method public setFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->mListener:Lopenlight/co/camera/view/ftu/OnFtuActionListener;

    return-void
.end method

.method public setViewVisibility(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    :cond_4
    const/16 p0, 0x8

    .line 42
    :goto_6
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
