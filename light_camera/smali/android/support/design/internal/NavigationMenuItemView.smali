.class public Landroid/support/design/internal/NavigationMenuItemView;
.super Landroid/support/design/internal/ForegroundLinearLayout;
.source "NavigationMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final mAccessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field private mActionArea:Landroid/widget/FrameLayout;

.field mCheckable:Z

.field private mEmptyDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasIconTintList:Z

.field private final mIconSize:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mNeedsEmptyIcon:Z

.field private final mTextView:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 53
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance p2, Landroid/support/design/internal/NavigationMenuItemView$1;

    invoke-direct {p2, p0}, Landroid/support/design/internal/NavigationMenuItemView$1;-><init>(Landroid/support/design/internal/NavigationMenuItemView;)V

    iput-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->mAccessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    const/4 p2, 0x0

    .line 95
    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Landroid/support/design/R$layout;->design_navigation_menu_item:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/design/R$dimen;->design_navigation_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    .line 99
    sget p1, Landroid/support/design/R$id;->design_menu_item_text:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    .line 100
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 101
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mAccessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private adjustAppearance()V
    .registers 3

    .line 132
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->shouldExpandActionArea()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 134
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3c

    .line 136
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    .line 137
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 138
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3c

    .line 141
    :cond_22
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3c

    .line 143
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x2

    .line 144
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 145
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .registers 4

    .line 169
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 170
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 172
    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 173
    sget-object v1, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 174
    sget-object v0, Landroid/support/design/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private setActionView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_20

    .line 159
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-nez v0, :cond_16

    .line 160
    sget v0, Landroid/support/design/R$id;->design_menu_item_action_area_stub:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 161
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    .line 163
    :cond_16
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 164
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method private shouldExpandActionArea()Z
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 127
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 1

    .line 182
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .registers 3

    .line 106
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 108
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p2, 0x0

    goto :goto_c

    :cond_a
    const/16 p2, 0x8

    :goto_c
    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_1c

    .line 111
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_1c
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 116
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 117
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->adjustAppearance()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 244
    invoke-super {p0, p1}, Landroid/support/design/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 245
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 246
    sget-object p0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/support/design/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    :cond_1f
    return-object p1
.end method

.method public prefersCondensedTitle()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public recycle()V
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 154
    :cond_9
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    .line 192
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 193
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mCheckable:Z

    if-eq v0, p1, :cond_12

    .line 194
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mCheckable:Z

    .line 195
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mAccessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/16 v0, 0x800

    invoke-virtual {p1, p0, v0}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    :cond_12
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 202
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 203
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 213
    iget-boolean v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mHasIconTintList:Z

    if-eqz v1, :cond_1f

    .line 214
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_12

    .line 215
    :cond_e
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_12
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 216
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 218
    :cond_1f
    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    iget v2, p0, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_52

    .line 219
    :cond_27
    iget-boolean v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mNeedsEmptyIcon:Z

    if-eqz v1, :cond_52

    .line 220
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_50

    .line 221
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroid/support/design/R$drawable;->navigation_empty_icon:I

    .line 222
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 221
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_50

    .line 224
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    iget v2, p0, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    :cond_50
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 229
    :cond_52
    :goto_52
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 252
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 253
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mHasIconTintList:Z

    .line 254
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_18

    .line 256
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .registers 2

    .line 269
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->mNeedsEmptyIcon:Z

    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 2

    .line 261
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 265
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 187
    iget-object p0, p0, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showsIcon()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
