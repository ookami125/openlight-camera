.class public Lcom/bumptech/glide/load/resource/SimpleResource;
.super Ljava/lang/Object;
.source "SimpleResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    return-void

    .line 17
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Data must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/SimpleResource;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public recycle()V
    .registers 1

    return-void
.end method
