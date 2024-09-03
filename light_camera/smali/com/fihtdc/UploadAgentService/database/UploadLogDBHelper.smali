.class public Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;
.super Ljava/lang/Object;
.source "UploadLogDBHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.fihtdc.UploadAgentService.database(7.0010.05(Evenwell_s))"

    .line 17
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-direct {v0, p1}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    return-void
.end method


# virtual methods
.method public DisplayUploadFile()V
    .registers 7

    .line 25
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 26
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "select upload_file_name, isForceUpload, isResend from file_info"

    const/4 v2, 0x0

    .line 28
    new-array v3, v2, [Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_70

    .line 31
    :goto_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_5e
    .catchall {:try_start_1d .. :try_end_21} :catchall_5c

    if-nez v3, :cond_2a

    .line 37
    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 38
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_70

    .line 32
    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "upload_file_name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isForceUpload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isResend: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5b} :catch_5e
    .catchall {:try_start_2a .. :try_end_5b} :catchall_5c

    goto :goto_1d

    :catchall_5c
    move-exception p0

    goto :goto_69

    :catch_5e
    move-exception v2

    .line 35
    :try_start_5f
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_5c

    goto :goto_23

    .line 37
    :goto_69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 38
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 39
    throw p0

    :cond_70
    :goto_70
    return-void
.end method

.method public close()V
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->close()V

    return-void
.end method

.method public delete(Ljava/io/File;)V
    .registers 5

    .line 166
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "delete from uploadlog where uploadfilepath=?"

    const/4 v1, 0x1

    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public deleteUploadFile(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 177
    :try_start_1
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {v1}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_20
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    :try_start_7
    const-string v0, "delete from file_info where upload_file_name=?"

    const/4 v2, 0x1

    .line 178
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_1b
    .catchall {:try_start_7 .. :try_end_12} :catchall_18

    if-eqz v1, :cond_2f

    .line 183
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2f

    :catchall_18
    move-exception p0

    move-object v0, v1

    goto :goto_30

    :catch_1b
    move-exception p1

    move-object v0, v1

    goto :goto_21

    :catchall_1e
    move-exception p0

    goto :goto_30

    :catch_20
    move-exception p1

    .line 180
    :goto_21
    :try_start_21
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_1e

    if-eqz v0, :cond_2f

    .line 183
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2f
    :goto_2f
    return-void

    :goto_30
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 185
    :cond_35
    throw p0
.end method

.method public deleteUploadFileInfo(Ljava/lang/String;)V
    .registers 5

    .line 93
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "delete from file_info where upload_file_name=?"

    const/4 v1, 0x1

    .line 94
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getBindId(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 137
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    .line 139
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "select sourceid from uploadlog where uploadfilepath=?"

    const/4 v2, 0x1

    .line 141
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 140
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 144
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 145
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30
    .catchall {:try_start_25 .. :try_end_2f} :catchall_37

    move-object v0, v1

    .line 149
    :catch_30
    :cond_30
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 150
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3f

    :catchall_37
    move-exception v0

    .line 149
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 150
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 151
    throw v0

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method public getFileInfo(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/data/FileInfo;
    .registers 7

    .line 100
    new-instance v0, Lcom/fihtdc/UploadAgentService/data/FileInfo;

    invoke-direct {v0}, Lcom/fihtdc/UploadAgentService/data/FileInfo;-><init>()V

    .line 102
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 103
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "select upload_file_name, isForceUpload, isResend from file_info where upload_file_name = ?"

    const/4 v2, 0x1

    .line 105
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 104
    invoke-virtual {p0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_52

    .line 109
    :goto_25
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_4c

    .line 110
    :cond_2c
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_35

    .line 111
    iput-boolean v4, v0, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isForceUpload:Z

    goto :goto_37

    .line 113
    :cond_35
    iput-boolean v2, v0, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isForceUpload:Z

    :goto_37
    const/4 v1, 0x2

    .line 115
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_41

    .line 116
    iput-boolean v4, v0, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isResend:Z

    goto :goto_25

    .line 118
    :cond_41
    iput-boolean v2, v0, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isResend:Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_4c
    .catchall {:try_start_25 .. :try_end_43} :catchall_44

    goto :goto_25

    :catchall_44
    move-exception v0

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 124
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 125
    throw v0

    .line 123
    :catch_4c
    :goto_4c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 124
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_52
    return-object v0
.end method

.method public getUploadFileList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {v1}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 49
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "select upload_file_name from file_info where upload_file_name is not null"

    const/4 v3, 0x0

    .line 51
    new-array v4, v3, [Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 55
    :goto_22
    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_39
    .catchall {:try_start_22 .. :try_end_26} :catchall_37

    if-nez v4, :cond_2f

    .line 61
    :goto_28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 62
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4b

    .line 56
    :cond_2f
    :try_start_2f
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_39
    .catchall {:try_start_2f .. :try_end_36} :catchall_37

    goto :goto_22

    :catchall_37
    move-exception p0

    goto :goto_44

    :catch_39
    move-exception v3

    .line 59
    :try_start_3a
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_37

    goto :goto_28

    .line 61
    :goto_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 62
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 63
    throw p0

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public insertUploadFileInfo(Ljava/lang/String;ZZ)V
    .registers 7

    .line 84
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " upload_file_name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isForceUpload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isResend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "insert into file_info(upload_file_name, isForceUpload, isResend) values(?, ?, ?)"

    const/4 v1, 0x3

    .line 88
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public save(Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 159
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->dbOpenHelper:Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/database/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "insert into uploadlog(uploadfilepath, sourceid,upload_count) values(?,?,?)"

    const/4 v1, 0x3

    .line 161
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 160
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method
