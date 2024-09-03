.class public final Lcom/bumptech/glide/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HEX_CHAR_ARRAY:[C

.field private static final SHA_1_CHARS:[C

.field private static final SHA_256_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789abcdef"

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    const/16 v0, 0x40

    .line 22
    new-array v0, v0, [C

    sput-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    const/16 v0, 0x28

    .line 24
    new-array v0, v0, [C

    sput-object v0, Lcom/bumptech/glide/util/Util;->SHA_1_CHARS:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertBackgroundThread()V
    .registers 2

    .line 143
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 144
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "YOu must call this method on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertMainThread()V
    .registers 2

    .line 134
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bytesToHex([B[C)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 52
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 53
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v2, v0, 0x2

    .line 54
    sget-object v3, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    ushr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 55
    sget-object v3, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_1f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static createQueue(I)Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method

.method public static getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
    .registers 3

    mul-int/2addr p0, p1

    .line 94
    invoke-static {p2}, Lcom/bumptech/glide/util/Util;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result p1

    mul-int/2addr p0, p1

    return p0
.end method

.method public static getBitmapByteSize(Landroid/graphics/Bitmap;)I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 81
    :try_start_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 86
    :catch_b
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .registers 2

    if-nez p0, :cond_4

    .line 100
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 104
    :cond_4
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x4

    goto :goto_14

    :pswitch_11
    const/4 p0, 0x2

    goto :goto_14

    :pswitch_13
    const/4 p0, 0x1

    :goto_14
    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static getSize(Landroid/graphics/Bitmap;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static getSnapshot(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1b
    return-object v0
.end method

.method public static isOnBackgroundThread()Z
    .registers 1

    .line 159
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isOnMainThread()Z
    .registers 2

    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isValidDimension(I)Z
    .registers 2

    if-gtz p0, :cond_9

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static isValidDimensions(II)Z
    .registers 2

    .line 123
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static sha1BytesToHex([B)Ljava/lang/String;
    .registers 3

    .line 43
    sget-object v0, Lcom/bumptech/glide/util/Util;->SHA_1_CHARS:[C

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/util/Util;->SHA_1_CHARS:[C

    invoke-static {p0, v1}, Lcom/bumptech/glide/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static sha256BytesToHex([B)Ljava/lang/String;
    .registers 3

    .line 34
    sget-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    invoke-static {p0, v1}, Lcom/bumptech/glide/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method
