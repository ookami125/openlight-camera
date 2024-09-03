.class Landroid/support/v4/provider/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field private static final FLAG_VIRTUAL_DOCUMENT:I = 0x200

.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return v2

    .line 99
    :cond_9
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6

    const/4 v0, 0x2

    .line 108
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return v2

    .line 113
    :cond_9
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "flags"

    .line 114
    invoke-static {p0, p1, v3, v2}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result p0

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v2

    :cond_1a
    and-int/lit8 p1, p0, 0x4

    const/4 v3, 0x1

    if-eqz p1, :cond_20

    return v3

    :cond_20
    const-string p1, "vnd.android.document/directory"

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_2d

    return v3

    .line 130
    :cond_2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    and-int/2addr p0, v0

    if-eqz p0, :cond_37

    return v3

    :cond_37
    return v2
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 1

    if-eqz p0, :cond_8

    .line 211
    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    .line 213
    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 2

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 9

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x0

    const/4 v6, 0x0

    :try_start_6
    const-string v1, "document_id"

    .line 152
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_27
    .catchall {:try_start_6 .. :try_end_14} :catchall_25

    .line 154
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_22
    .catchall {:try_start_14 .. :try_end_18} :catchall_1f

    if-lez v0, :cond_1b

    const/4 p0, 0x1

    .line 159
    :cond_1b
    invoke-static {p1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_1f
    move-exception p0

    move-object v6, p1

    goto :goto_42

    :catch_22
    move-exception v0

    move-object v6, p1

    goto :goto_28

    :catchall_25
    move-exception p0

    goto :goto_42

    :catch_27
    move-exception v0

    :goto_28
    :try_start_28
    const-string p1, "DocumentFile"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_25

    .line 159
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :goto_42
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public static getFlags(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    const-string v0, "flags"

    const-wide/16 v1, 0x0

    .line 67
    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, "_display_name"

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, "mime_type"

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 58
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "vnd.android.document/directory"

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    return-object p0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3

    const-string v0, "vnd.android.document/directory"

    .line 71
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 2

    .line 38
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 2

    .line 75
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "vnd.android.document/directory"

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6

    .line 42
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 46
    :cond_8
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getFlags(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide p0

    const-wide/16 v2, 0x200

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    const-string v0, "last_modified"

    const-wide/16 v1, 0x0

    .line 84
    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    const-string v0, "_size"

    const-wide/16 v1, 0x0

    .line 88
    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .registers 6

    int-to-long v0, p3

    .line 185
    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .registers 12

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x1

    const/4 v6, 0x0

    .line 194
    :try_start_6
    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_33
    .catchall {:try_start_6 .. :try_end_13} :catchall_31

    .line 195
    :try_start_13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-nez p2, :cond_27

    .line 196
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_2e
    .catchall {:try_start_13 .. :try_end_23} :catchall_2b

    .line 204
    invoke-static {p1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v0

    :cond_27
    invoke-static {p1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    :catchall_2b
    move-exception p0

    move-object v6, p1

    goto :goto_4e

    :catch_2e
    move-exception p0

    move-object v6, p1

    goto :goto_34

    :catchall_31
    move-exception p0

    goto :goto_4e

    :catch_33
    move-exception p0

    :goto_34
    :try_start_34
    const-string p1, "DocumentFile"

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed query: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_31

    .line 204
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    :goto_4e
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x1

    const/4 v6, 0x0

    .line 169
    :try_start_6
    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_33
    .catchall {:try_start_6 .. :try_end_13} :catchall_31

    .line 170
    :try_start_13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-nez p2, :cond_27

    .line 171
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_2e
    .catchall {:try_start_13 .. :try_end_23} :catchall_2b

    .line 179
    invoke-static {p1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_27
    invoke-static {p1}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    :catchall_2b
    move-exception p0

    move-object v6, p1

    goto :goto_4e

    :catch_2e
    move-exception p0

    move-object v6, p1

    goto :goto_34

    :catchall_31
    move-exception p0

    goto :goto_4e

    :catch_33
    move-exception p0

    :goto_34
    :try_start_34
    const-string p1, "DocumentFile"

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed query: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_31

    .line 179
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    :goto_4e
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method
