.class public final Landroid/support/v4/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/support/v4/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 52
    new-array v1, v0, [I

    sput-object v1, Landroid/support/v4/util/ArraySet;->INT:[I

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0, v0}, Landroid/support/v4/util/ArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-boolean p2, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-nez p1, :cond_10

    .line 255
    sget-object p1, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 256
    sget-object p1, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_13

    .line 258
    :cond_10
    invoke-direct {p0, p1}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    :goto_13
    const/4 p1, 0x0

    .line 260
    iput p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    .line 269
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    .line 277
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_32

    .line 162
    const-class v3, Landroid/support/v4/util/ArraySet;

    monitor-enter v3

    .line 163
    :try_start_a
    sget-object v4, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2d

    .line 164
    sget-object p1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 165
    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 166
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 167
    aget-object v4, p1, v2

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 168
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 169
    sget p0, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr p0, v2

    sput p0, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 174
    monitor-exit v3

    return-void

    .line 176
    :cond_2d
    monitor-exit v3

    goto :goto_60

    :catchall_2f
    move-exception p0

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw p0

    :cond_32
    const/4 v3, 0x4

    if-ne p1, v3, :cond_60

    .line 178
    const-class v3, Landroid/support/v4/util/ArraySet;

    monitor-enter v3

    .line 179
    :try_start_38
    sget-object v4, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_5b

    .line 180
    sget-object p1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 181
    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 182
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 183
    aget-object v4, p1, v2

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 184
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 185
    sget p0, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    sub-int/2addr p0, v2

    sput p0, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    .line 190
    monitor-exit v3

    return-void

    .line 192
    :cond_5b
    monitor-exit v3

    goto :goto_60

    :catchall_5d
    move-exception p0

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_38 .. :try_end_5f} :catchall_5d

    throw p0

    .line 195
    :cond_60
    :goto_60
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 196
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 10

    .line 201
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2c

    .line 202
    const-class v0, Landroid/support/v4/util/ArraySet;

    monitor-enter v0

    .line 203
    :try_start_e
    sget v6, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_27

    .line 204
    sget-object v4, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 205
    aput-object p0, p1, v5

    sub-int/2addr p2, v5

    :goto_19
    if-lt p2, v2, :cond_20

    .line 207
    aput-object v1, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    .line 209
    :cond_20
    sput-object p1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 210
    sget p0, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 216
    :cond_27
    monitor-exit v0

    goto :goto_51

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    throw p0

    .line 217
    :cond_2c
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_51

    .line 218
    const-class v0, Landroid/support/v4/util/ArraySet;

    monitor-enter v0

    .line 219
    :try_start_33
    sget v6, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    if-ge v6, v4, :cond_4c

    .line 220
    sget-object v4, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 221
    aput-object p0, p1, v5

    sub-int/2addr p2, v5

    :goto_3e
    if-lt p2, v2, :cond_45

    .line 223
    aput-object v1, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_3e

    .line 225
    :cond_45
    sput-object p1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 226
    sget p0, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    .line 232
    :cond_4c
    monitor-exit v0

    goto :goto_51

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    throw p0

    :cond_51
    :goto_51
    return-void
.end method

.method private getCollection()Landroid/support/v4/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    if-nez v0, :cond_b

    .line 666
    new-instance v0, Landroid/support/v4/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/support/v4/util/ArraySet$1;-><init>(Landroid/support/v4/util/ArraySet;)V

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    .line 713
    :cond_b
    iget-object p0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    return-object p0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 7

    .line 84
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 91
    :cond_6
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    .line 99
    :cond_f
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v1, 0x1

    :goto_1c
    if-ge v2, v0, :cond_32

    .line 105
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_32

    .line 106
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_32
    add-int/lit8 v1, v1, -0x1

    :goto_34
    if-ltz v1, :cond_4a

    .line 110
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_4a

    .line 111
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    return v1

    :cond_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_4a
    not-int p0, v2

    return p0
.end method

.method private indexOfNull()I
    .registers 5

    .line 122
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 129
    :cond_6
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    .line 137
    :cond_10
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v2, v1, 0x1

    :goto_19
    if-ge v2, v0, :cond_2b

    .line 143
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2b

    .line 144
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    :goto_2d
    if-ltz v1, :cond_3f

    .line 148
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_3f

    .line 149
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    :cond_3f
    not-int p0, v2

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 365
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result v1

    move v2, v0

    goto :goto_1d

    .line 367
    :cond_9
    iget-boolean v1, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v1, :cond_12

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 368
    :goto_16
    invoke-direct {p0, p1, v1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_1d
    if-ltz v1, :cond_20

    return v0

    :cond_20
    not-int v1, v1

    .line 375
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_59

    .line 376
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v4, 0x4

    const/16 v6, 0x8

    if-lt v3, v6, :cond_37

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    shr-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_3c

    :cond_37
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lt v3, v4, :cond_3c

    move v4, v6

    .line 381
    :cond_3c
    :goto_3c
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 382
    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 383
    invoke-direct {p0, v4}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 385
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-lez v4, :cond_54

    .line 387
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v7, v3

    invoke-static {v3, v0, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v0, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    :cond_54
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v3, v6, v0}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 394
    :cond_59
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v0, :cond_73

    .line 398
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v6, v1

    invoke-static {v0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v6, v1

    invoke-static {v0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    :cond_73
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput v2, v0, v1

    .line 403
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 404
    iget p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/2addr p1, v5

    iput p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return v5
.end method

.method public addAll(Landroid/support/v4/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 443
    iget v0, p1, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 444
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    .line 445
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_20

    if-lez v0, :cond_2c

    .line 447
    iget-object v1, p1, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iget-object p1, p1, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    goto :goto_2c

    :cond_20
    :goto_20
    if-ge v2, v0, :cond_2c

    .line 453
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2c
    :goto_2c
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 751
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    .line 753
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 754
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 415
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_13

    .line 416
    :cond_6
    iget-boolean v1, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v1, :cond_f

    .line 417
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 418
    :goto_13
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_33

    if-lez v0, :cond_26

    .line 421
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_26

    .line 430
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_26
    add-int/lit8 v2, v0, 0x1

    .line 433
    iput v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 434
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput v1, v2, v0

    .line 435
    iget-object p0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, p0, v0

    return-void

    .line 419
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Array is full"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .registers 4

    .line 286
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eqz v0, :cond_18

    .line 287
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 288
    sget-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 289
    sget-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    :cond_18
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 736
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 737
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 738
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public ensureCapacity(I)V
    .registers 6

    .line 299
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_24

    .line 300
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 301
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 302
    invoke-direct {p0, p1}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 303
    iget p1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lez p1, :cond_1f

    .line 304
    iget-object p1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    :cond_1f
    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1, p0}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_24
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 593
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 594
    check-cast p1, Ljava/util/Set;

    .line 595
    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    move v1, v2

    .line 600
    :goto_17
    :try_start_17
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v3, :cond_29

    .line 601
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 602
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_23} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_23} :catch_2a

    if-nez v3, :cond_26

    return v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    return v0

    :catch_2a
    return v2

    :catch_2b
    return v2

    :cond_2c
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 621
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 623
    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, p0, :cond_e

    .line 624
    aget v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    .line 329
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result p0

    goto :goto_18

    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_10

    .line 330
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_14
    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    :goto_18
    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 347
    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-gtz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 725
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->getCollection()Landroid/support/v4/util/MapCollections;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 466
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 468
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Landroid/support/v4/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 539
    iget v0, p1, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 543
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_12

    .line 545
    invoke-virtual {p1, v3}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 547
    :cond_12
    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eq v1, p0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 767
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 768
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 481
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1e

    .line 484
    iget-object p1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {p1, v1, v3}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 485
    sget-object p1, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 486
    sget-object p1, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 487
    iput v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    goto :goto_8d

    .line 489
    :cond_1e
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v1, v1

    const/16 v4, 0x8

    if-le v1, v4, :cond_67

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v1, v5, :cond_67

    .line 493
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-le v1, v4, :cond_38

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    shr-int/2addr v4, v3

    add-int/2addr v4, v1

    .line 497
    :cond_38
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 498
    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 499
    invoke-direct {p0, v4}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 501
    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lez p1, :cond_50

    .line 504
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v1, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    :cond_50
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v2, :cond_8d

    add-int/lit8 v2, p1, 0x1

    .line 512
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr p0, p1

    invoke-static {v5, v2, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8d

    .line 516
    :cond_67
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 517
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v1, :cond_86

    .line 521
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    :cond_86
    iget-object p1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    aput-object v1, p1, p0

    :cond_8d
    :goto_8d
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 782
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_5
    if-ltz v0, :cond_18

    .line 783
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 784
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move v2, v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_18
    return v2
.end method

.method public size()I
    .registers 1

    .line 555
    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .line 560
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 561
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 567
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_15

    .line 569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 572
    :cond_15
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-le v0, v1, :cond_27

    .line 574
    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_27
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 638
    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "{}"

    return-object p0

    .line 642
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 644
    :goto_18
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_35

    if-lez v1, :cond_23

    const-string v2, ", "

    .line 646
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_23
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2d

    .line 650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2d
    const-string v2, "(this Set)"

    .line 652
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_35
    const/16 p0, 0x7d

    .line 655
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 339
    iget-object p0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method
