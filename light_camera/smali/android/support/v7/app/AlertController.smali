.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$CheckedItemAdapter;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$RecycleListView;,
        Landroid/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroid/support/v7/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 7

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 96
    iput v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 106
    iput v1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 117
    iput v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 121
    new-instance v1, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 178
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    .line 180
    iput-object p3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 181
    new-instance p3, Landroid/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 183
    sget-object p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v1, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 186
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 187
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 189
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 190
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 191
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 192
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 193
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 194
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_showTitle:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    .line 196
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    invoke-virtual {p2, v0}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 5

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 207
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 211
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_14
    if-lez v0, :cond_23

    add-int/lit8 v0, v0, -0x1

    .line 215
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 216
    invoke-static {v3}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1

    :cond_23
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .registers 3

    .line 810
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    .line 811
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 812
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 813
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    const/4 v2, -0x1

    .line 741
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v0

    .line 740
    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz p2, :cond_1e

    const/4 p1, 0x1

    .line 745
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    move v0, v1

    .line 744
    :cond_1b
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_f

    .line 432
    instance-of p0, p2, Landroid/view/ViewStub;

    if-eqz p0, :cond_c

    .line 433
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 436
    :cond_c
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_f
    if-eqz p2, :cond_1e

    .line 441
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 442
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 443
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 448
    :cond_1e
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_28

    .line 449
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 452
    :cond_28
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private selectContentView()I
    .registers 3

    .line 231
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    .line 232
    iget p0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    return p0

    .line 234
    :cond_7
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 235
    iget p0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    return p0

    .line 237
    :cond_f
    iget p0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    return p0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 9

    .line 551
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 552
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 554
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_24

    .line 556
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    if-eqz v0, :cond_1e

    .line 559
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    if-eqz v1, :cond_7a

    .line 562
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7a

    :cond_24
    const/4 p2, 0x0

    if-eqz v0, :cond_2f

    and-int/lit8 p4, p3, 0x1

    if-nez p4, :cond_2f

    .line 567
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, p2

    :cond_2f
    if-eqz v1, :cond_39

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_39

    .line 571
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3a

    :cond_39
    move-object p2, v1

    :goto_3a
    if-nez v0, :cond_3e

    if-eqz p2, :cond_7a

    .line 579
    :cond_3e
    iget-object p3, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz p3, :cond_57

    .line 581
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance p3, Landroid/support/v7/app/AlertController$2;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 591
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance p3, Landroid/support/v7/app/AlertController$3;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7a

    .line 597
    :cond_57
    iget-object p3, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p3, :cond_70

    .line 599
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance p3, Landroid/support/v7/app/AlertController$4;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 610
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance p3, Landroid/support/v7/app/AlertController$5;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7a

    :cond_70
    if-eqz v0, :cond_75

    .line 619
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_75
    if-eqz p2, :cond_7a

    .line 622
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 8

    const v0, 0x1020019

    .line 754
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 755
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_25

    .line 758
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_32

    .line 760
    :cond_25
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    :goto_32
    const v4, 0x102001a

    .line 765
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 766
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 769
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_60

    .line 771
    :cond_52
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_60
    const v4, 0x102001b

    .line 777
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 778
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 781
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8e

    .line 783
    :cond_80
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 789
    :goto_8e
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_af

    if-ne v0, v1, :cond_9e

    .line 795
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_af

    :cond_9e
    const/4 v4, 0x2

    if-ne v0, v4, :cond_a7

    .line 797
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_af

    :cond_a7
    const/4 v4, 0x4

    if-ne v0, v4, :cond_af

    .line 799
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    :cond_af
    :goto_af
    if-eqz v0, :cond_b2

    goto :goto_b3

    :cond_b2
    move v1, v3

    :goto_b3
    if-nez v1, :cond_b8

    .line 805
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b8
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 5

    .line 710
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 711
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 712
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 715
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 716
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_27

    return-void

    .line 720
    :cond_27
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_33

    .line 721
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 723
    :cond_33
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 726
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_62

    .line 727
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 728
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 729
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 730
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_65

    .line 733
    :cond_62
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_65
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 7

    .line 631
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 632
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    goto :goto_1a

    .line 633
    :cond_8
    iget v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_19

    .line 634
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 635
    iget v2, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    if-eqz v1, :cond_25

    .line 641
    invoke-static {v0}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 642
    :cond_25
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2c
    if-eqz v1, :cond_5e

    .line 647
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 648
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_50

    .line 651
    iget v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    iget v2, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    iget v3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 655
    :cond_50
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_63

    .line 656
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    goto :goto_63

    :cond_5e
    const/16 p0, 0x8

    .line 659
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_63
    :goto_63
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 7

    .line 664
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_20

    .line 666
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 669
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 672
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 673
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9c

    .line 675
    :cond_20
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 677
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_89

    .line 678
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_89

    .line 680
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 681
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget p1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    if-eqz p1, :cond_5a

    .line 687
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget p0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9c

    .line 688
    :cond_5a
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_66

    .line 689
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9c

    .line 693
    :cond_66
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 694
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 695
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 696
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 693
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 697
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9c

    .line 701
    :cond_89
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 702
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_9c
    return-void
.end method

.method private setupView()V
    .registers 10

    .line 456
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 457
    sget v1, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 458
    sget v2, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 459
    sget v3, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 463
    sget v4, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 464
    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 466
    sget v4, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 467
    sget v5, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 468
    sget v6, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 471
    invoke-direct {p0, v4, v1}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 472
    invoke-direct {p0, v5, v2}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 473
    invoke-direct {p0, v6, v3}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 475
    invoke-direct {p0, v2}, Landroid/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 476
    invoke-direct {p0, v3}, Landroid/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 477
    invoke-direct {p0, v1}, Landroid/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5a

    .line 480
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5a

    move v0, v5

    goto :goto_5b

    :cond_5a
    move v0, v6

    :goto_5b
    if-eqz v1, :cond_65

    .line 482
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_65

    move v7, v5

    goto :goto_66

    :cond_65
    move v7, v6

    :goto_66
    if-eqz v3, :cond_70

    .line 484
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_70

    move v3, v5

    goto :goto_71

    :cond_70
    move v3, v6

    :goto_71
    if-nez v3, :cond_80

    if-eqz v2, :cond_80

    .line 489
    sget v4, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 491
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_80
    if-eqz v7, :cond_a4

    .line 498
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v4, :cond_8b

    .line 499
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    :cond_8b
    const/4 v4, 0x0

    .line 504
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v8, :cond_96

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v8, :cond_96

    if-eqz v0, :cond_9e

    :cond_96
    if-nez v0, :cond_9e

    .line 506
    sget v4, Landroid/support/v7/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_9e
    if-eqz v4, :cond_b1

    .line 511
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b1

    :cond_a4
    if-eqz v2, :cond_b1

    .line 515
    sget v1, Landroid/support/v7/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 517
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :cond_b1
    :goto_b1
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v1, v1, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v1, :cond_be

    .line 523
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    check-cast v1, Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v1, v7, v3}, Landroid/support/v7/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_be
    if-nez v0, :cond_d4

    .line 528
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_c7

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    goto :goto_c9

    :cond_c7
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    :goto_c9
    if-eqz v0, :cond_d4

    if-eqz v3, :cond_ce

    const/4 v6, 0x2

    :cond_ce
    or-int v1, v7, v6

    const/4 v3, 0x3

    .line 532
    invoke-direct {p0, v2, v0, v1, v3}, Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 537
    :cond_d4
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_ec

    .line 538
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_ec

    .line 539
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 540
    iget p0, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    const/4 v1, -0x1

    if-le p0, v1, :cond_ec

    .line 542
    invoke-virtual {v0, p0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 543
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_ec
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .registers 4

    .line 172
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Landroid/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 174
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 2

    packed-switch p1, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    .line 399
    :pswitch_5
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 401
    :pswitch_8
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 403
    :pswitch_b
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .registers 4

    .line 387
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 388
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 389
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 1

    .line 393
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public installContent()V
    .registers 3

    .line 225
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    .line 226
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 227
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 411
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz p1, :cond_e

    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 416
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz p1, :cond_e

    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 5

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 316
    iget-object p4, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    packed-switch p1, :pswitch_data_24

    .line 337
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 322
    :pswitch_15
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 323
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_23

    .line 327
    :pswitch_1a
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 328
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_23

    .line 332
    :pswitch_1f
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 333
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .registers 2

    .line 297
    iput p1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    .line 251
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 349
    iput p1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 351
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    if-eqz p1, :cond_19

    .line 353
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget p0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 356
    :cond_19
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_20
    :goto_20
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 367
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 368
    iput v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 370
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_16

    .line 372
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 375
    :cond_16
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 255
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 257
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 241
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 242
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 243
    iget-object p0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setView(I)V
    .registers 3

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 266
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 267
    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 274
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 275
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 276
    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 6

    .line 284
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 285
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 287
    iput p2, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 288
    iput p3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 289
    iput p4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 290
    iput p5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method
