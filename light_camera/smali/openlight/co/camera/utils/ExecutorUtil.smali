.class public Lopenlight/co/camera/utils/ExecutorUtil;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECS:I = 0xa

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final sExecutor:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lopenlight/co/camera/utils/ExecutorUtil;->CPU_COUNT:I

    .line 21
    sget v0, Lopenlight/co/camera/utils/ExecutorUtil;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lopenlight/co/camera/utils/ExecutorUtil;->MAXIMUM_POOL_SIZE:I

    .line 72
    new-instance v0, Lopenlight/co/camera/utils/ExecutorUtil$1;

    invoke-direct {v0}, Lopenlight/co/camera/utils/ExecutorUtil$1;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/ExecutorUtil;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 90
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lopenlight/co/camera/utils/ExecutorUtil;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 96
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lopenlight/co/camera/utils/ExecutorUtil;->MAXIMUM_POOL_SIZE:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lopenlight/co/camera/utils/ExecutorUtil;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lopenlight/co/camera/utils/ExecutorUtil;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x1

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lopenlight/co/camera/utils/ExecutorUtil;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    sget-object v0, Lopenlight/co/camera/utils/ExecutorUtil;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    sget-object v0, Lopenlight/co/camera/utils/ExecutorUtil;->sExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;

    invoke-direct {v1, p0, p1}, Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
