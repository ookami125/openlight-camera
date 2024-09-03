.class public Lcom/bumptech/glide/load/model/ImageVideoModelLoader;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "TA;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IVML"


# instance fields
.field private final fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_10

    if-eqz p2, :cond_8

    goto :goto_10

    .line 29
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_10
    :goto_10
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 32
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method


# virtual methods
.method public getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 42
    :goto_d
    iget-object v2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v2, :cond_18

    .line 43
    iget-object p0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p0

    goto :goto_19

    :cond_18
    move-object p0, v1

    :goto_19
    if-nez v0, :cond_1f

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    return-object v1

    .line 47
    :cond_1f
    :goto_1f
    new-instance p1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;-><init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p1
.end method
