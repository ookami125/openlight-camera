.class public Lorg/apache/commons/io/filefilter/AgeFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "AgeFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1d9903ce8204c92dL


# instance fields
.field private final acceptOlder:Z

.field private final cutoff:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 79
    iput-boolean p3, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    .line 80
    iput-wide p1, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 5

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 3

    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Z)V
    .registers 5

    .line 102
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    .line 145
    iget-wide v0, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result p1

    .line 146
    iget-boolean p0, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    if-eqz p0, :cond_f

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :cond_f
    :goto_f
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 156
    iget-boolean v0, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    if-eqz v0, :cond_7

    const-string v0, "<="

    goto :goto_9

    :cond_7
    const-string v0, ">"

    .line 157
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
