.class public Lorg/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "FileEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

.field private static final serialVersionUID:J = -0x22c5e8fed07c1d41L


# instance fields
.field private children:[Lorg/apache/commons/io/monitor/FileEntry;

.field private directory:Z

.field private exists:Z

.field private final file:Ljava/io/File;

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field private final parent:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    sput-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_10

    .line 77
    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    .line 78
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    .line 79
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void

    .line 75
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChildren()[Lorg/apache/commons/io/monitor/FileEntry;
    .registers 2

    .line 157
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_9

    :cond_7
    sget-object p0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    :goto_9
    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 175
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    return-object p0
.end method

.method public getLastModified()J
    .registers 3

    .line 203
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    return-wide v0
.end method

.method public getLength()J
    .registers 3

    .line 222
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-wide v0
.end method

.method public getLevel()I
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getLevel()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_e
    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 184
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParent()Lorg/apache/commons/io/monitor/FileEntry;
    .registers 1

    .line 137
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    return-object p0
.end method

.method public isDirectory()Z
    .registers 1

    .line 260
    iget-boolean p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return p0
.end method

.method public isExists()Z
    .registers 1

    .line 241
    iget-boolean p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return p0
.end method

.method public newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .registers 3

    .line 128
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .registers 15

    .line 99
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 100
    iget-wide v1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 101
    iget-boolean v3, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 102
    iget-wide v4, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 107
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_22

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_22

    move v6, v7

    goto :goto_23

    :cond_22
    move v6, v8

    :goto_23
    iput-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 108
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_30

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    goto :goto_31

    :cond_30
    move-wide v11, v9

    :goto_31
    iput-wide v11, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 109
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v6, :cond_3f

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-nez v6, :cond_3f

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    :cond_3f
    iput-wide v9, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 112
    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-ne p1, v0, :cond_57

    iget-wide v9, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    cmp-long p1, v9, v1

    if-nez p1, :cond_57

    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-ne p1, v3, :cond_57

    iget-wide p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    cmp-long p0, p0, v4

    if-eqz p0, :cond_56

    goto :goto_57

    :cond_56
    move v7, v8

    :cond_57
    :goto_57
    return v7
.end method

.method public setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public setDirectory(Z)V
    .registers 2

    .line 269
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return-void
.end method

.method public setExists(Z)V
    .registers 2

    .line 251
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return-void
.end method

.method public setLastModified(J)V
    .registers 3

    .line 213
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    return-void
.end method

.method public setLength(J)V
    .registers 3

    .line 231
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void
.end method
