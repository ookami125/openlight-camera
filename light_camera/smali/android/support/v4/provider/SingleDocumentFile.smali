.class Landroid/support/v4/provider/SingleDocumentFile;
.super Landroid/support/v4/provider/DocumentFile;
.source "SingleDocumentFile.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/provider/DocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;)V

    .line 30
    iput-object p2, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public canWrite()Z
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .registers 2

    .line 41
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .registers 3

    .line 36
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public delete()Z
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->delete(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public exists()Z
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 1

    .line 46
    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isDirectory()Z
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public isFile()Z
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public isVirtual()Z
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public lastModified()J
    .registers 3

    .line 76
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/support/v4/provider/DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroid/support/v4/provider/DocumentFile;
    .registers 1

    .line 106
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 2

    .line 111
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
