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
    .locals 1
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

    if-eqz p1, :cond_0

    .line 296
    iput-object p1, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    return-void

    .line 295
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 356
    :try_start_0
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    if-ltz v0, :cond_0

    .line 357
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    .line 358
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 360
    :try_start_1
    iget-object v1, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :try_start_2
    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 362
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    :goto_0
    :try_start_4
    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    .line 365
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 368
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 355
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get()Ljava/lang/AutoCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAndIncrementSequence()I
    .locals 0

    .line 338
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    return p0
.end method

.method declared-synchronized getAndRetain()Ljava/lang/AutoCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 306
    :try_start_0
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 307
    monitor-exit p0

    return-object v0

    .line 309
    :cond_0
    :try_start_1
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    .line 310
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 305
    monitor-exit p0

    throw v0
.end method

.method getSequence()I
    .locals 0

    .line 329
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method setSequence(I)V
    .locals 0

    .line 347
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
