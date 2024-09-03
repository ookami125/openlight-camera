.class public Landroid/support/v13/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentTabHost$SavedState;,
        Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;,
        Landroid/support/v13/app/FragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v13/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 124
    invoke-direct {p0, p1, v0}, Landroid/support/v13/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/support/v13/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 321
    :goto_2
    iget-object v2, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 322
    iget-object v2, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 323
    iget-object v3, v2, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v0, v2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    if-eqz v0, :cond_65

    .line 330
    iget-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eq p1, v0, :cond_64

    if-nez p2, :cond_2c

    .line 332
    iget-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 334
    :cond_2c
    iget-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eqz p1, :cond_3d

    .line 335
    iget-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    iget-object p1, p1, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz p1, :cond_3d

    .line 336
    iget-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    iget-object p1, p1, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_3d
    if-eqz v0, :cond_62

    .line 340
    iget-object p1, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-nez p1, :cond_5d

    .line 341
    iget-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v1, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 342
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 341
    invoke-static {p1, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 343
    iget p1, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    iget-object v1, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    iget-object v2, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_62

    .line 345
    :cond_5d
    iget-object p1, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 349
    :cond_62
    :goto_62
    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    :cond_64
    return-object p2

    .line 328
    :cond_65
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No tab known for tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ensureContent()V
    .registers 4

    .line 206
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2c

    .line 207
    iget v0, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroid/support/v13/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 208
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_13

    goto :goto_2c

    .line 209
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

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

    .line 144
    invoke-virtual {p0, v0}, Landroid/support/v13/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 145
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/support/v13/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setId(I)V

    const/4 v0, 0x0

    .line 153
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 154
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x1020011

    .line 159
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 160
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 163
    iget-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget p0, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 164
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5c
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v0, 0x1

    .line 133
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100f3

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
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

    .line 221
    new-instance v0, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;

    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 222
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 226
    iget-boolean p2, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    if-eqz p2, :cond_39

    .line 230
    iget-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p2

    iput-object p2, v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 231
    iget-object p2, v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz p2, :cond_39

    iget-object p2, v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_39

    .line 232
    iget-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 233
    iget-object p3, v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 234
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commit()I

    .line 238
    :cond_39
    iget-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .line 244
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 246
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 251
    :goto_9
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 252
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 253
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v5, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 254
    iget-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_47

    iget-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_47

    .line 255
    iget-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 259
    iput-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    goto :goto_47

    :cond_3a
    if-nez v1, :cond_42

    .line 264
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 266
    :cond_42
    iget-object v3, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_4a
    const/4 v2, 0x1

    .line 273
    iput-boolean v2, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    .line 274
    invoke-direct {p0, v0, v1}, Landroid/support/v13/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 276
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 277
    iget-object p0, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_5b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 283
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 297
    instance-of v0, p1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_8

    .line 298
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 301
    :cond_8
    check-cast p1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    .line 302
    invoke-virtual {p1}, Landroid/support/v13/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 303
    iget-object p1, p1, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 289
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v13/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 291
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3

    .line 308
    iget-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0}, Landroid/support/v13/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 311
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 314
    :cond_e
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_17

    .line 315
    iget-object p0, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {p0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .registers 2

    .line 217
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .registers 3

    .line 182
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 183
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 184
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 186
    invoke-direct {p0}, Landroid/support/v13/app/FragmentTabHost;->ensureContent()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .registers 4

    .line 190
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 191
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 192
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 194
    iput p3, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    .line 195
    invoke-direct {p0}, Landroid/support/v13/app/FragmentTabHost;->ensureContent()V

    .line 196
    iget-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 200
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_21

    const p1, 0x1020012

    .line 201
    invoke-virtual {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->setId(I)V

    :cond_21
    return-void
.end method
