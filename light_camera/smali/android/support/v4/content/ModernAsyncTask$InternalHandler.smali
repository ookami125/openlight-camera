.class Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 494
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 500
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;

    .line 501
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_1e

    goto :goto_1c

    .line 507
    :pswitch_a
    iget-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    iget-object p0, p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/support/v4/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_1c

    .line 504
    :pswitch_12
    iget-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    iget-object p0, p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Landroid/support/v4/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method
