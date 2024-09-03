.class public final Landroid/support/v7/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/support/v4/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 64
    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 66
    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 90
    iput-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 91
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 92
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 93
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    const/16 v1, 0x10

    .line 95
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 103
    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 108
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 152
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 153
    iput p3, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    .line 154
    iput p2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mGroup:I

    .line 155
    iput p4, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 156
    iput p5, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    .line 157
    iput-object p6, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 158
    iput p7, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-eqz p1, :cond_2b

    .line 556
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_2b

    .line 557
    :cond_e
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 560
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    if-eqz v0, :cond_1f

    .line 561
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 564
    :cond_1f
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_28

    .line 565
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_28
    const/4 v0, 0x0

    .line 568
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    :cond_2b
    return-object p1
.end method


# virtual methods
.method public actionFormatChanged()V
    .registers 2

    .line 677
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public collapseActionView()Z
    .registers 3

    .line 818
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 821
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 826
    :cond_e
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 827
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    .line 828
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public expandActionView()Z
    .registers 3

    .line 804
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 808
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 809
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    return v1

    .line 810
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .line 768
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .line 750
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 751
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object p0

    .line 752
    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_16

    .line 753
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 754
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlphabeticModifiers()I
    .registers 1

    .line 288
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    return p0
.end method

.method public getAlphabeticShortcut()C
    .registers 1

    .line 256
    iget-char p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return p0
.end method

.method getCallback()Ljava/lang/Runnable;
    .registers 1

    .line 246
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 1

    .line 871
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getGroupId()I
    .registers 1

    .line 216
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mGroup:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 486
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 487
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 490
    :cond_b
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_25

    .line 491
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    invoke-static {v0, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 492
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 493
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 494
    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 1

    .line 536
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 552
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    .line 236
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getItemId()I
    .registers 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 222
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    return p0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 1

    .line 673
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object p0
.end method

.method public getNumericModifiers()I
    .registers 1

    .line 298
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    return p0
.end method

.method public getNumericShortcut()C
    .registers 1

    .line 293
    iget-char p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return p0
.end method

.method public getOrder()I
    .registers 1

    .line 227
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    return p0
.end method

.method public getOrdering()I
    .registers 1

    .line 231
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    return p0
.end method

.method getShortcut()C
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    goto :goto_d

    :cond_b
    iget-char p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    :goto_d
    return p0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .registers 3

    .line 365
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result p0

    if-nez p0, :cond_9

    const-string p0, ""

    return-object p0

    .line 370
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/support/v7/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    if-eq p0, v1, :cond_2c

    const/16 v1, 0xa

    if-eq p0, v1, :cond_26

    const/16 v1, 0x20

    if-eq p0, v1, :cond_20

    .line 386
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 382
    :cond_20
    sget-object p0, Landroid/support/v7/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 374
    :cond_26
    sget-object p0, Landroid/support/v7/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 378
    :cond_2c
    sget-object p0, Landroid/support/v7/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 1

    .line 405
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    return-object p0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .registers 1

    .line 774
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 422
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 3

    .line 457
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 459
    :goto_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1a

    if-eqz p0, :cond_1a

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 463
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object p0
.end method

.method getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p1, :cond_d

    .line 432
    invoke-interface {p1}, Landroid/support/v7/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 433
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_11

    .line 434
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 1

    .line 885
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hasCollapsibleActionView()Z
    .registers 3

    .line 835
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 836
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_17

    .line 837
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 839
    :cond_17
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    :cond_1d
    return v1
.end method

.method public hasSubMenu()Z
    .registers 1

    .line 410
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public invoke()Z
    .registers 5

    .line 167
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 171
    :cond_e
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v2, p0}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 175
    :cond_19
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_23

    .line 176
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v1

    .line 180
    :cond_23
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3b

    .line 182
    :try_start_27
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27 .. :try_end_32} :catch_33

    return v1

    :catch_33
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 185
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_3b
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_48

    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {p0}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result p0

    if-eqz p0, :cond_48

    return v1

    :cond_48
    const/4 p0, 0x0

    return p0
.end method

.method public isActionButton()Z
    .registers 2

    .line 688
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isActionViewExpanded()Z
    .registers 1

    .line 851
    iget-boolean p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return p0
.end method

.method public isCheckable()Z
    .registers 2

    .line 576
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 600
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 198
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isExclusiveCheckable()Z
    .registers 1

    .line 595
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isVisible()Z
    .registers 4

    .line 626
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 627
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1d

    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {p0}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1d

    move v1, v2

    :cond_1d
    return v1

    .line 629
    :cond_1e
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_25

    move v1, v2

    :cond_25
    return v1
.end method

.method public requestsActionButton()Z
    .registers 2

    .line 692
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public requiresActionButton()Z
    .registers 2

    .line 696
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 2

    .line 762
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 5

    .line 742
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 743
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 744
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    .line 731
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    const/4 v0, 0x0

    .line 732
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz p1, :cond_17

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_17

    .line 734
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 736
    :cond_17
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    return-object p0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .registers 2

    .line 845
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 846
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 261
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_5

    return-object p0

    .line 265
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 267
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 274
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    if-ne v0, p2, :cond_9

    return-object p0

    .line 279
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 280
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 282
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2

    .line 250
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .line 581
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 582
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 583
    iget p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_13

    .line 584
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_13
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 605
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 608
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    goto :goto_f

    .line 610
    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    :goto_f
    return-object p0
.end method

.method setCheckedInt(Z)V
    .registers 5

    .line 617
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 618
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    const/4 p1, 0x2

    goto :goto_c

    :cond_b
    move p1, v2

    :goto_c
    or-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 619
    iget p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_18

    .line 620
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_18
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .line 862
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 864
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    if-eqz p1, :cond_9

    .line 204
    iget p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_f

    .line 206
    :cond_9
    iget p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 209
    :goto_f
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 3

    .line 591
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 513
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    const/4 p1, 0x1

    .line 514
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 517
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 502
    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 503
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 505
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 525
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 526
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 527
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 529
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    .line 541
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 542
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 543
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 545
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .line 241
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 701
    iget p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_f

    .line 703
    :cond_9
    iget p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    :goto_f
    return-void
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 668
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 303
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_5

    return-object p0

    .line 307
    :cond_5
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 309
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 316
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    if-ne v0, p2, :cond_9

    return-object p0

    .line 320
    :cond_9
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 321
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 323
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 856
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .line 658
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .line 330
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 331
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 333
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    .line 341
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 342
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 343
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 344
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 346
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 3

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_16

    .line 722
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 725
    :pswitch_d
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 726
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    .line 798
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsAction(I)V

    return-object p0
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .registers 2

    .line 414
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .line 779
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_9

    .line 780
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->reset()V

    :cond_9
    const/4 v0, 0x0

    .line 782
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 783
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 784
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 785
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz p1, :cond_22

    .line 786
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    new-instance v0, Landroid/support/v7/view/menu/MenuItemImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/MenuItemImpl$1;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    :cond_22
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 452
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .line 439
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 441
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 443
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_11

    .line 444
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_11
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 472
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-nez p1, :cond_6

    .line 476
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 479
    :cond_6
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .line 876
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 878
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    .line 651
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    :cond_b
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .registers 5

    .line 641
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 642
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    move p1, v2

    goto :goto_d

    :cond_b
    const/16 p1, 0x8

    :goto_d
    or-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 643
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p0, :cond_15

    const/4 v2, 0x1

    :cond_15
    return v2
.end method

.method public shouldShowIcon()Z
    .registers 1

    .line 684
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result p0

    return p0
.end method

.method shouldShowShortcut()Z
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public showsTextAsAction()Z
    .registers 2

    .line 708
    iget p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 664
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method
