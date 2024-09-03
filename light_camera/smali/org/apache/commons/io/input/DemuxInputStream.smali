.class public Lorg/apache/commons/io/input/DemuxInputStream;
.super Ljava/io/InputStream;
.source "DemuxInputStream.java"


# instance fields
.field private final m_streams:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    return-void
.end method


# virtual methods
.method public bindStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    .line 43
    iget-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 44
    iget-object p0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {p0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    if-eqz p0, :cond_d

    .line 60
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_d
    return-void
.end method

.method public read()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {p0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    if-eqz p0, :cond_f

    .line 77
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method
