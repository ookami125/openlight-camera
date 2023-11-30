.class public Lopenlight/co/lib/widget/TextViewCustom;
.super Lopenlight/co/lib/widget/PressSensitiveTextView;
.source "TextViewCustom.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lopenlight/co/lib/widget/PressSensitiveTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/widget/PressSensitiveTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->setRegularTypeFace()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/lib/widget/PressSensitiveTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->setRegularTypeFace()V

    return-void
.end method


# virtual methods
.method public disableHighlight()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->setRegularTypeFace()V

    .line 33
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lopenlight/co/lib/R$color;->textview_regular:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lopenlight/co/lib/widget/TextViewCustom;->setTextColor(I)V

    return-void
.end method

.method public enableHighlight()V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->setSemiBoldTypeFace()V

    .line 28
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lopenlight/co/lib/R$color;->textview_semibold:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lopenlight/co/lib/widget/TextViewCustom;->setTextColor(I)V

    return-void
.end method

.method protected final setRegularTypeFace()V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/lib/view/cache/FontCache;->init(Landroid/content/Context;)V

    .line 47
    :cond_0
    invoke-static {}, Lopenlight/co/lib/view/cache/FontCache;->get()Lopenlight/co/lib/view/cache/FontCache;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/lib/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lopenlight/co/lib/widget/TextViewCustom;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method protected final setSemiBoldTypeFace()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewCustom;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/lib/view/cache/FontCache;->init(Landroid/content/Context;)V

    .line 40
    :cond_0
    invoke-static {}, Lopenlight/co/lib/view/cache/FontCache;->get()Lopenlight/co/lib/view/cache/FontCache;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/lib/view/cache/FontCache;->getHarmoniaSemibold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lopenlight/co/lib/widget/TextViewCustom;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
