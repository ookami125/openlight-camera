.class public abstract Lopenlight/co/camera/view/primarycontrol/BaseControl;
.super Ljava/lang/Object;
.source "BaseControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseControl"


# instance fields
.field protected final mBaseControlView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field protected mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .registers 5
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->mContext:Landroid/content/Context;

    .line 42
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->mBaseControlView:Landroid/view/View;

    .line 44
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->mBaseControlView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget-object p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->TAG:Ljava/lang/String;

    const-string p1, "layout inflated"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 1

    .line 77
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->mBaseControlView:Landroid/view/View;

    return-object p0
.end method

.method public isVisible()Z
    .registers 1

    .line 61
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->mBaseControlView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setVisibility(Z)V
    .registers 2

    .line 53
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/BaseControl;->mBaseControlView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
