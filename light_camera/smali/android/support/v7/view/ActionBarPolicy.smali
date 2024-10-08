.class public Landroid/support/v7/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
    .registers 2

    .line 42
    new-instance v0, Landroid/support/v7/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Landroid/support/v7/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 2

    .line 109
    iget-object p0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0xe

    if-ge p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .registers 1

    .line 85
    iget-object p0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getMaxActionButtons()I
    .registers 4

    .line 55
    iget-object p0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 56
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 57
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 58
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-gt p0, v2, :cond_3e

    if-gt v0, v2, :cond_3e

    const/16 p0, 0x2d0

    const/16 v2, 0x3c0

    if-le v0, v2, :cond_1e

    if-gt v1, p0, :cond_3e

    :cond_1e
    if-le v0, p0, :cond_23

    if-le v1, v2, :cond_23

    goto :goto_3e

    :cond_23
    const/16 p0, 0x1f4

    if-ge v0, p0, :cond_3c

    const/16 p0, 0x1e0

    const/16 v2, 0x280

    if-le v0, v2, :cond_2f

    if-gt v1, p0, :cond_3c

    :cond_2f
    if-le v0, p0, :cond_34

    if-le v1, v2, :cond_34

    goto :goto_3c

    :cond_34
    const/16 p0, 0x168

    if-lt v0, p0, :cond_3a

    const/4 p0, 0x3

    return p0

    :cond_3a
    const/4 p0, 0x2

    return p0

    :cond_3c
    :goto_3c
    const/4 p0, 0x4

    return p0

    :cond_3e
    :goto_3e
    const/4 p0, 0x5

    return p0
.end method

.method public getStackedTabMaxWidth()I
    .registers 2

    .line 114
    iget-object p0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getTabContainerHeight()I
    .registers 6

    .line 93
    iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 96
    iget-object v2, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p0

    if-nez p0, :cond_28

    .line 99
    sget p0, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 100
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 99
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 102
    :cond_28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    .line 89
    iget-object p0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public showsOverflowMenuButton()Z
    .registers 4

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_8

    return v1

    .line 80
    :cond_8
    iget-object p0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method
