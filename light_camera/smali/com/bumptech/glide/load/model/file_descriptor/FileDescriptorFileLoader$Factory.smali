.class public Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;
.super Ljava/lang/Object;
.source "FileDescriptorFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/io/File;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance p0, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;

    const-class p1, Landroid/net/Uri;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, p1, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object p0
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
