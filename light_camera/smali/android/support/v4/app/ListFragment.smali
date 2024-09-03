.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ListFragment.java"


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/support/v4/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/support/v4/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .registers 4

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    return-void

    .line 328
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 332
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_14

    .line 333
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    goto :goto_85

    :cond_14
    const v1, 0xff0001

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 336
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v1, :cond_2d

    const v1, 0x1020004

    .line 337
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    goto :goto_34

    .line 339
    :cond_2d
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_34
    const v1, 0xff0002

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    const v1, 0xff0003

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    const v1, 0x102000a

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 344
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_63

    if-nez v0, :cond_5b

    .line 346
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    :cond_5b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_63
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 355
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_73

    .line 356
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_85

    .line 357
    :cond_73
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_85

    .line 358
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_85
    :goto_85
    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 363
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9c

    .line 365
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    .line 366
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 367
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_a4

    .line 371
    :cond_9c
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_a4

    const/4 v0, 0x0

    .line 372
    invoke-direct {p0, v0, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    .line 375
    :cond_a4
    :goto_a4
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 330
    :cond_ac
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Content view not yet created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setListShown(ZZ)V
    .registers 7

    .line 282
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 283
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_7c

    .line 286
    iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    if-ne v0, p1, :cond_c

    return-void

    .line 289
    :cond_c
    iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    if-eqz p1, :cond_4a

    if-eqz p2, :cond_35

    .line 292
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 293
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 292
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 295
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 294
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3f

    .line 297
    :cond_35
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 298
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 300
    :goto_3f
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7b

    :cond_4a
    if-eqz p2, :cond_67

    .line 304
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 305
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 304
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 306
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 307
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 306
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_71

    .line 309
    :cond_67
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 310
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 312
    :goto_71
    iget-object p1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_7b
    return-void

    .line 284
    :cond_7c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t be used with a custom content view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .registers 1

    .line 321
    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 1

    .line 224
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 225
    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object p0
.end method

.method public getSelectedItemId()J
    .registers 3

    .line 216
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 217
    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 1

    .line 208
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 209
    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .line 93
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 95
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p3, 0xff0002

    .line 100
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 p3, 0x1

    .line 101
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p3, 0x8

    .line 102
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 p3, 0x11

    .line 103
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 105
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0003

    .line 116
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 118
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0xff0001

    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 120
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance p3, Landroid/widget/ListView;

    invoke-direct {p3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p0, 0x102000a

    .line 125
    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setId(I)V

    const/4 p0, 0x0

    .line 126
    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 127
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 157
    iput-boolean v1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 158
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 159
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 160
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 146
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 4

    .line 234
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 235
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 238
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_17

    .line 240
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 242
    :cond_17
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    return-void

    .line 236
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t be used with a custom content view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 6

    .line 181
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 182
    :goto_9
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 183
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_28

    .line 184
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    if-nez p1, :cond_28

    if-nez v0, :cond_28

    .line 188
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_25

    move v1, v2

    :cond_25
    invoke-direct {p0, v2, v1}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    :cond_28
    return-void
.end method

.method public setListShown(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 260
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setSelection(I)V
    .registers 2

    .line 200
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 201
    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
