.class Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/support/design/widget/ShadowViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowDelegateImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButton;)V
    .registers 2

    .line 807
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius()F
    .registers 2

    .line 812
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public isCompatPaddingEnabled()Z
    .registers 1

    .line 829
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iget-boolean p0, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    return p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 824
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    # invokes: Landroid/support/design/widget/VisibilityAwareImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    invoke-static {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->access$001(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowPadding(IIII)V
    .registers 7

    .line 817
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 818
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iget v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImagePadding:I

    add-int/2addr p1, v1

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iget v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImagePadding:I

    add-int/2addr p2, v1

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iget v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImagePadding:I

    add-int/2addr p3, v1

    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iget p0, p0, Landroid/support/design/widget/FloatingActionButton;->mImagePadding:I

    add-int/2addr p4, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/design/widget/FloatingActionButton;->setPadding(IIII)V

    return-void
.end method
