.class public Lorg/apache/commons/io/input/ClosedInputStream;
.super Ljava/io/InputStream;
.source "ClosedInputStream.java"


# static fields
.field public static final CLOSED_INPUT_STREAM:Lorg/apache/commons/io/input/ClosedInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/ClosedInputStream;->CLOSED_INPUT_STREAM:Lorg/apache/commons/io/input/ClosedInputStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method
