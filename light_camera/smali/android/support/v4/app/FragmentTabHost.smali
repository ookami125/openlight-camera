.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTabHost$SavedState;,
        Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;,
        Landroid/support/v4/app/FragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/FragmentTransaction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 334
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Landroid/support/v4/app/FragmentTabHost$TabInfo;

    move-result-object p1

    .line 335
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    if-eq v0, p1, :cond_48

    if-nez p2, :cond_10

    .line 337
    iget-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 340
    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    if-eqz v0, :cond_21

    .line 341
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    iget-object v0, v0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_21

    .line 342
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    iget-object v0, v0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_21
    if-eqz p1, :cond_46

    .line 347
    iget-object v0, p1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_41

    .line 348
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 349
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 348
    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 350
    iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    iget-object v1, p1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_46

    .line 352
    :cond_41
    iget-object v0, p1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 356
    :cond_46
    :goto_46
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    :cond_48
    return-object p2
.end method

.method private ensureContent()V
    .registers 4

    .line 217
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2c

    .line 218
    iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 219
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_13

    goto :goto_2c

    .line 220
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .registers 9

    const v0, 0x1020013

    .line 156
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 157
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setId(I)V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 166
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x1020011

    .line 171
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 172
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 175
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget p0, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 176
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5c
    return-void
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Landroid/support/v4/app/FragmentTabHost$TabInfo;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 365
    iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    .line 366
    iget-object v3, v2, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v0, 0x1

    .line 145
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100f3

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    .line 148
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/widget/TabHost$TabSpec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 233
    new-instance v0, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 235
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 238
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    if-eqz p2, :cond_39

    .line 242
    iget-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    iput-object p2, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 243
    iget-object p2, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_39

    iget-object p2, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_39

    .line 244
    iget-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 245
    iget-object p3, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 246
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 250
    :cond_39
    iget-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 8

    .line 256
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_4a

    .line 264
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    .line 265
    iget-object v5, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v6, v4, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 266
    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_47

    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_47

    .line 267
    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 271
    iput-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    goto :goto_47

    :cond_3a
    if-nez v2, :cond_42

    .line 276
    iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 278
    :cond_42
    iget-object v4, v4, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_4a
    const/4 v1, 0x1

    .line 285
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    .line 286
    invoke-direct {p0, v0, v2}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 288
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 289
    iget-object p0, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_5b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 295
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 309
    instance-of v0, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_8

    .line 310
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 313
    :cond_8
    check-cast p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    .line 314
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 315
    iget-object p1, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 301
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 303
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3

    .line 320
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 323
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 326
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_17

    .line 327
    iget-object p0, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {p0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .registers 2

    .line 228
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .registers 3

    .line 193
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 194
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 195
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 197
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .registers 4

    .line 201
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 202
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 203
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 205
    iput p3, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    .line 206
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V

    .line 207
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 211
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_21

    const p1, 0x1020012

    .line 212
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->setId(I)V

    :cond_21
    return-void
.end method
