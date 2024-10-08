.class Landroid/support/v4/provider/RawDocumentFile;
.super Landroid/support/v4/provider/DocumentFile;
.source "RawDocumentFile.java"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Landroid/support/v4/provider/DocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;)V

    .line 32
    iput-object p2, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .registers 8

    .line 164
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3b

    .line 167
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_b
    if-ge v0, v1, :cond_3a

    aget-object v4, p0, v0

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 169
    invoke-static {v4}, Landroid/support/v4/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 171
    :cond_1a
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_37

    const-string v3, "DocumentFile"

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3a
    move v0, v3

    :cond_3b
    return v0
.end method

.method private static getTypeForName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2e

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1d

    add-int/lit8 v0, v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    return-object p0

    :cond_1d
    const-string p0, "application/octet-stream"

    return-object p0
.end method


# virtual methods
.method public canRead()Z
    .registers 1

    .line 108
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    return p0
.end method

.method public canWrite()Z
    .registers 1

    .line 113
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    return p0
.end method

.method public createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .registers 4

    .line 54
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_16
    :goto_16
    new-instance p1, Landroid/support/v4/provider/RawDocumentFile;

    invoke-direct {p1, p0, v0}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V

    return-object p1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .registers 4

    .line 38
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 42
    :cond_1e
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    :try_start_25
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 45
    new-instance p2, Landroid/support/v4/provider/RawDocumentFile;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2d} :catch_2e

    return-object p2

    :catch_2e
    move-exception p0

    const-string p1, "DocumentFile"

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to createFile: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public delete()Z
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/support/v4/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z

    .line 119
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public exists()Z
    .registers 1

    .line 124
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_a
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/provider/RawDocumentFile;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 1

    .line 64
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isDirectory()Z
    .registers 1

    .line 83
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public isFile()Z
    .registers 1

    .line 88
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public isVirtual()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public lastModified()J
    .registers 3

    .line 98
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 103
    iget-object p0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroid/support/v4/provider/DocumentFile;
    .registers 7

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 132
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 133
    new-instance v5, Landroid/support/v4/provider/RawDocumentFile;

    invoke-direct {v5, p0, v4}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 136
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/support/v4/provider/DocumentFile;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/support/v4/provider/DocumentFile;

    return-object p0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 4

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 143
    iput-object v0, p0, Landroid/support/v4/provider/RawDocumentFile;->mFile:Ljava/io/File;

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
