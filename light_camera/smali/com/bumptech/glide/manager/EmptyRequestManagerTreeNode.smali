.class final Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;
.super Ljava/lang/Object;
.source "EmptyRequestManagerTreeNode.java"

# interfaces
.implements Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescendants()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
