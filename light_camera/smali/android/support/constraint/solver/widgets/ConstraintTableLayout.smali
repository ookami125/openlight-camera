.class public Landroid/support/constraint/solver/widgets/ConstraintTableLayout;
.super Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;,
        Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field private static final ALIGN_FULL:I = 0x3

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field private mHorizontalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mNumCols:I

.field private mNumRows:I

.field private mPadding:I

.field private mVerticalGrowth:Z

.field private mVerticalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private system:Landroid/support/constraint/solver/LinearSystem;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 v0, 0x8

    .line 31
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 p1, 0x8

    .line 31
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 401
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>(IIII)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 p1, 0x8

    .line 31
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 401
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    return-void
.end method

.method private setChildrenConnections()V
    .registers 12

    .line 479
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_e6

    .line 482
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 483
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v4

    add-int/2addr v2, v4

    .line 485
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    rem-int v4, v2, v4

    .line 486
    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int v5, v2, v5

    .line 488
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    .line 489
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 490
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 491
    iget-object v7, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 492
    iget-object v8, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 493
    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 495
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 496
    invoke-virtual {v6, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    iget v10, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v9, v6, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 497
    instance-of v6, v7, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v6, :cond_5e

    .line 498
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 499
    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    iget v9, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v6, v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_6f

    .line 501
    :cond_5e
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 502
    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    iget v9, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v6, v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 506
    :goto_6f
    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    packed-switch v4, :pswitch_data_e8

    goto :goto_a8

    .line 508
    :pswitch_75
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_a8

    .line 519
    :pswitch_7b
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 521
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_a8

    .line 512
    :pswitch_92
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 514
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 526
    :goto_a8
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 527
    invoke-virtual {v8, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v4, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 528
    instance-of v4, v5, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_cf

    .line 529
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 530
    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_e0

    .line 532
    :cond_cf
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 533
    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    :goto_e0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_e6
    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_92
        :pswitch_7b
        :pswitch_75
    .end packed-switch
.end method

.method private setHorizontalSlices()V
    .registers 8

    .line 451
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    move-object v3, p0

    move v2, v0

    move v4, v1

    .line 455
    :goto_f
    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ge v2, v5, :cond_44

    .line 456
    new-instance v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    invoke-direct {v5, p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;-><init>(Landroid/support/constraint/solver/widgets/ConstraintTableLayout;)V

    .line 457
    iput-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 458
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_38

    .line 459
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    .line 460
    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 461
    invoke-virtual {v3, p0}, Landroid/support/constraint/solver/widgets/Guideline;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    float-to-int v6, v4

    .line 462
    invoke-virtual {v3, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(I)V

    add-float/2addr v4, v1

    .line 464
    iput-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 465
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 467
    :cond_38
    iput-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 469
    :goto_3a
    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 470
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 472
    :cond_44
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method private setVerticalSlices()V
    .registers 7

    .line 422
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    move-object v2, p0

    move v3, v1

    .line 426
    :goto_e
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ge v0, v4, :cond_43

    .line 427
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    invoke-direct {v4, p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;-><init>(Landroid/support/constraint/solver/widgets/ConstraintTableLayout;)V

    .line 428
    iput-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 429
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    if-ge v0, v2, :cond_37

    .line 430
    new-instance v2, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v2}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    .line 431
    invoke-virtual {v2, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 432
    invoke-virtual {v2, p0}, Landroid/support/constraint/solver/widgets/Guideline;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    float-to-int v5, v3

    .line 433
    invoke-virtual {v2, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(I)V

    add-float/2addr v3, v1

    .line 435
    iput-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 436
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 438
    :cond_37
    iput-object p0, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 440
    :goto_39
    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 441
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 443
    :cond_43
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method private updateDebugSolverNames()V
    .registers 8

    .line 404
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    if-nez v0, :cond_5

    return-void

    .line 407
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_37

    .line 409
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".VG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 411
    :cond_37
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3d
    if-ge v1, v0, :cond_67

    .line 413
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Guideline;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".HG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_67
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .registers 11

    .line 314
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 315
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 319
    :cond_c
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 322
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    if-ne p1, v1, :cond_6e

    .line 323
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    const/4 v4, 0x1

    if-ge v3, v1, :cond_39

    .line 325
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/Guideline;

    .line 327
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_2f

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 326
    :goto_30
    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    .line 328
    invoke-virtual {v5, p1, p2}, Landroid/support/constraint/solver/widgets/Guideline;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 330
    :cond_39
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_40
    if-ge v3, v1, :cond_5e

    .line 332
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/Guideline;

    .line 334
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_54

    move v6, v4

    goto :goto_55

    :cond_54
    move v6, v2

    .line 333
    :goto_55
    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    .line 335
    invoke-virtual {v5, p1, p2}, Landroid/support/constraint/solver/widgets/Guideline;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_5e
    :goto_5e
    if-ge v2, v0, :cond_6e

    .line 338
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 339
    invoke-virtual {v1, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_6e
    return-void
.end method

.method public computeGuidelinesPercentPositions()V
    .registers 5

    .line 578
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 580
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 582
    :cond_18
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1e
    if-ge v1, v0, :cond_2e

    .line 584
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public cycleColumnAlignment(I)V
    .registers 3

    .line 252
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 253
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_19

    :pswitch_e
    const/4 v0, 0x1

    .line 258
    iput v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    goto :goto_19

    :pswitch_12
    const/4 v0, 0x0

    .line 255
    iput v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    goto :goto_19

    :pswitch_16
    const/4 v0, 0x2

    .line 261
    iput v0, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 264
    :goto_19
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public getColumnAlignmentRepresentation(I)Ljava/lang/String;
    .registers 3

    .line 158
    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 159
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const-string p0, "L"

    return-object p0

    .line 161
    :cond_10
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez p1, :cond_17

    const-string p0, "C"

    return-object p0

    .line 163
    :cond_17
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    const-string p0, "F"

    return-object p0

    .line 165
    :cond_1f
    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_27

    const-string p0, "R"

    return-object p0

    :cond_27
    const-string p0, "!"

    return-object p0
.end method

.method public getColumnsAlignmentRepresentation()Ljava/lang/String;
    .registers 7

    .line 134
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_70

    .line 137
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 138
    iget v4, v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    .line 140
    :cond_2a
    iget v4, v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v4, :cond_40

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "C"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    .line 142
    :cond_40
    iget v4, v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_57

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "F"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    .line 144
    :cond_57
    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6d

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "R"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_70
    return-object v1
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNumCols()I
    .registers 1

    .line 116
    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    return p0
.end method

.method public getNumRows()I
    .registers 1

    .line 107
    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    return p0
.end method

.method public getPadding()I
    .registers 1

    .line 125
    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    return p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    const-string p0, "ConstraintTableLayout"

    return-object p0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handlesInternalConstraints()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isVerticalGrowth()Z
    .registers 1

    .line 208
    iget-boolean p0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    return p0
.end method

.method public setColumnAlignment(II)V
    .registers 4

    .line 239
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 240
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 241
    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 242
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    :cond_15
    return-void
.end method

.method public setColumnAlignment(Ljava/lang/String;)V
    .registers 7

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_35

    .line 274
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_32

    :cond_15
    const/16 v4, 0x43

    if-ne v3, v4, :cond_1d

    .line 278
    invoke-virtual {p0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_32

    :cond_1d
    const/16 v4, 0x46

    if-ne v3, v4, :cond_26

    const/4 v3, 0x3

    .line 280
    invoke-virtual {p0, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_32

    :cond_26
    const/16 v4, 0x52

    if-ne v3, v4, :cond_2f

    const/4 v3, 0x2

    .line 282
    invoke-virtual {p0, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_32

    .line 284
    :cond_2f
    invoke-virtual {p0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_35
    return-void
.end method

.method public setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V
    .registers 3

    .line 396
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->system:Landroid/support/constraint/solver/LinearSystem;

    .line 397
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method public setNumCols(I)V
    .registers 3

    .line 179
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_10

    .line 180
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 181
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    .line 182
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    :cond_10
    return-void
.end method

.method public setNumRows(I)V
    .registers 3

    .line 194
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-nez v0, :cond_10

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_10

    .line 195
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 196
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    .line 197
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    :cond_10
    return-void
.end method

.method public setPadding(I)V
    .registers 3

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    .line 227
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mPadding:I

    :cond_5
    return-void
.end method

.method public setTableDimensions()V
    .registers 5

    .line 350
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 352
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 353
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    add-int/2addr v0, v2

    .line 356
    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    .line 357
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-nez v1, :cond_27

    .line 358
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setNumCols(I)V

    .line 360
    :cond_27
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int v1, v0, v1

    .line 361
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    mul-int/2addr v3, v1

    if-ge v3, v0, :cond_32

    add-int/lit8 v1, v1, 0x1

    .line 364
    :cond_32
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_42

    return-void

    .line 368
    :cond_42
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 369
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    goto :goto_6f

    .line 371
    :cond_48
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-nez v1, :cond_4f

    .line 372
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setNumRows(I)V

    .line 374
    :cond_4f
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    div-int v1, v0, v1

    .line 375
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    mul-int/2addr v3, v1

    if-ge v3, v0, :cond_5a

    add-int/lit8 v1, v1, 0x1

    .line 378
    :cond_5a
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ne v0, v1, :cond_6a

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumRows:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_6a

    return-void

    .line 382
    :cond_6a
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 383
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    .line 385
    :goto_6f
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    return-void
.end method

.method public setVerticalGrowth(Z)V
    .registers 2

    .line 217
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .registers 7

    .line 547
    invoke-super {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 550
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    if-ne p1, v0, :cond_35

    .line 551
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_1f

    .line 553
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    .line 554
    invoke-virtual {v3, p1, p2}, Landroid/support/constraint/solver/widgets/Guideline;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 556
    :cond_1f
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_25
    if-ge v1, v0, :cond_35

    .line 558
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Guideline;

    .line 559
    invoke-virtual {v2, p1, p2}, Landroid/support/constraint/solver/widgets/Guideline;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_35
    return-void
.end method
