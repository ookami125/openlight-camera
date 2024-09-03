.class public Landroid/support/constraint/solver/Goal;
.super Ljava/lang/Object;
.source "Goal.java"


# instance fields
.field variables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    return-void
.end method

.method private initFromSystemErrors(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 7

    .line 66
    iget-object v0, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 67
    :goto_6
    iget v1, p1, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-ge v0, v1, :cond_33

    .line 68
    iget-object v1, p1, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1c

    .line 70
    iget-object v3, v1, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    const/4 v4, 0x0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 72
    :cond_1c
    iget-object v2, v1, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    iget v3, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 73
    iget-object v2, v1, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v2, v3, :cond_2b

    goto :goto_30

    .line 76
    :cond_2b
    iget-object v2, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_33
    return-void
.end method


# virtual methods
.method getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .registers 11

    .line 37
    iget-object v0, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    :goto_a
    if-ge v1, v0, :cond_34

    .line 43
    iget-object v5, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/SolverVariable;

    const/4 v6, 0x5

    :goto_15
    if-ltz v6, :cond_31

    .line 45
    iget-object v7, v5, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v7, v7, v6

    const/4 v8, 0x0

    if-nez v3, :cond_26

    cmpg-float v9, v7, v8

    if-gez v9, :cond_26

    if-lt v6, v4, :cond_26

    move-object v3, v5

    move v4, v6

    :cond_26
    cmpl-float v7, v7, v8

    if-lez v7, :cond_2e

    if-le v6, v4, :cond_2e

    move-object v3, v2

    move v4, v6

    :cond_2e
    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_34
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "Goal: "

    .line 120
    iget-object v1, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_29

    .line 123
    iget-object v3, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/SolverVariable;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/support/constraint/solver/SolverVariable;->strengthsToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_29
    return-object v0
.end method

.method updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 15

    .line 86
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/Goal;->initFromSystemErrors(Landroid/support/constraint/solver/LinearSystem;)V

    .line 87
    iget-object v0, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_5b

    .line 89
    iget-object v3, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/SolverVariable;

    .line 90
    iget v4, v3, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_58

    .line 91
    iget v4, v3, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->getRow(I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v4

    .line 92
    iget-object v4, v4, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 93
    iget v5, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    move v6, v1

    :goto_25
    if-ge v6, v5, :cond_55

    .line 95
    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    if-nez v7, :cond_2e

    goto :goto_52

    .line 99
    :cond_2e
    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v8

    move v9, v1

    :goto_33
    const/4 v10, 0x6

    if-ge v9, v10, :cond_45

    .line 101
    iget-object v10, v7, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v11, v10, v9

    iget-object v12, v3, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v12, v12, v9

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    .line 103
    :cond_45
    iget-object v8, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_52

    .line 104
    iget-object v8, p0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 107
    :cond_55
    invoke-virtual {v3}, Landroid/support/constraint/solver/SolverVariable;->clearStrengths()V

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_5b
    return-void
.end method
