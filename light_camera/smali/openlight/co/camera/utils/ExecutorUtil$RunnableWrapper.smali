.class Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/ExecutorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableWrapper"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;->mRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p2, p0, Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .registers 1

    .line 60
    iget-object p0, p0, Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public run()V
    .registers 1

    .line 56
    iget-object p0, p0, Lopenlight/co/camera/utils/ExecutorUtil$RunnableWrapper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
