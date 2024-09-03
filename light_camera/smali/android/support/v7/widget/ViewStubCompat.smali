.class public final Landroid/support/v7/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    .line 57
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_inflatedId:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    .line 61
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_layout:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    .line 63
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_id:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ViewStubCompat;->setId(I)V

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    .line 66
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->setVisibility(I)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getInflatedId()I
    .registers 1

    .line 81
    iget p0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    return p0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 1

    .line 142
    iget-object p0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public getLayoutResource()I
    .registers 1

    .line 111
    iget p0, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    return p0
.end method

.method public inflate()Landroid/view/View;
    .registers 5

    .line 193
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 195
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5d

    .line 196
    iget v1, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    if-eqz v1, :cond_55

    .line 197
    check-cast v0, Landroid/view/ViewGroup;

    .line 199
    iget-object v1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_17

    .line 200
    iget-object v1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_1f

    .line 202
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 204
    :goto_1f
    iget v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 207
    iget v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    .line 208
    iget v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 211
    :cond_30
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 212
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 214
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_44

    .line 218
    :cond_41
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 221
    :goto_44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 223
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    if-eqz v0, :cond_54

    .line 224
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;->onInflate(Landroid/support/v7/widget/ViewStubCompat;Landroid/view/View;)V

    :cond_54
    return-object v1

    .line 229
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ViewStub must have a valid layoutResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_5d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onMeasure(II)V
    .registers 3

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1, p1}, Landroid/support/v7/widget/ViewStubCompat;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInflatedId(I)V
    .registers 2

    .line 95
    iput p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2

    .line 135
    iput-object p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2

    .line 127
    iput p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    return-void
.end method

.method public setOnInflateListener(Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;)V
    .registers 2

    .line 245
    iput-object p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    .line 171
    iget-object p0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_12

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    .line 175
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setVisibility called on un-referenced view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_22

    const/4 v0, 0x4

    if-ne p1, v0, :cond_25

    .line 180
    :cond_22
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    :cond_25
    :goto_25
    return-void
.end method
