.class public Landroid/support/v7/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 68
    sget v0, Landroid/support/v7/appcompat/R$attr;->listMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuView:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p2

    .line 77
    sget p3, Landroid/support/v7/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 78
    sget p3, Landroid/support/v7/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 80
    sget p3, Landroid/support/v7/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 82
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 83
    sget p1, Landroid/support/v7/appcompat/R$styleable;->MenuView_subMenuArrow:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_e

    .line 303
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 305
    :cond_e
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private insertCheckBox()V
    .registers 4

    .line 284
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 285
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_checkbox:I

    const/4 v2, 0x0

    .line 286
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 288
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private insertIconView()V
    .registers 4

    .line 269
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 270
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 272
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private insertRadioButton()V
    .registers 4

    .line 276
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 277
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_radio:I

    const/4 v2, 0x0

    .line 278
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 280
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .registers 3

    .line 210
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 211
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    :goto_c
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 1

    .line 140
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .registers 4

    .line 109
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 110
    iput p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mMenuType:I

    .line 112
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 p2, 0x0

    goto :goto_e

    :cond_c
    const/16 p2, 0x8

    :goto_e
    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 114
    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 116
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p2

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 117
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 119
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ListMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 92
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 94
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 95
    iget v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 96
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 100
    :cond_20
    sget v0, Landroid/support/v7/appcompat/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 101
    sget v0, Landroid/support/v7/appcompat/R$id;->submenuarrow:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    .line 103
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 257
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_20

    .line 259
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 260
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 261
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_20

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_20

    .line 262
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 265
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckable(Z)V
    .registers 5

    if-nez p1, :cond_b

    .line 145
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_b

    return-void

    .line 154
    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 155
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_1a

    .line 156
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 158
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 159
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_2a

    .line 161
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_26

    .line 162
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 164
    :cond_26
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 165
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    :goto_2a
    const/16 v2, 0x8

    if-eqz p1, :cond_51

    .line 169
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_3b

    const/4 p0, 0x0

    goto :goto_3c

    :cond_3b
    move p0, v2

    .line 172
    :goto_3c
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-eq p1, p0, :cond_45

    .line 173
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_45
    if-eqz v1, :cond_63

    .line 177
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p0

    if-eq p0, v2, :cond_63

    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_63

    .line 181
    :cond_51
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_5a

    .line 182
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 184
    :cond_5a
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_63

    .line 185
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_63
    :goto_63
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 194
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 195
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_f

    .line 196
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 198
    :cond_f
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    goto :goto_1b

    .line 200
    :cond_12
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_19

    .line 201
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 203
    :cond_19
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 206
    :goto_1b
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    .line 124
    iput-boolean p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 231
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_18

    .line 232
    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_18

    return-void

    .line 236
    :cond_18
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_23

    if-nez p1, :cond_23

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_23

    return-void

    .line 240
    :cond_23
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_2a

    .line 241
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertIconView()V

    :cond_2a
    if-nez p1, :cond_39

    .line 244
    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_31

    goto :goto_39

    .line 251
    :cond_31
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4f

    .line 245
    :cond_39
    :goto_39
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4f

    .line 248
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 4

    if-eqz p1, :cond_c

    .line 217
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    const/16 p1, 0x8

    :goto_e
    if-nez p1, :cond_1b

    .line 221
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_1b
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_28

    .line 225
    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_28
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_16

    .line 130
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_25

    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 134
    :cond_16
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_25

    iget-object p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public showsIcon()Z
    .registers 1

    .line 298
    iget-boolean p0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return p0
.end method
