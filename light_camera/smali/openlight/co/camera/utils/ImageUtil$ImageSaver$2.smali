.class Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Lopenlight/co/camera/utils/ByteBufferWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->saveImage(Landroid/media/Image;Ljava/security/PublicKey;)Lopenlight/co/camera/utils/ByteBufferWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;

.field final synthetic val$outputRaw:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 455
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;->this$0:Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

    iput-object p2, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;->val$outputRaw:Ljava/nio/channels/FileChannel;

    iput-object p3, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;->val$outputRaw:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;->val$outputRaw:Ljava/nio/channels/FileChannel;

    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method
