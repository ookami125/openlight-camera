.class Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;
.super Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetElevationAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V
    .registers 3

    .line 454
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;Landroid/support/design/widget/FloatingActionButtonImpl$1;)V

    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .registers 1

    .line 459
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget p0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    return p0
.end method
