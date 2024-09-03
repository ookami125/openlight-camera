.class Landroid/support/design/widget/VisibilityAwareImageButton;
.super Landroid/widget/ImageButton;
.source "VisibilityAwareImageButton.java"


# instance fields
.field private mUserSetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->mUserSetVisibility:I

    return-void
.end method


# virtual methods
.method final getUserSetVisibility()I
    .registers 1

    .line 53
    iget p0, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->mUserSetVisibility:I

    return p0
.end method

.method final internalSetVisibility(IZ)V
    .registers 3

    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p2, :cond_7

    .line 48
    iput p1, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->mUserSetVisibility:I

    :cond_7
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    return-void
.end method
