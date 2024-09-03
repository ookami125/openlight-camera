.class final Landroid/support/v4/app/FragmentTransitionCompat21$6;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    .line 546
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 2

    .line 549
    iget-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_10

    .line 552
    :cond_d
    iget-object p0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method
