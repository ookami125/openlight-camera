.class public Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;
.super Ljava/lang/Object;
.source "ImageReaderManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/ImageReaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefCountedAutoCloseable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/AutoCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/AutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mRefCount:I

.field private final mSequence:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/lang/AutoCloseable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    .line 287
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_12

    .line 296
    iput-object p1, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    return-void

    .line 295
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    .line 356
    :try_start_1
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    if-ltz v0, :cond_24

    .line 357
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    .line 358
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_26

    if-gez v0, :cond_24

    const/4 v0, 0x0

    .line 360
    :try_start_10
    iget-object v1, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1a
    .catchall {:try_start_10 .. :try_end_15} :catchall_18

    .line 364
    :try_start_15
    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_26

    goto :goto_24

    :catchall_18
    move-exception v1

    goto :goto_21

    :catch_1a
    move-exception v1

    .line 362
    :try_start_1b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_18

    .line 364
    :goto_21
    :try_start_21
    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    .line 365
    throw v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_26

    .line 368
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    .line 355
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get()Ljava/lang/AutoCloseable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAndIncrementSequence()I
    .registers 1

    .line 338
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    return p0
.end method

.method declared-synchronized getAndRetain()Ljava/lang/AutoCloseable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 306
    :try_start_1
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-gez v0, :cond_8

    const/4 v0, 0x0

    .line 307
    monitor-exit p0

    return-object v0

    .line 309
    :cond_8
    :try_start_8
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    .line 310
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    .line 305
    monitor-exit p0

    throw v0
.end method

.method getSequence()I
    .registers 1

    .line 329
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method setSequence(I)V
    .registers 2

    .line 347
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
