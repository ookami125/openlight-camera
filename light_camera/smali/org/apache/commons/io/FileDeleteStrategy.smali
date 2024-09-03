.class public Lorg/apache/commons/io/FileDeleteStrategy;
.super Ljava/lang/Object;
.source "FileDeleteStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
    }
.end annotation


# static fields
.field public static final FORCE:Lorg/apache/commons/io/FileDeleteStrategy;

.field public static final NORMAL:Lorg/apache/commons/io/FileDeleteStrategy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lorg/apache/commons/io/FileDeleteStrategy;

    const-string v1, "Normal"

    invoke-direct {v0, v1}, Lorg/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/io/FileDeleteStrategy;->NORMAL:Lorg/apache/commons/io/FileDeleteStrategy;

    .line 45
    new-instance v0, Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;

    invoke-direct {v0}, Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;-><init>()V

    sput-object v0, Lorg/apache/commons/io/FileDeleteStrategy;->FORCE:Lorg/apache/commons/io/FileDeleteStrategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/commons/io/FileDeleteStrategy;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_24

    .line 94
    :cond_d
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deletion failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_24
    return-void
.end method

.method public deleteQuietly(Ljava/io/File;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 76
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z

    move-result p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return p0

    :catch_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method protected doDelete(Ljava/io/File;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDeleteStrategy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/io/FileDeleteStrategy;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
