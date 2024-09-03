.class Landroid/support/v4/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    .line 43
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .registers 2

    .line 38
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 4

    .line 38
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
    .registers 5

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .registers 3

    .line 38
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4

    .line 38
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 566
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 567
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 568
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 569
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private static addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/support/v4/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1037
    iget-object v10, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v10, :cond_c

    return-void

    .line 1041
    :cond_c
    iget v11, v10, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-nez v11, :cond_11

    return-void

    :cond_11
    if-eqz v3, :cond_1a

    .line 1045
    sget-object v4, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    iget v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aget v1, v4, v1

    goto :goto_1c

    :cond_1a
    iget v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    :goto_1c
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_7d

    packed-switch v1, :pswitch_data_ec

    move v1, v4

    move v12, v1

    move v13, v12

    goto/16 :goto_91

    :pswitch_28
    if-eqz p4, :cond_37

    .line 1053
    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_8c

    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_8c

    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_8c

    goto :goto_8a

    .line 1055
    :cond_37
    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    goto/16 :goto_8d

    :pswitch_3b
    if-eqz p4, :cond_4a

    .line 1070
    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_6e

    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_6e

    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_6e

    :goto_49
    goto :goto_6c

    .line 1072
    :cond_4a
    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_6e

    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_6e

    goto :goto_49

    :pswitch_53
    if-eqz p4, :cond_70

    .line 1079
    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v1, :cond_6e

    iget-object v1, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_6e

    iget-object v1, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1080
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6e

    iget v1, v10, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_6e

    :goto_6c
    move v1, v5

    goto :goto_79

    :cond_6e
    move v1, v4

    goto :goto_79

    .line 1083
    :cond_70
    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_6e

    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_6e

    goto :goto_6c

    :goto_79
    move v13, v1

    move v1, v4

    move v12, v5

    goto :goto_91

    :cond_7d
    :pswitch_7d
    if-eqz p4, :cond_82

    .line 1062
    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_8d

    .line 1064
    :cond_82
    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v1, :cond_8c

    iget-boolean v1, v10, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_8c

    :goto_8a
    move v1, v5

    goto :goto_8d

    :cond_8c
    move v1, v4

    :goto_8d
    move v12, v4

    move v13, v12

    move v4, v1

    move v1, v5

    .line 1088
    :goto_91
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v4, :cond_a3

    .line 1091
    invoke-static {v6, v2, v11}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v6

    .line 1092
    iput-object v10, v6, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 1093
    iput-boolean v3, v6, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1094
    iput-object v0, v6, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    :cond_a3
    move-object v14, v6

    const/4 v9, 0x0

    if-nez p4, :cond_cb

    if-eqz v1, :cond_cb

    if-eqz v14, :cond_b1

    .line 1097
    iget-object v1, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    if-ne v1, v10, :cond_b1

    .line 1098
    iput-object v9, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 1105
    :cond_b1
    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1106
    iget v1, v10, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v1, v5, :cond_cb

    iget v1, v4, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v1, v5, :cond_cb

    iget-boolean v1, v0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v1, :cond_cb

    .line 1108
    invoke-virtual {v4, v10}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v5, v10

    move v9, v1

    .line 1109
    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_cb
    if-eqz v13, :cond_dd

    if-eqz v14, :cond_d3

    .line 1112
    iget-object v1, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_dd

    .line 1114
    :cond_d3
    invoke-static {v14, v2, v11}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v14

    .line 1115
    iput-object v10, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 1116
    iput-boolean v3, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1117
    iput-object v0, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    :cond_dd
    if-nez p4, :cond_ea

    if-eqz v12, :cond_ea

    if-eqz v14, :cond_ea

    .line 1120
    iget-object v0, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    if-ne v0, v10, :cond_ea

    const/4 v0, 0x0

    .line 1122
    iput-object v0, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    :cond_ea
    return-void

    nop

    :pswitch_data_ec
    .packed-switch 0x3
        :pswitch_53
        :pswitch_3b
        :pswitch_28
        :pswitch_53
        :pswitch_7d
    .end packed-switch
.end method

.method public static calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 993
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 995
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord$Op;

    .line 996
    invoke-static {p0, v3, p1, v1, p2}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_7
    if-lt p4, p3, :cond_5c

    .line 146
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 147
    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_59

    .line 150
    :cond_16
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 151
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_59

    .line 152
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_31

    .line 156
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 157
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_38

    .line 159
    :cond_31
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 160
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_38
    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_59

    .line 163
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v6}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_53

    .line 167
    invoke-virtual {v0, v5, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 169
    :cond_53
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_59
    :goto_59
    add-int/lit8 p4, p4, -0x1

    goto :goto_7

    :cond_5c
    return-object v0
.end method

.method public static calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1013
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_23

    .line 1015
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord$Op;

    .line 1016
    invoke-static {p0, v2, p1, v1, p2}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_23
    return-void
.end method

.method private static callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 898
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object p0

    goto :goto_b

    .line 899
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_3d

    .line 901
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 902
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1c

    move v1, v0

    goto :goto_20

    .line 903
    :cond_1c
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    :goto_20
    if-ge v0, v1, :cond_33

    .line 905
    invoke-virtual {p3, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual {p3, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_33
    const/4 p3, 0x0

    if-eqz p4, :cond_3a

    .line 909
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3d

    .line 911
    :cond_3a
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private static captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .registers 7
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 759
    iget-object v0, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 760
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 761
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_74

    if-eqz p1, :cond_74

    if-nez v1, :cond_11

    goto :goto_74

    .line 765
    :cond_11
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 766
    invoke-static {p1, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 770
    iget-object v1, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 771
    iget-boolean p2, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz p2, :cond_26

    .line 772
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object p2

    .line 773
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_2c

    .line 775
    :cond_26
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object p2

    .line 776
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_2c
    if-eqz v0, :cond_31

    .line 780
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_31
    if-eqz p2, :cond_70

    .line 783
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 784
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3c
    if-ltz p2, :cond_73

    .line 785
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 786
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_56

    .line 788
    invoke-static {p0, v1}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 790
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 792
    :cond_56
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 793
    invoke-static {p0, v1}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 795
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    :goto_6d
    add-int/lit8 p2, p2, -0x1

    goto :goto_3c

    .line 800
    :cond_70
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransition;->retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    :cond_73
    return-object p1

    .line 762
    :cond_74
    :goto_74
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .registers 7
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 703
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    if-nez p1, :cond_9

    goto :goto_6e

    .line 707
    :cond_9
    iget-object p1, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 708
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 709
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 713
    iget-object v1, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 714
    iget-boolean p2, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz p2, :cond_24

    .line 715
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object p1

    .line 716
    iget-object p2, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_2a

    .line 718
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object p1

    .line 719
    iget-object p2, v1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 722
    :goto_2a
    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_66

    .line 724
    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 725
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_38
    if-ltz p1, :cond_6d

    .line 726
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_4c

    .line 729
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 730
    :cond_4c
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 731
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 732
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    :goto_63
    add-int/lit8 p1, p1, -0x1

    goto :goto_38

    .line 736
    :cond_66
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_6d
    return-object v0

    .line 704
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 5
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_22

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 922
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 924
    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_10
    if-eqz p2, :cond_15

    .line 927
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 929
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_23

    .line 930
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :cond_23
    :goto_23
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v3, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v0, p7

    .line 609
    iget-object v6, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 610
    iget-object v7, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    if-eqz v6, :cond_7a

    if-nez v7, :cond_13

    goto/16 :goto_7a

    .line 616
    :cond_13
    iget-boolean v8, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v2, p2

    move-object v4, v1

    goto :goto_26

    .line 618
    :cond_1f
    invoke-static {v6, v7, v8}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    move-object/from16 v2, p2

    .line 620
    :goto_26
    invoke-static {v2, v4, v3}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_32

    move-object v12, v1

    goto :goto_3a

    .line 626
    :cond_32
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v12, v4

    :goto_3a
    if-nez v10, :cond_41

    if-nez v0, :cond_41

    if-nez v12, :cond_41

    return-object v1

    :cond_41
    const/4 v4, 0x1

    .line 634
    invoke-static {v6, v7, v8, v5, v4}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    if-eqz v12, :cond_5e

    .line 638
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v11, p1

    .line 639
    invoke-static {v12, v11, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 641
    iget-boolean v4, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 642
    iget-object v13, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 643
    invoke-static {v12, v0, v5, v4, v13}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V

    if-eqz v10, :cond_60

    .line 646
    invoke-static {v10, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_60

    :cond_5e
    move-object/from16 v11, p1

    :cond_60
    :goto_60
    move-object v13, v1

    .line 654
    new-instance v14, Landroid/support/v4/app/FragmentTransition$4;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Landroid/support/v4/app/FragmentTransition$4;-><init>(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object v0, p0

    invoke-static {p0, v14}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    return-object v12

    :cond_7a
    :goto_7a
    return-object v1
.end method

.method private static configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 480
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 481
    iget-object v1, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_e

    .line 483
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const/4 v2, 0x0

    if-eqz v0, :cond_86

    if-nez v1, :cond_15

    goto/16 :goto_86

    .line 489
    :cond_15
    iget-boolean v3, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 490
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object v4, v2

    goto :goto_23

    .line 491
    :cond_1f
    invoke-static {v0, v1, v3}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 493
    :goto_23
    invoke-static {p2, v4, p3}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 496
    invoke-static {p2, v4, p3}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v6

    .line 499
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3d

    if-eqz v5, :cond_36

    .line 502
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->clear()V

    :cond_36
    if-eqz v6, :cond_3b

    .line 505
    invoke-virtual {v6}, Landroid/support/v4/util/ArrayMap;->clear()V

    :cond_3b
    move-object v4, v2

    goto :goto_4b

    .line 509
    :cond_3d
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 508
    invoke-static {p4, v5, v7}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    .line 511
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    .line 510
    invoke-static {p5, v6, p2}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    :goto_4b
    if-nez p6, :cond_52

    if-nez p7, :cond_52

    if-nez v4, :cond_52

    return-object v2

    :cond_52
    const/4 p2, 0x1

    .line 519
    invoke-static {v0, v1, v3, v5, p2}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    if-eqz v4, :cond_76

    .line 524
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-static {v4, p1, p4}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 527
    iget-boolean p1, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 528
    iget-object p2, p3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 529
    invoke-static {v4, p7, v5, p1, p2}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V

    .line 531
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 532
    invoke-static {v6, p3, p6, v3}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_73

    .line 535
    invoke-static {p6, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_73
    move-object p7, p1

    move-object p6, p2

    goto :goto_78

    :cond_76
    move-object p6, v2

    move-object p7, p6

    .line 542
    :goto_78
    new-instance v2, Landroid/support/v4/app/FragmentTransition$3;

    move-object p1, v2

    move-object p2, v0

    move-object p3, v1

    move p4, v3

    move-object p5, v6

    invoke-direct/range {p1 .. p7}, Landroid/support/v4/app/FragmentTransition$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v2}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    return-object v4

    :cond_86
    :goto_86
    return-object v2
.end method

.method private static configureTransitionsOrdered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
    .registers 24
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 292
    iget-object v1, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 293
    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v12, v0

    goto :goto_1d

    :cond_1c
    const/4 v12, 0x0

    :goto_1d
    if-nez v12, :cond_20

    return-void

    .line 298
    :cond_20
    iget-object v13, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 299
    iget-object v14, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 300
    iget-boolean v0, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 301
    iget-boolean v1, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 303
    invoke-static {v13, v0}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    .line 304
    invoke-static {v14, v1}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 306
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object v4, v6

    move-object/from16 v16, v5

    move-object v11, v6

    move-object v6, v15

    move-object/from16 v18, v7

    .line 309
    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v15, :cond_55

    if-nez v7, :cond_55

    move-object/from16 v0, v18

    if-nez v0, :cond_57

    return-void

    :cond_55
    move-object/from16 v0, v18

    .line 318
    :cond_57
    invoke-static {v0, v14, v11, v9}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_66

    .line 321
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_66

    :cond_64
    move-object v14, v0

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v14, 0x0

    .line 327
    :goto_67
    invoke-static {v15, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 329
    iget-boolean v0, v8, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-static {v15, v14, v7, v13, v0}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 333
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    move-object v3, v15

    move-object/from16 v4, v17

    move-object v5, v14

    move-object v6, v11

    move-object/from16 v8, v16

    .line 334
    invoke-static/range {v2 .. v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v0, v12

    move-object v8, v1

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    move-object v4, v15

    move-object/from16 v5, v17

    move-object v6, v14

    move-object v7, v11

    .line 337
    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    .line 339
    invoke-static {v12, v0, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 342
    invoke-static {v12, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 343
    invoke-static {v12, v0, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_9c
    return-void
.end method

.method private static configureTransitionsReordered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
    .registers 22
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    .line 197
    iget-object v1, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 198
    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    move-object v9, v0

    if-nez v9, :cond_1e

    return-void

    .line 203
    :cond_1e
    iget-object v10, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 204
    iget-object v11, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 205
    iget-boolean v12, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 206
    iget-boolean v0, v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 208
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-static {v10, v12}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    .line 211
    invoke-static {v11, v0}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object v4, v14

    move-object v5, v13

    move-object v6, v15

    move-object/from16 v16, v7

    .line 213
    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v15, :cond_51

    if-nez v0, :cond_51

    move-object/from16 v4, v16

    if-nez v4, :cond_53

    return-void

    :cond_51
    move-object/from16 v4, v16

    .line 222
    :cond_53
    invoke-static {v4, v11, v14, v8}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 225
    invoke-static {v15, v10, v13, v8}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v1, 0x4

    .line 228
    invoke-static {v8, v1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 230
    invoke-static {v15, v4, v0, v10, v12}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_83

    .line 234
    invoke-static {v4, v11, v5}, Landroid/support/v4/app/FragmentTransition;->replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    .line 236
    invoke-static {v13}, Landroid/support/v4/app/FragmentTransitionCompat21;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    move-object v1, v10

    move-object v2, v15

    move-object v3, v8

    move-object v6, v0

    move-object v7, v13

    .line 237
    invoke-static/range {v1 .. v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 240
    invoke-static {v9, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v1, p4

    .line 241
    invoke-static {v9, v14, v13, v11, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 243
    invoke-static {v8, v1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 244
    invoke-static {v0, v14, v13}, Landroid/support/v4/app/FragmentTransitionCompat21;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_83
    return-void
.end method

.method private static ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-nez p0, :cond_a

    .line 1135
    new-instance p0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    .line 1136
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    return-object p0
.end method

.method private static findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 809
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 811
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 812
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_b

    .line 429
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_f

    .line 430
    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    .line 428
    :goto_f
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_b

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_f

    .line 443
    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p0

    .line 441
    :goto_f
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 830
    iget-object p1, p1, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    if-eqz p2, :cond_2d

    if-eqz p0, :cond_2d

    .line 831
    iget-object p2, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz p2, :cond_2d

    iget-object p2, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 833
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    const/4 p2, 0x0

    if-eqz p3, :cond_1e

    .line 834
    iget-object p1, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_26

    :cond_1e
    iget-object p1, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 837
    :goto_26
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    if-eqz p0, :cond_19

    if-nez p1, :cond_5

    goto :goto_19

    :cond_5
    if-eqz p2, :cond_c

    .line 415
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_10

    .line 416
    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    .line 414
    :goto_10
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 417
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 5
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    if-eqz p3, :cond_12

    if-eqz p4, :cond_d

    .line 960
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p3

    goto :goto_13

    .line 961
    :cond_d
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p3

    goto :goto_13

    :cond_12
    const/4 p3, 0x1

    :goto_13
    if-eqz p3, :cond_1a

    .line 971
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1e

    .line 976
    :cond_1a
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    return-object p0
.end method

.method private static replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_25

    if-eqz p0, :cond_25

    .line 257
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 261
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 260
    invoke-static {p0, v0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 262
    iget-object p0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 263
    new-instance p1, Landroid/support/v4/app/FragmentTransition$1;

    invoke-direct {p1, p2}, Landroid/support/v4/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    :cond_25
    return-void
.end method

.method private static retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 876
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 877
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 878
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 879
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 17
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 371
    new-instance v8, Landroid/support/v4/app/FragmentTransition$2;

    move-object v0, v8

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object/from16 v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p0

    invoke-static {p0, v8}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    return-void
.end method

.method private static setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V
    .registers 6
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 855
    iget-object v0, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    iget-object v0, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 856
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    if-eqz p3, :cond_18

    .line 857
    iget-object p3, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 858
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_20

    :cond_18
    iget-object p3, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 859
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 860
    :goto_20
    invoke-virtual {p2, p3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 861
    invoke-static {p0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p1, :cond_2e

    .line 864
    invoke-static {p1, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_2e
    return-void
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 944
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_17

    .line 945
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 946
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method static startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 86
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    .line 90
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_62

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p3

    :goto_12
    if-ge v1, p4, :cond_30

    .line 94
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord;

    .line 95
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 97
    invoke-static {v2, v0, p5}, Landroid/support/v4/app/FragmentTransition;->calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_2d

    .line 99
    :cond_2a
    invoke-static {v2, v0, p5}, Landroid/support/v4/app/FragmentTransition;->calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 103
    :cond_30
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_62

    .line 104
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_62

    .line 107
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 108
    invoke-static {v4, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 112
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    if-eqz p5, :cond_5c

    .line 115
    invoke-static {p0, v4, v6, v1, v5}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsReordered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_5f

    .line 118
    :cond_5c
    invoke-static {p0, v4, v6, v1, v5}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsOrdered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V

    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_62
    return-void
.end method
