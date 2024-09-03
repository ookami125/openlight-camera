.class public Lcom/bumptech/glide/load/model/ImageVideoWrapper;
.super Ljava/lang/Object;
.source "ImageVideoWrapper.java"


# instance fields
.field private final fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final streamData:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    .line 16
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public getStream()Ljava/io/InputStream;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    return-object p0
.end method
