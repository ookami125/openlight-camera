.class public Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
.super Landroid/support/constraint/solver/widgets/WidgetContainer;
.source "ConstraintWidgetContainer.java"


# static fields
.field static ALLOW_ROOT_GROUP:Z = true

.field private static final CHAIN_FIRST:I = 0x0

.field private static final CHAIN_FIRST_VISIBLE:I = 0x2

.field private static final CHAIN_LAST:I = 0x1

.field private static final CHAIN_LAST_VISIBLE:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_OPTIMIZE:Z = false

.field private static final FLAG_CHAIN_DANGLING:I = 0x1

.field private static final FLAG_CHAIN_OPTIMIZE:I = 0x0

.field private static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field private static final MAX_ITERATIONS:I = 0x8

.field public static final OPTIMIZATION_ALL:I = 0x2

.field public static final OPTIMIZATION_BASIC:I = 0x4

.field public static final OPTIMIZATION_CHAIN:I = 0x8

.field public static final OPTIMIZATION_NONE:I = 0x1

.field private static final USE_SNAPSHOT:Z = true

.field private static final USE_THREAD:Z = false


# instance fields
.field private flags:[Z

.field protected mBackgroundSystem:Landroid/support/constraint/solver/LinearSystem;

.field private mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mHeightMeasuredTooSmall:Z

.field private mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mHorizontalChainsSize:I

.field private mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field private mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

.field protected mSystem:Landroid/support/constraint/solver/LinearSystem;

.field private mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mVerticalChainsSize:I

.field private mWidthMeasuredTooSmall:Z

.field mWrapHeight:I

.field mWrapWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 92
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>()V

    .line 39
    new-instance v0, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {v0}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBackgroundSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 55
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v1, 0x4

    .line 56
    new-array v2, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 57
    new-array v2, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 58
    new-array v2, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v2, 0x2

    .line 66
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v2, 0x3

    .line 69
    new-array v2, v2, [Z

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    .line 76
    new-array v1, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 82
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>(II)V

    .line 39
    new-instance p1, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {p1}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBackgroundSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 55
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 p2, 0x4

    .line 56
    new-array v0, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 57
    new-array v0, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 58
    new-array v0, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v0, 0x2

    .line 66
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v0, 0x3

    .line 69
    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    .line 76
    new-array p2, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 82
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>(IIII)V

    .line 39
    new-instance p1, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {p1}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBackgroundSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 55
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 p2, 0x4

    .line 56
    new-array p3, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 57
    new-array p3, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 58
    new-array p3, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 p3, 0x2

    .line 66
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 p3, 0x3

    .line 69
    new-array p3, p3, [Z

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    .line 76
    new-array p2, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 82
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return-void
.end method

.method private addHorizontalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 4

    const/4 v0, 0x0

    .line 1849
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-ge v0, v1, :cond_f

    .line 1850
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1854
    :cond_f
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    if-lt v0, v1, :cond_27

    .line 1855
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1857
    :cond_27
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    aput-object p1, v0, v1

    .line 1858
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    return-void
.end method

.method private addVerticalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 4

    const/4 v0, 0x0

    .line 1868
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-ge v0, v1, :cond_f

    .line 1869
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1873
    :cond_f
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    if-lt v0, v1, :cond_27

    .line 1874
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1876
    :cond_27
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    aput-object p1, v0, v1

    .line 1877
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method

.method private applyHorizontalChain(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 36

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    const/4 v14, 0x0

    move v13, v14

    .line 357
    :goto_6
    iget v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-ge v13, v0, :cond_521

    .line 358
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v0, v13

    .line 359
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v0, v13

    const/4 v4, 0x0

    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->countMatchConstraintsChainedWidgets(Landroid/support/constraint/solver/LinearSystem;[Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;I[Z)I

    move-result v0

    .line 361
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_2c

    :cond_26
    :goto_26
    move v4, v13

    move/from16 v19, v14

    move-object v3, v15

    goto/16 :goto_518

    .line 366
    :cond_2c
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_57

    .line 367
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    :goto_37
    if-eqz v1, :cond_26

    .line 369
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 370
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 371
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    move-object v1, v2

    goto :goto_37

    .line 376
    :cond_57
    iget v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v3, :cond_5d

    move v3, v4

    goto :goto_5e

    :cond_5d
    move v3, v14

    .line 377
    :goto_5e
    iget v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v5, v2, :cond_64

    move v5, v4

    goto :goto_65

    :cond_64
    move v5, v14

    .line 379
    :goto_65
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_6d

    move v7, v4

    goto :goto_6e

    :cond_6d
    move v7, v14

    .line 380
    :goto_6e
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eq v8, v2, :cond_78

    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_8e

    :cond_78
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aget-boolean v8, v8, v14

    if-eqz v8, :cond_8e

    iget-boolean v8, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    if-eqz v8, :cond_8e

    if-nez v5, :cond_8e

    if-nez v7, :cond_8e

    iget v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v7, :cond_8e

    .line 384
    invoke-static {v6, v15, v0, v12}, Landroid/support/constraint/solver/widgets/Optimizer;->applyDirectResolutionHorizontalChain(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_26

    :cond_8e
    const/4 v11, 0x3

    const/16 v16, 0x0

    if-eqz v0, :cond_34b

    if-eqz v5, :cond_97

    goto/16 :goto_34b

    :cond_97
    const/4 v3, 0x0

    move v5, v3

    move-object/from16 v3, v16

    :goto_9b
    if-eqz v1, :cond_15f

    .line 488
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v8, :cond_119

    .line 489
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    if-eqz v3, :cond_b2

    .line 491
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v7, v3

    .line 494
    :cond_b2
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_c0

    move v3, v2

    goto :goto_c1

    :cond_c0
    move v3, v11

    .line 497
    :goto_c1
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v8, v9, v7, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 498
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 499
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_fb

    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v7, v1, :cond_fb

    .line 500
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    .line 503
    :cond_fb
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_109

    move v7, v2

    goto :goto_10a

    :cond_109
    move v7, v11

    .line 506
    :goto_10a
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    invoke-virtual {v15, v8, v9, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_156

    .line 508
    :cond_119
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    add-float/2addr v5, v3

    .line 510
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13c

    .line 511
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 512
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v11

    if-eq v1, v7, :cond_13d

    .line 513
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_13d

    :cond_13c
    move v3, v14

    .line 516
    :cond_13d
    :goto_13d
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v7, v8, v14, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 517
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    invoke-virtual {v15, v7, v8, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 520
    :goto_156
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v3

    move-object v3, v1

    move-object/from16 v1, v33

    goto/16 :goto_9b

    :cond_15f
    if-ne v0, v4, :cond_1e6

    .line 523
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, v14

    .line 524
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 525
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_17a

    .line 526
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v1, v3

    .line 528
    :cond_17a
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 529
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_18f

    .line 530
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v3, v5

    .line 532
    :cond_18f
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 533
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v11

    if-ne v0, v7, :cond_1a5

    .line 534
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 537
    :cond_1a5
    iget v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v7, v4, :cond_1cf

    .line 538
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v0, v7, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 539
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 540
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_26

    .line 542
    :cond_1cf
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v2, v7, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 543
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_26

    :cond_1e6
    move v1, v14

    :goto_1e7
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_26

    .line 547
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v1

    .line 548
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    add-int/lit8 v1, v1, 0x1

    aget-object v8, v8, v1

    .line 549
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 550
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 551
    iget-object v14, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 552
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 553
    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v11

    if-ne v8, v4, :cond_214

    .line 554
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 556
    :cond_214
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 557
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_247

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_247

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v11, v7, :cond_247

    .line 559
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v4, v11

    .line 561
    :cond_247
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v28, v0

    const/4 v0, 0x2

    invoke-virtual {v15, v9, v11, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 562
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 563
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_276

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_276

    .line 564
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_274

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    goto :goto_275

    :cond_274
    const/4 v4, 0x0

    :goto_275
    add-int/2addr v0, v4

    .line 566
    :cond_276
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v0, v0

    const/4 v11, 0x2

    invoke-virtual {v15, v10, v4, v0, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    if-ne v1, v3, :cond_303

    .line 569
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 570
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2b6

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2b6

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v8, :cond_2b6

    .line 572
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v0, v3

    .line 574
    :cond_2b6
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v4, 0x2

    invoke-virtual {v15, v14, v3, v0, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 575
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 576
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-ne v8, v3, :cond_2d0

    .line 577
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 579
    :cond_2d0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 580
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2f9

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2f9

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v8, :cond_2f9

    .line 582
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v3, v4

    .line 584
    :cond_2f9
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    const/4 v4, 0x2

    invoke-virtual {v15, v2, v0, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_304

    :cond_303
    const/4 v4, 0x2

    .line 587
    :goto_304
    iget v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v0, :cond_30d

    .line 588
    iget v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-virtual {v15, v10, v9, v0, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 591
    :cond_30d
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 592
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    iget v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 594
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 595
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 596
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 597
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v14

    move-object/from16 v26, v2

    .line 592
    invoke-virtual/range {v16 .. v27}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 598
    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v0, v28

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_1e7

    :cond_34b
    :goto_34b
    move-object v0, v1

    move-object/from16 v2, v16

    move-object v4, v2

    const/4 v7, 0x0

    :goto_350
    if-eqz v0, :cond_4ce

    .line 395
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v8, :cond_35e

    .line 397
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v7, 0x1

    aget-object v2, v2, v7

    move-object v14, v2

    const/4 v2, 0x1

    goto :goto_360

    :cond_35e
    move-object v14, v2

    move v2, v7

    :goto_360
    if-eqz v5, :cond_3b8

    .line 401
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 402
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    if-eqz v4, :cond_371

    .line 404
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    :cond_371
    if-eq v1, v0, :cond_375

    const/4 v4, 0x3

    goto :goto_376

    :cond_375
    const/4 v4, 0x1

    .line 411
    :goto_376
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v10, v11, v9, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 412
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_3b6

    .line 413
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 414
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3a0

    .line 415
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 416
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x3

    invoke-virtual {v15, v4, v7, v9, v11}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_412

    :cond_3a0
    const/4 v11, 0x3

    .line 419
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {v15, v9, v10, v6, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 421
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-virtual {v15, v4, v6, v7, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_412

    :cond_3b6
    const/4 v11, 0x3

    goto :goto_412

    :cond_3b8
    const/4 v11, 0x3

    const/4 v6, 0x5

    if-nez v3, :cond_3e7

    if-eqz v2, :cond_3e7

    if-eqz v4, :cond_3e7

    .line 427
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_3d2

    .line 428
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawRight()I

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_412

    .line 430
    :cond_3d2
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 431
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v4, v4

    invoke-virtual {v15, v7, v9, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_412

    :cond_3e7
    if-nez v3, :cond_421

    if-nez v2, :cond_421

    if-nez v4, :cond_421

    .line 434
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_3ff

    .line 435
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_412

    .line 437
    :cond_3ff
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 438
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v7, v9, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :goto_412
    move-object/from16 v29, v0

    move/from16 v30, v3

    move-object/from16 v32, v8

    move-object v0, v12

    move v4, v13

    move-object/from16 v18, v14

    move-object v3, v15

    :goto_41d
    const/16 v19, 0x0

    goto/16 :goto_4ba

    .line 442
    :cond_421
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 443
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 444
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 445
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 446
    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v30, v3

    const/4 v3, 0x1

    invoke-virtual {v15, v11, v0, v10, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 447
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v31, v13

    neg-int v13, v9

    invoke-virtual {v15, v0, v11, v13, v3}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 448
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_450

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_452

    :cond_450
    move-object/from16 v0, v16

    :goto_452
    if-nez v4, :cond_463

    .line 451
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_461

    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_463

    :cond_461
    move-object/from16 v0, v16

    :cond_463
    :goto_463
    if-nez v8, :cond_475

    .line 454
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_473

    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v8, v3

    goto :goto_475

    :cond_473
    move-object/from16 v8, v16

    :cond_475
    :goto_475
    move-object v3, v8

    if-eqz v3, :cond_4b0

    .line 457
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v2, :cond_48d

    .line 459
    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_48b

    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_48d

    :cond_48b
    move-object/from16 v4, v16

    :cond_48d
    :goto_48d
    if-eqz v0, :cond_4b0

    if-eqz v4, :cond_4b0

    .line 462
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v13, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v6, 0x4

    move-object/from16 v7, p1

    move/from16 v17, v9

    move-object v9, v0

    const/4 v0, 0x3

    move-object v0, v12

    move-object v12, v4

    move/from16 v4, v31

    move-object/from16 v18, v14

    const/16 v19, 0x0

    move/from16 v14, v17

    move-object/from16 v32, v3

    move-object v3, v15

    move v15, v6

    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_4ba

    :cond_4b0
    move-object/from16 v32, v3

    move-object v0, v12

    move-object/from16 v18, v14

    move-object v3, v15

    move/from16 v4, v31

    goto/16 :goto_41d

    :goto_4ba
    if-eqz v2, :cond_4be

    move-object/from16 v32, v16

    :cond_4be
    move-object v12, v0

    move v7, v2

    move-object v15, v3

    move v13, v4

    move-object/from16 v2, v18

    move-object/from16 v4, v29

    move/from16 v3, v30

    move-object/from16 v0, v32

    move-object/from16 v6, p0

    goto/16 :goto_350

    :cond_4ce
    move-object v0, v12

    move v4, v13

    move-object v3, v15

    const/16 v19, 0x0

    if-eqz v5, :cond_518

    .line 472
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 473
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 474
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 475
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 476
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_4ef

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v9, v6

    goto :goto_4f1

    :cond_4ef
    move-object/from16 v9, v16

    .line 477
    :goto_4f1
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_4ff

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v12, v2

    goto :goto_501

    :cond_4ff
    move-object/from16 v12, v16

    :goto_501
    if-eqz v9, :cond_518

    if-eqz v12, :cond_518

    .line 479
    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v6, v14

    const/4 v7, 0x1

    invoke-virtual {v3, v2, v12, v6, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 480
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iget-object v13, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v15, 0x4

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_518
    :goto_518
    add-int/lit8 v13, v4, 0x1

    move-object v15, v3

    move/from16 v14, v19

    move-object/from16 v6, p0

    goto/16 :goto_6

    :cond_521
    return-void
.end method

.method private applyVerticalChain(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 36

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    const/4 v14, 0x0

    move v13, v14

    .line 613
    :goto_6
    iget v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-ge v13, v0, :cond_544

    .line 614
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v0, v13

    .line 615
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v0, v13

    const/4 v4, 0x1

    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->countMatchConstraintsChainedWidgets(Landroid/support/constraint/solver/LinearSystem;[Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;I[Z)I

    move-result v0

    .line 617
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_2c

    :cond_26
    :goto_26
    move v4, v13

    move/from16 v19, v14

    move-object v3, v15

    goto/16 :goto_53b

    .line 622
    :cond_2c
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_57

    .line 623
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v0

    :goto_37
    if-eqz v1, :cond_26

    .line 625
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 626
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 627
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    move-object v1, v2

    goto :goto_37

    .line 632
    :cond_57
    iget v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v3, :cond_5d

    move v3, v4

    goto :goto_5e

    :cond_5d
    move v3, v14

    .line 633
    :goto_5e
    iget v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v5, v2, :cond_64

    move v5, v4

    goto :goto_65

    :cond_64
    move v5, v14

    .line 635
    :goto_65
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_6d

    move v7, v4

    goto :goto_6e

    :cond_6d
    move v7, v14

    .line 636
    :goto_6e
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eq v8, v2, :cond_78

    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_8e

    :cond_78
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aget-boolean v8, v8, v14

    if-eqz v8, :cond_8e

    iget-boolean v8, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    if-eqz v8, :cond_8e

    if-nez v5, :cond_8e

    if-nez v7, :cond_8e

    iget v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v7, :cond_8e

    .line 640
    invoke-static {v6, v15, v0, v12}, Landroid/support/constraint/solver/widgets/Optimizer;->applyDirectResolutionVerticalChain(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_26

    :cond_8e
    const/4 v11, 0x3

    const/16 v16, 0x0

    if-eqz v0, :cond_34b

    if-eqz v5, :cond_97

    goto/16 :goto_34b

    :cond_97
    const/4 v3, 0x0

    move v5, v3

    move-object/from16 v3, v16

    :goto_9b
    if-eqz v1, :cond_15f

    .line 756
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v8, :cond_119

    .line 757
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    if-eqz v3, :cond_b2

    .line 759
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v7, v3

    .line 762
    :cond_b2
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_c0

    move v3, v2

    goto :goto_c1

    :cond_c0
    move v3, v11

    .line 765
    :goto_c1
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v8, v9, v7, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 766
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 767
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_fb

    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v7, v1, :cond_fb

    .line 768
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    .line 771
    :cond_fb
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_109

    move v7, v2

    goto :goto_10a

    :cond_109
    move v7, v11

    .line 774
    :goto_10a
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    invoke-virtual {v15, v8, v9, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_156

    .line 776
    :cond_119
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    add-float/2addr v5, v3

    .line 778
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13c

    .line 779
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 780
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v11

    if-eq v1, v7, :cond_13d

    .line 781
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_13d

    :cond_13c
    move v3, v14

    .line 784
    :cond_13d
    :goto_13d
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v7, v8, v14, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 785
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    invoke-virtual {v15, v7, v8, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 788
    :goto_156
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v3

    move-object v3, v1

    move-object/from16 v1, v33

    goto/16 :goto_9b

    :cond_15f
    if-ne v0, v4, :cond_1e6

    .line 791
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, v14

    .line 792
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 793
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_17a

    .line 794
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v1, v3

    .line 796
    :cond_17a
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 797
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_18f

    .line 798
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v3, v5

    .line 800
    :cond_18f
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 801
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v11

    if-ne v0, v7, :cond_1a5

    .line 802
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 805
    :cond_1a5
    iget v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v7, v4, :cond_1cf

    .line 806
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v0, v7, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 807
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 808
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_26

    .line 810
    :cond_1cf
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v2, v7, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 811
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_26

    :cond_1e6
    move v1, v14

    :goto_1e7
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_26

    .line 815
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v1

    .line 816
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    add-int/lit8 v1, v1, 0x1

    aget-object v8, v8, v1

    .line 817
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 818
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 819
    iget-object v14, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 820
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 821
    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v11

    if-ne v8, v4, :cond_214

    .line 822
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 824
    :cond_214
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 825
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_247

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_247

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v11, v7, :cond_247

    .line 827
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v4, v11

    .line 829
    :cond_247
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v28, v0

    const/4 v0, 0x2

    invoke-virtual {v15, v9, v11, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 830
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 831
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_276

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_276

    .line 832
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_274

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    goto :goto_275

    :cond_274
    const/4 v4, 0x0

    :goto_275
    add-int/2addr v0, v4

    .line 834
    :cond_276
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v0, v0

    const/4 v11, 0x2

    invoke-virtual {v15, v10, v4, v0, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    if-ne v1, v3, :cond_303

    .line 837
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 838
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2b6

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2b6

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v8, :cond_2b6

    .line 840
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v0, v3

    .line 842
    :cond_2b6
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v4, 0x2

    invoke-virtual {v15, v14, v3, v0, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 843
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 844
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-ne v8, v3, :cond_2d0

    .line 845
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 847
    :cond_2d0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 848
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2f9

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2f9

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v8, :cond_2f9

    .line 850
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v3, v4

    .line 852
    :cond_2f9
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    const/4 v4, 0x2

    invoke-virtual {v15, v2, v0, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_304

    :cond_303
    const/4 v4, 0x2

    .line 855
    :goto_304
    iget v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v0, :cond_30d

    .line 856
    iget v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-virtual {v15, v10, v9, v0, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 859
    :cond_30d
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 860
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    iget v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 862
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 863
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 864
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 865
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v14

    move-object/from16 v26, v2

    .line 860
    invoke-virtual/range {v16 .. v27}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 866
    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v0, v28

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_1e7

    :cond_34b
    :goto_34b
    move-object v0, v1

    move-object/from16 v2, v16

    move-object v4, v2

    const/4 v7, 0x0

    :goto_350
    if-eqz v0, :cond_4f1

    .line 651
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v8, :cond_35e

    .line 653
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v7, 0x1

    aget-object v2, v2, v7

    move-object v14, v2

    const/4 v2, 0x1

    goto :goto_360

    :cond_35e
    move-object v14, v2

    move v2, v7

    :goto_360
    if-eqz v5, :cond_3db

    .line 657
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 658
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    if-eqz v4, :cond_371

    .line 660
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    :cond_371
    if-eq v1, v0, :cond_375

    const/4 v4, 0x3

    goto :goto_376

    :cond_375
    const/4 v4, 0x1

    .line 669
    :goto_376
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_381

    .line 670
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 671
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_39b

    .line 672
    :cond_381
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_398

    .line 673
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 674
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 675
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    sub-int v9, v9, v17

    goto :goto_39b

    :cond_398
    move-object/from16 v10, v16

    move-object v11, v10

    :goto_39b
    if-eqz v10, :cond_3a2

    if-eqz v11, :cond_3a2

    .line 678
    invoke-virtual {v15, v10, v11, v9, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 680
    :cond_3a2
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_3d9

    .line 681
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 682
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3c3

    .line 683
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 684
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x3

    invoke-virtual {v15, v4, v7, v9, v11}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_435

    :cond_3c3
    const/4 v11, 0x3

    .line 687
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {v15, v9, v10, v6, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 689
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-virtual {v15, v4, v6, v7, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_435

    :cond_3d9
    const/4 v11, 0x3

    goto :goto_435

    :cond_3db
    const/4 v11, 0x3

    const/4 v6, 0x5

    if-nez v3, :cond_40a

    if-eqz v2, :cond_40a

    if-eqz v4, :cond_40a

    .line 695
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_3f5

    .line 696
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawBottom()I

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_435

    .line 698
    :cond_3f5
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 699
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v4, v4

    invoke-virtual {v15, v7, v9, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_435

    :cond_40a
    if-nez v3, :cond_444

    if-nez v2, :cond_444

    if-nez v4, :cond_444

    .line 702
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_422

    .line 703
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_435

    .line 705
    :cond_422
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 706
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v7, v9, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :goto_435
    move-object/from16 v29, v0

    move/from16 v30, v3

    move-object/from16 v32, v8

    move-object v0, v12

    move v4, v13

    move-object/from16 v18, v14

    move-object v3, v15

    :goto_440
    const/16 v19, 0x0

    goto/16 :goto_4dd

    .line 710
    :cond_444
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 711
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 712
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 713
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 714
    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v30, v3

    const/4 v3, 0x1

    invoke-virtual {v15, v11, v0, v10, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 715
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v31, v13

    neg-int v13, v9

    invoke-virtual {v15, v0, v11, v13, v3}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 716
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_473

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_475

    :cond_473
    move-object/from16 v0, v16

    :goto_475
    if-nez v4, :cond_486

    .line 719
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_484

    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_486

    :cond_484
    move-object/from16 v0, v16

    :cond_486
    :goto_486
    if-nez v8, :cond_498

    .line 722
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_496

    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v8, v3

    goto :goto_498

    :cond_496
    move-object/from16 v8, v16

    :cond_498
    :goto_498
    move-object v3, v8

    if-eqz v3, :cond_4d3

    .line 725
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v2, :cond_4b0

    .line 727
    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_4ae

    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_4b0

    :cond_4ae
    move-object/from16 v4, v16

    :cond_4b0
    :goto_4b0
    if-eqz v0, :cond_4d3

    if-eqz v4, :cond_4d3

    .line 730
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v13, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v6, 0x4

    move-object/from16 v7, p1

    move/from16 v17, v9

    move-object v9, v0

    const/4 v0, 0x3

    move-object v0, v12

    move-object v12, v4

    move/from16 v4, v31

    move-object/from16 v18, v14

    const/16 v19, 0x0

    move/from16 v14, v17

    move-object/from16 v32, v3

    move-object v3, v15

    move v15, v6

    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_4dd

    :cond_4d3
    move-object/from16 v32, v3

    move-object v0, v12

    move-object/from16 v18, v14

    move-object v3, v15

    move/from16 v4, v31

    goto/16 :goto_440

    :goto_4dd
    if-eqz v2, :cond_4e1

    move-object/from16 v32, v16

    :cond_4e1
    move-object v12, v0

    move v7, v2

    move-object v15, v3

    move v13, v4

    move-object/from16 v2, v18

    move-object/from16 v4, v29

    move/from16 v3, v30

    move-object/from16 v0, v32

    move-object/from16 v6, p0

    goto/16 :goto_350

    :cond_4f1
    move-object v0, v12

    move v4, v13

    move-object v3, v15

    const/16 v19, 0x0

    if-eqz v5, :cond_53b

    .line 740
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 741
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 742
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 743
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 744
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_512

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v9, v6

    goto :goto_514

    :cond_512
    move-object/from16 v9, v16

    .line 745
    :goto_514
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_522

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v12, v2

    goto :goto_524

    :cond_522
    move-object/from16 v12, v16

    :goto_524
    if-eqz v9, :cond_53b

    if-eqz v12, :cond_53b

    .line 747
    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v6, v14

    const/4 v7, 0x1

    invoke-virtual {v3, v2, v12, v6, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 748
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget-object v13, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v15, 0x4

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_53b
    :goto_53b
    add-int/lit8 v13, v4, 0x1

    move-object v15, v3

    move/from16 v14, v19

    move-object/from16 v6, p0

    goto/16 :goto_6

    :cond_544
    return-void
.end method

.method private countMatchConstraintsChainedWidgets(Landroid/support/constraint/solver/LinearSystem;[Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;I[Z)I
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1887
    aput-boolean v3, p5, v4

    .line 1888
    aput-boolean v4, p5, v3

    const/4 v5, 0x0

    .line 1889
    aput-object v5, p2, v4

    const/4 v6, 0x2

    .line 1890
    aput-object v5, p2, v6

    .line 1891
    aput-object v5, p2, v3

    const/4 v7, 0x3

    .line 1892
    aput-object v5, p2, v7

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/16 v10, 0x8

    if-nez p4, :cond_108

    .line 1898
    iget-object v11, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_2d

    iget-object v11, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v11, v0, :cond_2d

    move v11, v4

    goto :goto_2e

    :cond_2d
    move v11, v3

    .line 1901
    :goto_2e
    iput-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1903
    invoke-virtual/range {p3 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_38

    move-object v12, v2

    goto :goto_39

    :cond_38
    move-object v12, v5

    :goto_39
    move v14, v4

    move-object v3, v5

    move-object v7, v12

    move-object v13, v7

    move-object v12, v2

    .line 1907
    :goto_3e
    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_d6

    .line 1908
    iput-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1909
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_57

    if-nez v13, :cond_4f

    move-object v13, v12

    :cond_4f
    if-eqz v7, :cond_55

    if-eq v7, v12, :cond_55

    .line 1914
    iput-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :cond_55
    move-object v7, v12

    goto :goto_6f

    .line 1918
    :cond_57
    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v6, v5, v4, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 1919
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v6, v4, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 1921
    :goto_6f
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_a6

    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_a6

    .line 1922
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_83

    .line 1923
    aput-boolean v4, p5, v4

    .line 1925
    :cond_83
    iget v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_a6

    .line 1926
    aput-boolean v4, p5, v4

    add-int/lit8 v5, v14, 0x1

    .line 1927
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v6, v6

    if-lt v5, v6, :cond_a1

    .line 1928
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v8, v8

    const/4 v15, 0x2

    mul-int/2addr v8, v15

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1930
    :cond_a1
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v12, v6, v14

    move v14, v5

    .line 1933
    :cond_a6
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_b3

    goto :goto_d6

    .line 1936
    :cond_b3
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v5, v12, :cond_c2

    goto :goto_d6

    .line 1939
    :cond_c2
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v5, v12, :cond_cb

    goto :goto_d6

    .line 1942
    :cond_cb
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v12, v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto/16 :goto_3e

    .line 1945
    :cond_d6
    :goto_d6
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_e5

    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v1, v0, :cond_e5

    move v11, v4

    .line 1948
    :cond_e5
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_f4

    iget-object v0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v0, :cond_f2

    goto :goto_f4

    :cond_f2
    const/4 v0, 0x1

    goto :goto_f7

    :cond_f4
    :goto_f4
    const/4 v0, 0x1

    .line 1949
    aput-boolean v0, p5, v0

    .line 1953
    :goto_f7
    iput-boolean v11, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    const/4 v1, 0x0

    .line 1954
    iput-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1955
    aput-object v2, p2, v4

    const/4 v1, 0x2

    .line 1956
    aput-object v13, p2, v1

    .line 1957
    aput-object v3, p2, v0

    const/4 v0, 0x3

    .line 1958
    aput-object v7, p2, v0

    goto/16 :goto_1f8

    .line 1963
    :cond_108
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_118

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v0, :cond_118

    move v3, v4

    goto :goto_119

    :cond_118
    const/4 v3, 0x1

    :goto_119
    const/4 v5, 0x0

    .line 1966
    iput-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1968
    invoke-virtual/range {p3 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_124

    move-object v6, v2

    goto :goto_125

    :cond_124
    move-object v6, v5

    :goto_125
    move v11, v4

    move-object v12, v5

    move-object v7, v6

    move-object v8, v7

    move-object v6, v2

    .line 1972
    :goto_12a
    iget-object v13, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v13, :cond_1c7

    .line 1973
    iput-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1974
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_143

    if-nez v7, :cond_13b

    move-object v7, v6

    :cond_13b
    if-eqz v8, :cond_141

    if-eq v8, v6, :cond_141

    .line 1979
    iput-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :cond_141
    move-object v8, v6

    goto :goto_15b

    .line 1983
    :cond_143
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v13, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v13, v4, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 1984
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v13, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v13, v4, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 1986
    :goto_15b
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_194

    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v13, :cond_194

    .line 1987
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v13, :cond_16f

    .line 1988
    aput-boolean v4, p5, v4

    .line 1990
    :cond_16f
    iget v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v13, 0x0

    cmpg-float v5, v5, v13

    if-gtz v5, :cond_195

    .line 1991
    aput-boolean v4, p5, v4

    add-int/lit8 v5, v11, 0x1

    .line 1992
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v9, v9

    if-lt v5, v9, :cond_18e

    .line 1993
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v10, v10

    const/4 v14, 0x2

    mul-int/2addr v10, v14

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1995
    :cond_18e
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v6, v9, v11

    move v11, v5

    goto :goto_195

    :cond_194
    const/4 v13, 0x0

    .line 1998
    :cond_195
    :goto_195
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_1a2

    goto :goto_1b9

    .line 2001
    :cond_1a2
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v5, v6, :cond_1b1

    goto :goto_1b9

    .line 2004
    :cond_1b1
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v5, v6, :cond_1ba

    :goto_1b9
    goto :goto_1c7

    .line 2007
    :cond_1ba
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v6, v12

    const/4 v5, 0x0

    const/4 v9, 0x5

    const/16 v10, 0x8

    goto/16 :goto_12a

    :cond_1c7
    :goto_1c7
    move v14, v11

    .line 2010
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1d7

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v1, v0, :cond_1d7

    move v3, v4

    .line 2013
    :cond_1d7
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1e6

    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v0, :cond_1e4

    goto :goto_1e6

    :cond_1e4
    const/4 v0, 0x1

    goto :goto_1e9

    :cond_1e6
    :goto_1e6
    const/4 v0, 0x1

    .line 2014
    aput-boolean v0, p5, v0

    .line 2018
    :goto_1e9
    iput-boolean v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    const/4 v1, 0x0

    .line 2019
    iput-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2020
    aput-object v2, p2, v4

    const/4 v1, 0x2

    .line 2021
    aput-object v7, p2, v1

    .line 2022
    aput-object v12, p2, v0

    const/4 v0, 0x3

    .line 2023
    aput-object v8, p2, v0

    :goto_1f8
    return v14
.end method

.method public static createContainer(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;Ljava/util/ArrayList;I)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;I)",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;"
        }
    .end annotation

    .line 172
    invoke-static {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getBounds(Ljava/util/ArrayList;)Landroid/support/constraint/solver/widgets/Rectangle;

    move-result-object v0

    .line 173
    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    if-eqz v1, :cond_67

    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    if-nez v1, :cond_d

    goto :goto_67

    :cond_d
    if-lez p3, :cond_1d

    .line 177
    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    iget v2, v0, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le p3, v1, :cond_1a

    move p3, v1

    .line 181
    :cond_1a
    invoke-virtual {v0, p3, p3}, Landroid/support/constraint/solver/widgets/Rectangle;->grow(II)V

    .line 183
    :cond_1d
    iget p3, v0, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    invoke-virtual {p0, p3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOrigin(II)V

    .line 184
    iget p3, v0, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    invoke-virtual {p0, p3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setDimension(II)V

    .line 185
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setDebugName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 187
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p3

    .line 188
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3d
    if-ge p1, v1, :cond_66

    .line 189
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 190
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eq v3, p3, :cond_4c

    goto :goto_63

    .line 193
    :cond_4c
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 194
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v3

    iget v4, v0, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setX(I)V

    .line 195
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v3

    iget v4, v0, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setY(I)V

    :goto_63
    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    :cond_66
    return-object p0

    :cond_67
    :goto_67
    const/4 p0, 0x0

    return-object p0
.end method

.method private optimize(Landroid/support/constraint/solver/LinearSystem;)Z
    .registers 15

    .line 263
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_2b

    .line 269
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 271
    iput v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 272
    iput v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 273
    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v6, :cond_24

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_28

    .line 275
    :cond_24
    iput v4, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 276
    iput v4, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2b
    move v2, v1

    move v5, v2

    move v6, v5

    :goto_2e
    if-nez v2, :cond_7a

    move v7, v1

    move v8, v7

    move v9, v8

    :goto_33
    if-ge v7, v0, :cond_6c

    .line 289
    iget-object v10, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 290
    iget v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    if-ne v11, v3, :cond_4d

    .line 291
    iget-object v11, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_4a

    .line 292
    iput v4, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    goto :goto_4d

    .line 294
    :cond_4a
    invoke-static {p0, p1, v10}, Landroid/support/constraint/solver/widgets/Optimizer;->checkHorizontalSimpleDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 297
    :cond_4d
    :goto_4d
    iget v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    if-ne v11, v3, :cond_5d

    .line 298
    iget-object v11, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_5a

    .line 299
    iput v4, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    goto :goto_5d

    .line 301
    :cond_5a
    invoke-static {p0, p1, v10}, Landroid/support/constraint/solver/widgets/Optimizer;->checkVerticalSimpleDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 309
    :cond_5d
    :goto_5d
    iget v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    if-ne v11, v3, :cond_63

    add-int/lit8 v8, v8, 0x1

    .line 312
    :cond_63
    iget v10, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    if-ne v10, v3, :cond_69

    add-int/lit8 v9, v9, 0x1

    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_6c
    if-nez v8, :cond_72

    if-nez v9, :cond_72

    :goto_70
    move v2, v4

    goto :goto_77

    :cond_72
    if-ne v5, v8, :cond_77

    if-ne v6, v9, :cond_77

    goto :goto_70

    :cond_77
    :goto_77
    move v5, v8

    move v6, v9

    goto :goto_2e

    :cond_7a
    move p1, v1

    move v2, p1

    move v5, v2

    :goto_7d
    if-ge p1, v0, :cond_9e

    .line 332
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 333
    iget v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    if-eq v7, v4, :cond_8f

    iget v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    if-ne v7, v3, :cond_91

    :cond_8f
    add-int/lit8 v2, v2, 0x1

    .line 337
    :cond_91
    iget v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    if-eq v7, v4, :cond_99

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    if-ne v6, v3, :cond_9b

    :cond_99
    add-int/lit8 v5, v5, 0x1

    :cond_9b
    add-int/lit8 p1, p1, 0x1

    goto :goto_7d

    :cond_9e
    if-nez v2, :cond_a3

    if-nez v5, :cond_a3

    return v4

    :cond_a3
    return v1
.end method

.method private resetChains()V
    .registers 2

    const/4 v0, 0x0

    .line 1809
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1810
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method

.method static setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I
    .registers 4

    .line 1157
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1158
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-nez v1, :cond_b

    return p1

    :cond_b
    if-gt v0, p1, :cond_e

    return v0

    .line 1165
    :cond_e
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1166
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1167
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1c

    .line 1169
    invoke-static {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result p1

    :cond_1c
    if-eqz v1, :cond_22

    .line 1170
    invoke-static {v1, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result p1

    :cond_22
    if-eqz v0, :cond_28

    .line 1171
    invoke-static {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result p1

    .line 1173
    :cond_28
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    return p1
.end method


# virtual methods
.method addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V
    .registers 4

    if-nez p2, :cond_35

    .line 1823
    :goto_2
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_31

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_31

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne p2, v0, :cond_31

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_31

    .line 1827
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_2

    .line 1829
    :cond_31
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_6a

    :cond_35
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6a

    .line 1832
    :goto_38
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_67

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_67

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne p2, v0, :cond_67

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_67

    .line 1836
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_38

    .line 1838
    :cond_67
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public addChildrenToSolver(Landroid/support/constraint/solver/LinearSystem;I)Z
    .registers 11

    .line 210
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 211
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 213
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_18

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_16

    goto :goto_18

    :cond_16
    move v1, v2

    goto :goto_20

    .line 215
    :cond_18
    :goto_18
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimize(Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v3

    :cond_1f
    move v1, v3

    :goto_20
    if-ge v3, v0, :cond_61

    .line 223
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 224
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_56

    .line 225
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 226
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 227
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_3b

    .line 228
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 230
    :cond_3b
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_44

    .line 231
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 233
    :cond_44
    invoke-virtual {v4, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 234
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_4e

    .line 235
    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 237
    :cond_4e
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v5, :cond_5e

    .line 238
    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_5e

    :cond_56
    if-eqz v1, :cond_5b

    .line 242
    invoke-static {p0, p1, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 244
    :cond_5b
    invoke-virtual {v4, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    :cond_5e
    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 247
    :cond_61
    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez p2, :cond_68

    .line 248
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->applyHorizontalChain(Landroid/support/constraint/solver/LinearSystem;)V

    .line 250
    :cond_68
    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez p2, :cond_6f

    .line 251
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->applyVerticalChain(Landroid/support/constraint/solver/LinearSystem;)V

    :cond_6f
    return v2
.end method

.method public findHorizontalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V
    .registers 10

    .line 1198
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_17

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_17

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17

    .line 1201
    aput-boolean v3, p2, v3

    return-void

    .line 1204
    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapWidth()I

    move-result v0

    .line 1206
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v4, :cond_30

    .line 1207
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v4, :cond_30

    iget v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_30

    .line 1209
    aput-boolean v3, p2, v3

    return-void

    :cond_30
    const/4 v1, 0x1

    .line 1220
    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 1222
    instance-of v2, p1, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v2, :cond_60

    .line 1223
    move-object p0, p1

    check-cast p0, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1224
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result p2

    if-ne p2, v1, :cond_5c

    .line 1227
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4e

    .line 1228
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result p0

    move v0, v3

    move v3, p0

    goto :goto_5d

    .line 1229
    :cond_4e
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result p2

    if-eq p2, v0, :cond_5a

    .line 1230
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result p0

    move v0, p0

    goto :goto_5d

    :cond_5a
    move v0, v3

    goto :goto_5d

    :cond_5c
    move v3, v0

    :goto_5d
    move v5, v0

    goto/16 :goto_1b3

    .line 1233
    :cond_60
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-nez v2, :cond_77

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-nez v2, :cond_77

    .line 1234
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result p0

    add-int v3, v0, p0

    goto :goto_5d

    .line 1236
    :cond_77
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_a8

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_a8

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v2, v4, :cond_a5

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v2, v4, :cond_a8

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v2, v4, :cond_a8

    .line 1240
    :cond_a5
    aput-boolean v3, p2, v3

    return-void

    .line 1243
    :cond_a8
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x0

    if-eqz v2, :cond_ca

    .line 1244
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1245
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v5, v0

    .line 1246
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v6

    if-nez v6, :cond_cc

    iget-boolean v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    if-nez v6, :cond_cc

    .line 1247
    invoke-virtual {p0, v2, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findHorizontalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    goto :goto_cc

    :cond_ca
    move v5, v0

    move-object v2, v4

    .line 1250
    :cond_cc
    :goto_cc
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_ec

    .line 1251
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1252
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v0, v6

    .line 1253
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v6

    if-nez v6, :cond_ec

    iget-boolean v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    if-nez v6, :cond_ec

    .line 1254
    invoke-virtual {p0, v4, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findHorizontalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1258
    :cond_ec
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_14e

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result p0

    if-nez p0, :cond_14e

    .line 1259
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p0, p2, :cond_10b

    .line 1260
    iget p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapWidth()I

    move-result p2

    sub-int/2addr p0, p2

    add-int/2addr v5, p0

    goto :goto_11a

    .line 1261
    :cond_10b
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p0

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p0, p2, :cond_11a

    .line 1262
    iget p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    add-int/2addr v5, p0

    .line 1265
    :cond_11a
    :goto_11a
    iget-boolean p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    if-nez p0, :cond_133

    iget-object p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_131

    iget-object p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_131

    iget-object p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p0, p2, :cond_131

    goto :goto_133

    :cond_131
    move p0, v3

    goto :goto_134

    :cond_133
    :goto_133
    move p0, v1

    :goto_134
    iput-boolean p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 1268
    iget-boolean p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    if-eqz p0, :cond_14e

    iget-object p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez p0, :cond_141

    goto :goto_149

    :cond_141
    iget-object p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p0, p1, :cond_14e

    .line 1270
    :goto_149
    iget p0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    sub-int p0, v5, p0

    add-int/2addr v5, p0

    .line 1274
    :cond_14e
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_1b2

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result p0

    if-nez p0, :cond_1b2

    .line 1275
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p0

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p0, p2, :cond_16f

    .line 1276
    iget p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapWidth()I

    move-result p2

    sub-int/2addr p0, p2

    add-int/2addr v0, p0

    goto :goto_17e

    .line 1277
    :cond_16f
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p0

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p0, p2, :cond_17e

    .line 1278
    iget p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    add-int/2addr v0, p0

    .line 1281
    :cond_17e
    :goto_17e
    iget-boolean p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    if-nez p0, :cond_196

    iget-object p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_195

    iget-object p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_195

    iget-object p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p0, p2, :cond_195

    goto :goto_196

    :cond_195
    move v1, v3

    :cond_196
    :goto_196
    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 1284
    iget-boolean p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    if-eqz p0, :cond_1b2

    iget-object p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez p0, :cond_1a3

    goto :goto_1ab

    :cond_1a3
    iget-object p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p0, p1, :cond_1b2

    .line 1286
    :goto_1ab
    iget p0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    sub-int p0, v0, p0

    add-int v3, v0, p0

    goto :goto_1b3

    :cond_1b2
    move v3, v0

    .line 1290
    :goto_1b3
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result p0

    const/16 p2, 0x8

    if-ne p0, p2, :cond_1c1

    .line 1291
    iget p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    sub-int/2addr v3, p0

    .line 1292
    iget p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    sub-int/2addr v5, p0

    .line 1294
    :cond_1c1
    iput v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    .line 1295
    iput v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    return-void
.end method

.method public findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V
    .registers 11

    .line 1299
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 1300
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_17

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    .line 1302
    aput-boolean v2, p2, v2

    return-void

    .line 1310
    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapHeight()I

    move-result v0

    const/4 v1, 0x1

    .line 1316
    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 1318
    instance-of v3, p1, Landroid/support/constraint/solver/widgets/Guideline;

    const/16 v4, 0x8

    if-eqz v3, :cond_4d

    .line 1319
    move-object p0, p1

    check-cast p0, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1320
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result p2

    if-nez p2, :cond_49

    .line 1323
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3b

    .line 1324
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result p0

    move v0, v2

    move v2, p0

    goto :goto_4a

    .line 1325
    :cond_3b
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result p2

    if-eq p2, v0, :cond_47

    .line 1326
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result p0

    move v0, p0

    goto :goto_4a

    :cond_47
    move v0, v2

    goto :goto_4a

    :cond_49
    move v2, v0

    :goto_4a
    move v6, v2

    goto/16 :goto_205

    .line 1329
    :cond_4d
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_66

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_66

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_66

    .line 1330
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result p0

    add-int v2, v0, p0

    goto :goto_4a

    .line 1332
    :cond_66
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_97

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_97

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v3, v5, :cond_94

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v5, :cond_97

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v5, :cond_97

    .line 1336
    :cond_94
    aput-boolean v2, p2, v2

    return-void

    .line 1339
    :cond_97
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 1340
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 1341
    iget-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    if-nez v2, :cond_ae

    .line 1342
    invoke-virtual {p0, v1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1344
    :cond_ae
    iget p0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    iget p2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr p0, p2

    add-int/2addr p0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1345
    iget p2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr p2, v1

    add-int/2addr p2, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1346
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_ce

    .line 1347
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr p0, v0

    .line 1348
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr p2, v0

    .line 1350
    :cond_ce
    iput p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    .line 1351
    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    return-void

    .line 1354
    :cond_d3
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_f9

    .line 1355
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 1356
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v6, v0

    .line 1357
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v7

    if-nez v7, :cond_fb

    iget-boolean v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    if-nez v7, :cond_fb

    .line 1358
    invoke-virtual {p0, v3, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    goto :goto_fb

    :cond_f9
    move v6, v0

    move-object v3, v5

    .line 1361
    :cond_fb
    :goto_fb
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 1362
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 1363
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v0, v7

    .line 1364
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v7

    if-nez v7, :cond_11f

    iget-boolean v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    if-nez v7, :cond_11f

    .line 1365
    invoke-virtual {p0, v5, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1369
    :cond_11f
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_193

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result p0

    if-nez p0, :cond_193

    .line 1370
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p0

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p0, p2, :cond_140

    .line 1371
    iget p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapHeight()I

    move-result p2

    sub-int/2addr p0, p2

    add-int/2addr v6, p0

    goto :goto_14f

    .line 1372
    :cond_140
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p0

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p0, p2, :cond_14f

    .line 1373
    iget p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    add-int/2addr v6, p0

    .line 1376
    :cond_14f
    :goto_14f
    iget-boolean p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    if-nez p0, :cond_178

    iget-object p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_176

    iget-object p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p0, p1, :cond_176

    iget-object p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_176

    iget-object p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p0, p1, :cond_176

    iget-object p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p0, p2, :cond_176

    goto :goto_178

    :cond_176
    move p0, v2

    goto :goto_179

    :cond_178
    :goto_178
    move p0, v1

    :goto_179
    iput-boolean p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 1381
    iget-boolean p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    if-eqz p0, :cond_193

    iget-object p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez p0, :cond_186

    goto :goto_18e

    :cond_186
    iget-object p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p0, p1, :cond_193

    .line 1383
    :goto_18e
    iget p0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    sub-int p0, v6, p0

    add-int/2addr v6, p0

    .line 1386
    :cond_193
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_205

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result p0

    if-nez p0, :cond_205

    .line 1387
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p0

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p0, p2, :cond_1b4

    .line 1388
    iget p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapHeight()I

    move-result p2

    sub-int/2addr p0, p2

    add-int/2addr v0, p0

    goto :goto_1c3

    .line 1389
    :cond_1b4
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p0

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p0, p2, :cond_1c3

    .line 1390
    iget p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    add-int/2addr v0, p0

    .line 1393
    :cond_1c3
    :goto_1c3
    iget-boolean p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    if-nez p0, :cond_1eb

    iget-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_1ea

    iget-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p0, p1, :cond_1ea

    iget-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p0, :cond_1ea

    iget-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p0, p1, :cond_1ea

    iget-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p0, p2, :cond_1ea

    goto :goto_1eb

    :cond_1ea
    move v1, v2

    :cond_1eb
    :goto_1eb
    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 1398
    iget-boolean p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    if-eqz p0, :cond_205

    iget-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez p0, :cond_1f8

    goto :goto_200

    :cond_1f8
    iget-object p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p0, p1, :cond_205

    .line 1400
    :goto_200
    iget p0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    sub-int p0, v0, p0

    add-int/2addr v0, p0

    .line 1404
    :cond_205
    :goto_205
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result p0

    if-ne p0, v4, :cond_211

    .line 1405
    iget p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr v6, p0

    .line 1406
    iget p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr v0, p0

    .line 1409
    :cond_211
    iput v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    .line 1410
    iput v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    return-void
.end method

.method public findWrapSize(Ljava/util/ArrayList;[Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;[Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1426
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1427
    aput-boolean v4, v2, v5

    move v4, v5

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_15
    if-ge v4, v3, :cond_a9

    .line 1430
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1431
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v13

    if-eqz v13, :cond_25

    goto/16 :goto_a4

    .line 1434
    :cond_25
    iget-boolean v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    if-nez v13, :cond_2c

    .line 1435
    invoke-virtual {v0, v12, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findHorizontalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1437
    :cond_2c
    iget-boolean v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    if-nez v13, :cond_33

    .line 1438
    invoke-virtual {v0, v12, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1440
    :cond_33
    aget-boolean v13, v2, v5

    if-nez v13, :cond_38

    return-void

    .line 1443
    :cond_38
    iget v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    add-int/2addr v13, v14

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    .line 1444
    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    iget v15, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    add-int/2addr v14, v15

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1445
    iget-object v15, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v5, :cond_61

    .line 1446
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v5, v13

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v5, v13

    goto :goto_62

    :cond_61
    move v5, v13

    .line 1448
    :goto_62
    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v15, :cond_77

    .line 1449
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    iget-object v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v13, v14

    iget-object v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v13, v14

    goto :goto_78

    :cond_77
    move v13, v14

    .line 1451
    :goto_78
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_82

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 1455
    :cond_82
    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1456
    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1457
    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1458
    iget v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1459
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1460
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v11, v8

    move v8, v5

    :goto_a4
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_15

    .line 1462
    :cond_a9
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1463
    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapWidth:I

    .line 1464
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1465
    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapHeight:I

    const/4 v0, 0x0

    :goto_ca
    if-ge v0, v3, :cond_e2

    .line 1467
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x0

    .line 1468
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 1469
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 1470
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 1471
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 1472
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 1473
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    :cond_e2
    return-void
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 1788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_28

    .line 1790
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1791
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_25

    .line 1792
    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1793
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v4

    if-nez v4, :cond_25

    .line 1794
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_28
    return-object v0
.end method

.method public getSystem()Landroid/support/constraint/solver/LinearSystem;
    .registers 1

    .line 1802
    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    const-string p0, "ConstraintLayout"

    return-object p0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    .line 1771
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1772
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_26

    .line 1773
    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1774
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    .line 1775
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isHeightMeasuredTooSmall()Z
    .registers 1

    .line 157
    iget-boolean p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return p0
.end method

.method public isWidthMeasuredTooSmall()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    return p0
.end method

.method public layout()V
    .registers 18

    move-object/from16 v1, p0

    .line 917
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 918
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 919
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 920
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 921
    iput-boolean v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 922
    iput-boolean v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 924
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_46

    .line 925
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    if-nez v0, :cond_2a

    .line 926
    new-instance v0, Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/widgets/Snapshot;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    .line 928
    :cond_2a
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Snapshot;->updateFrom(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 933
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 934
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetAnchors()V

    .line 936
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->getCache()Landroid/support/constraint/solver/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    goto :goto_4a

    .line 938
    :cond_46
    iput v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 939
    iput v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 943
    :goto_4a
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 944
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 949
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v0, v9, :cond_bd

    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v11, :cond_60

    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v11, :cond_bd

    .line 953
    :cond_60
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    invoke-virtual {v1, v0, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findWrapSize(Ljava/util/ArrayList;[Z)V

    .line 954
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aget-boolean v0, v0, v4

    if-lez v5, :cond_78

    if-lez v6, :cond_78

    .line 958
    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapWidth:I

    if-gt v11, v5, :cond_77

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapHeight:I

    if-le v11, v6, :cond_78

    :cond_77
    move v0, v4

    :cond_78
    if-eqz v0, :cond_be

    .line 964
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_9b

    .line 965
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-lez v5, :cond_90

    .line 966
    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapWidth:I

    if-ge v5, v11, :cond_90

    .line 967
    iput-boolean v10, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 968
    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    goto :goto_9b

    .line 970
    :cond_90
    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    iget v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapWidth:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 973
    :cond_9b
    :goto_9b
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_be

    .line 974
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-lez v6, :cond_b1

    .line 975
    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapHeight:I

    if-ge v6, v11, :cond_b1

    .line 976
    iput-boolean v10, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 977
    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto :goto_be

    .line 979
    :cond_b1
    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    iget v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto :goto_be

    :cond_bd
    move v0, v4

    .line 986
    :cond_be
    :goto_be
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 990
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v4

    :goto_c8
    if-ge v12, v11, :cond_de

    .line 992
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 993
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v14, :cond_db

    .line 994
    check-cast v13, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    :cond_db
    add-int/lit8 v12, v12, 0x1

    goto :goto_c8

    :cond_de
    move v13, v0

    move v0, v4

    move v12, v10

    :goto_e1
    if-eqz v12, :cond_220

    add-int/lit8 v14, v0, 0x1

    const v15, 0x7fffffff

    .line 1004
    :try_start_e8
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->reset()V

    .line 1014
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v1, v0, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroid/support/constraint/solver/LinearSystem;I)Z

    move-result v16
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f3} :catch_fd

    if-eqz v16, :cond_103

    .line 1016
    :try_start_f5
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->minimize()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fa} :catch_fb

    goto :goto_103

    :catch_fb
    move-exception v0

    goto :goto_100

    :catch_fd
    move-exception v0

    move/from16 v16, v12

    .line 1019
    :goto_100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_103
    :goto_103
    if-eqz v16, :cond_10d

    .line 1022
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    iget-object v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    invoke-virtual {v1, v0, v15, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroid/support/constraint/solver/LinearSystem;I[Z)V

    goto :goto_14b

    .line 1024
    :cond_10d
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v1, v0, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    move v0, v4

    :goto_113
    if-ge v0, v11, :cond_14b

    .line 1026
    iget-object v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1027
    iget-object v15, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v4, :cond_132

    .line 1028
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v15

    if-ge v4, v15, :cond_132

    .line 1029
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aput-boolean v10, v0, v9

    goto :goto_14b

    .line 1032
    :cond_132
    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_147

    .line 1033
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v12

    if-ge v4, v12, :cond_147

    .line 1034
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aput-boolean v10, v0, v9

    goto :goto_14b

    :cond_147
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto :goto_113

    :cond_14b
    :goto_14b
    const/16 v0, 0x8

    if-ge v14, v0, :cond_1b2

    .line 1041
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_1b2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_158
    if-ge v0, v11, :cond_17d

    .line 1046
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1047
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v16

    add-int v9, v9, v16

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1048
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    add-int/2addr v9, v15

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x2

    goto :goto_158

    .line 1050
    :cond_17d
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1051
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1052
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_19d

    .line 1053
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    if-ge v9, v0, :cond_19d

    .line 1057
    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1058
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v10

    move v13, v0

    goto :goto_19e

    :cond_19d
    const/4 v0, 0x0

    .line 1063
    :goto_19e
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v9, :cond_1b3

    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    if-ge v9, v4, :cond_1b3

    .line 1068
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1069
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v10

    move v13, v0

    goto :goto_1b3

    :cond_1b2
    const/4 v0, 0x0

    .line 1076
    :cond_1b3
    :goto_1b3
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1077
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    if-le v4, v9, :cond_1cc

    .line 1081
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1082
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v10

    move v13, v0

    .line 1086
    :cond_1cc
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1087
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    if-le v4, v9, :cond_1e5

    .line 1091
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1092
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v10

    move v13, v0

    :cond_1e5
    if-nez v13, :cond_21a

    .line 1098
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_200

    if-lez v5, :cond_200

    .line 1099
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-le v4, v5, :cond_200

    .line 1103
    iput-boolean v10, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 1105
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1106
    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    move v0, v10

    move v13, v0

    .line 1110
    :cond_200
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_21a

    if-lez v6, :cond_21a

    .line 1111
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-le v4, v6, :cond_21a

    .line 1115
    iput-boolean v10, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 1117
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1118
    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    move v12, v10

    move v13, v12

    goto :goto_21b

    :cond_21a
    move v12, v0

    :goto_21b
    move v0, v14

    const/4 v4, 0x0

    const/4 v9, 0x2

    goto/16 :goto_e1

    .line 1127
    :cond_220
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_250

    .line 1128
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1129
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1131
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/widgets/Snapshot;->applyTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1132
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    add-int/2addr v0, v3

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1133
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    add-int/2addr v2, v0

    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto :goto_254

    .line 1135
    :cond_250
    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1136
    iput v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    :goto_254
    if-eqz v13, :cond_25a

    .line 1139
    iput-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1140
    iput-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1142
    :cond_25a
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->getCache()Landroid/support/constraint/solver/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    if-ne v1, v0, :cond_26c

    .line 1144
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateDrawPosition()V

    :cond_26c
    return-void
.end method

.method public layoutFindGroups()I
    .registers 14

    const/4 v0, 0x5

    .line 1481
    new-array v0, v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 1487
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v2

    move v5, v3

    :goto_24
    const v6, 0x7fffffff

    if-ge v4, v1, :cond_89

    .line 1489
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1492
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1493
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_40

    .line 1494
    invoke-static {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v8

    if-ne v8, v5, :cond_42

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 1498
    :cond_40
    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1501
    :cond_42
    :goto_42
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1502
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_51

    .line 1503
    invoke-static {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v8

    if-ne v8, v5, :cond_53

    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 1507
    :cond_51
    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1510
    :cond_53
    :goto_53
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1511
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_62

    .line 1512
    invoke-static {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v8

    if-ne v8, v5, :cond_64

    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 1516
    :cond_62
    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1519
    :cond_64
    :goto_64
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1520
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_73

    .line 1521
    invoke-static {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v8

    if-ne v8, v5, :cond_75

    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 1525
    :cond_73
    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1528
    :cond_75
    :goto_75
    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1529
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_84

    .line 1530
    invoke-static {v7, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v6

    if-ne v6, v5, :cond_86

    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 1534
    :cond_84
    iput v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    :cond_86
    :goto_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_89
    move v4, v3

    :goto_8a
    if-eqz v4, :cond_102

    move v4, v2

    move v5, v4

    :goto_8e
    if-ge v4, v1, :cond_100

    .line 1547
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move v8, v5

    move v5, v2

    .line 1548
    :goto_9a
    array-length v9, v0

    if-ge v5, v9, :cond_fc

    .line 1549
    aget-object v9, v0, v5

    const/4 v10, 0x0

    .line 1551
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer$2;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v9

    aget v9, v11, v9

    packed-switch v9, :pswitch_data_18a

    goto :goto_ba

    .line 1569
    :pswitch_ac
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_ba

    .line 1565
    :pswitch_af
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_ba

    .line 1561
    :pswitch_b2
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_ba

    .line 1557
    :pswitch_b5
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_ba

    .line 1553
    :pswitch_b8
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1573
    :goto_ba
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_bf

    goto :goto_f9

    .line 1578
    :cond_bf
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    if-eqz v11, :cond_dd

    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iget v12, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v11, v12, :cond_dd

    .line 1579
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-le v8, v11, :cond_d6

    iget v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    goto :goto_d8

    :cond_d6
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    :goto_d8
    iput v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iput v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move v8, v3

    .line 1584
    :cond_dd
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-eqz v9, :cond_f9

    .line 1585
    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iget v12, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v11, v12, :cond_f9

    .line 1586
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-le v8, v11, :cond_f2

    iget v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    goto :goto_f4

    :cond_f2
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    :goto_f4
    iput v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iput v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move v8, v3

    :cond_f9
    :goto_f9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    :cond_fc
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_8e

    :cond_100
    move v4, v5

    goto :goto_8a

    .line 1596
    :cond_102
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    array-length v0, v0

    mul-int/2addr v4, v0

    add-int/2addr v4, v3

    new-array v0, v4, [I

    const/4 v3, -0x1

    .line 1597
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    move v4, v2

    :goto_112
    if-ge v2, v1, :cond_188

    .line 1599
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1602
    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1603
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v8, v6, :cond_131

    .line 1604
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1605
    aget v9, v0, v8

    if-ne v9, v3, :cond_12d

    add-int/lit8 v9, v4, 0x1

    .line 1606
    aput v4, v0, v8

    move v4, v9

    .line 1608
    :cond_12d
    aget v8, v0, v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1611
    :cond_131
    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1612
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v8, v6, :cond_146

    .line 1613
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1614
    aget v9, v0, v8

    if-ne v9, v3, :cond_142

    add-int/lit8 v9, v4, 0x1

    .line 1615
    aput v4, v0, v8

    move v4, v9

    .line 1617
    :cond_142
    aget v8, v0, v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1620
    :cond_146
    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1621
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v8, v6, :cond_15b

    .line 1622
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1623
    aget v9, v0, v8

    if-ne v9, v3, :cond_157

    add-int/lit8 v9, v4, 0x1

    .line 1624
    aput v4, v0, v8

    move v4, v9

    .line 1626
    :cond_157
    aget v8, v0, v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1629
    :cond_15b
    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1630
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v8, v6, :cond_170

    .line 1631
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1632
    aget v9, v0, v8

    if-ne v9, v3, :cond_16c

    add-int/lit8 v9, v4, 0x1

    .line 1633
    aput v4, v0, v8

    move v4, v9

    .line 1635
    :cond_16c
    aget v8, v0, v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1638
    :cond_170
    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1639
    iget v7, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v7, v6, :cond_185

    .line 1640
    iget v7, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1641
    aget v8, v0, v7

    if-ne v8, v3, :cond_181

    add-int/lit8 v8, v4, 0x1

    .line 1642
    aput v4, v0, v7

    move v4, v8

    .line 1644
    :cond_181
    aget v7, v0, v7

    iput v7, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    :cond_185
    add-int/lit8 v2, v2, 0x1

    goto :goto_112

    :cond_188
    return v4

    nop

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
    .end packed-switch
.end method

.method public layoutFindGroupsSimple()I
    .registers 7

    .line 1179
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2a

    .line 1181
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1182
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v1, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1183
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v1, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1184
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x1

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1185
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1186
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2a
    const/4 p0, 0x2

    return p0
.end method

.method public layoutWithGroup(I)V
    .registers 9

    .line 1654
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1655
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1656
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 1657
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    if-nez v2, :cond_14

    .line 1658
    new-instance v2, Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-direct {v2, p0}, Landroid/support/constraint/solver/widgets/Snapshot;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    .line 1660
    :cond_14
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v2, p0}, Landroid/support/constraint/solver/widgets/Snapshot;->updateFrom(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1665
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1666
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1667
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetAnchors()V

    .line 1668
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v2}, Landroid/support/constraint/solver/LinearSystem;->getCache()Landroid/support/constraint/solver/Cache;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    goto :goto_2e

    .line 1670
    :cond_2a
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1671
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1675
    :goto_2e
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_35
    if-ge v4, v2, :cond_4b

    .line 1677
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1678
    instance-of v6, v5, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v6, :cond_48

    .line 1679
    check-cast v5, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 1683
    :cond_4b
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1684
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1685
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    iput v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1686
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1687
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v2}, Landroid/support/constraint/solver/LinearSystem;->reset()V

    :goto_61
    if-ge v3, p1, :cond_80

    .line 1723
    :try_start_63
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {p0, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 1724
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v2}, Landroid/support/constraint/solver/LinearSystem;->minimize()V

    .line 1725
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {p0, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception v2

    .line 1727
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1729
    :goto_77
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 v4, -0x2

    invoke-virtual {p0, v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 1733
    :cond_80
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz p1, :cond_98

    .line 1734
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result p1

    .line 1735
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    .line 1737
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v1, p0}, Landroid/support/constraint/solver/widgets/Snapshot;->applyTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1738
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1739
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto :goto_9c

    .line 1741
    :cond_98
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1742
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1745
    :goto_9c
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object p1

    if-ne p0, p1, :cond_a5

    .line 1746
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateDrawPosition()V

    :cond_a5
    return-void
.end method

.method public reset()V
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->reset()V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 143
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 144
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 145
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 146
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->reset()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 2

    .line 123
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    .line 906
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 907
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 908
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 909
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    return-void
.end method

.method public updateChildrenFromSolver(Landroid/support/constraint/solver/LinearSystem;I[Z)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 880
    aput-boolean v0, p3, v1

    .line 881
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 882
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_d
    if-ge v0, v2, :cond_42

    .line 884
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 885
    invoke-virtual {v3, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 886
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2d

    .line 887
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 888
    aput-boolean v6, p3, v1

    .line 890
    :cond_2d
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_3f

    .line 891
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v3

    if-ge v4, v3, :cond_3f

    .line 892
    aput-boolean v6, p3, v1

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_42
    return-void
.end method
