.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
    .registers 2

    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 199
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq v0, p0, :cond_d

    const/4 p0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne p0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    .line 200
    :cond_d
    :goto_d
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 201
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_19

    .line 202
    # invokes: Lcom/bumptech/glide/load/engine/EngineJob;->handleResultOnMainThread()V
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->access$100(Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto :goto_1c

    .line 204
    :cond_19
    # invokes: Lcom/bumptech/glide/load/engine/EngineJob;->handleExceptionOnMainThread()V
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->access$200(Lcom/bumptech/glide/load/engine/EngineJob;)V

    :goto_1c
    return v0
.end method
