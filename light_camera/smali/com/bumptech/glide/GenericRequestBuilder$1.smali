.class Lcom/bumptech/glide/GenericRequestBuilder$1;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/GenericRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/GenericRequestBuilder;

.field final synthetic val$target:Lcom/bumptech/glide/request/RequestFutureTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V
    .registers 3

    .line 718
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->this$0:Lcom/bumptech/glide/GenericRequestBuilder;

    iput-object p2, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 721
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 722
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->this$0:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_f
    return-void
.end method
