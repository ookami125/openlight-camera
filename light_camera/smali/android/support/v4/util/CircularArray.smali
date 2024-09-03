.class public final Landroid/support/v4/util/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    .line 47
    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_22

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_17

    add-int/lit8 p1, p1, -0x1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v0

    :cond_17
    add-int/lit8 v0, p1, -0x1

    .line 73
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    .line 74
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    return-void

    .line 61
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be <= 2^30"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doubleCapacity()V
    .registers 8

    .line 28
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    .line 29
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int v1, v0, v1

    shl-int/lit8 v2, v0, 0x1

    if-ltz v2, :cond_29

    .line 34
    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    invoke-static {v4, v6, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    .line 38
    iput v6, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 39
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v2, v2, -0x1

    .line 40
    iput v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    return-void

    .line 32
    :cond_29
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Max array capacity exceeded"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 82
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 83
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aput-object p1, v0, v1

    .line 84
    iget p1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne p1, v0, :cond_18

    .line 85
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    :cond_18
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    aput-object p1, v0, v1

    .line 95
    iget p1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 96
    iget p1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    if-ne p1, v0, :cond_18

    .line 97
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    :cond_18
    return-void
.end method

.method public clear()V
    .registers 2

    .line 136
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_13

    .line 238
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 241
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v1, p1

    iget p0, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0

    .line 239
    :cond_13
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 213
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v0, v1, :cond_d

    .line 216
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget p0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aget-object p0, v0, p0

    return-object p0

    .line 214
    :cond_d
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 225
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v0, v1, :cond_12

    .line 228
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0

    .line 226
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public isEmpty()Z
    .registers 2

    .line 257
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget p0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public popFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 107
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v0, v1, :cond_1d

    .line 110
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    aget-object v0, v0, v1

    .line 111
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 112
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    return-object v0

    .line 108
    :cond_1d
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public popLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 122
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-eq v0, v1, :cond_19

    .line 125
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    .line 126
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 127
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 128
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    return-object v1

    .line 123
    :cond_19
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public removeFromEnd(I)V
    .registers 6

    if-gtz p1, :cond_3

    return-void

    .line 183
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_40

    const/4 v0, 0x0

    .line 187
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ge p1, v1, :cond_11

    .line 188
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int/2addr v0, p1

    :cond_11
    move v1, v0

    .line 190
    :goto_12
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1e

    .line 191
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 193
    :cond_1e
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 195
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-lez p1, :cond_3f

    .line 198
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 199
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    sub-int/2addr v0, p1

    move p1, v0

    .line 200
    :goto_32
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ge p1, v1, :cond_3d

    .line 201
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    .line 203
    :cond_3d
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    :cond_3f
    return-void

    .line 184
    :cond_40
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public removeFromStart(I)V
    .registers 6

    if-gtz p1, :cond_3

    return-void

    .line 150
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_3c

    .line 153
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    .line 154
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int v1, v0, v1

    if-ge p1, v1, :cond_15

    .line 155
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v0, p1

    .line 157
    :cond_15
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    :goto_17
    const/4 v2, 0x0

    if-ge v1, v0, :cond_21

    .line 158
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 160
    :cond_21
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 162
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v1, v0

    iget v0, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    if-lez p1, :cond_3b

    const/4 v0, 0x0

    :goto_30
    if-ge v0, p1, :cond_39

    .line 166
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 168
    :cond_39
    iput p1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    :cond_3b
    return-void

    .line 151
    :cond_3c
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public size()I
    .registers 3

    .line 249
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr p0, v0

    return p0
.end method
