package com.fihtdc.UploadAgentService.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class DBOpenHelper extends SQLiteOpenHelper {
    public DBOpenHelper(Context context) {
        super(context, "uploadagent.db", (SQLiteDatabase.CursorFactory) null, 3);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE uploadlog (_id integer primary key autoincrement, uploadfilepath varchar(100), sourceid varchar(10), upload_count int(2))");
        sQLiteDatabase.execSQL("CREATE TABLE forcedupload (_id integer primary key autoincrement, upload_file_name varchar(60))");
        sQLiteDatabase.execSQL("CREATE TABLE file_info (_id integer primary key autoincrement, upload_file_name varchar(60), isForceUpload int(1), isResend int(1))");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS uploadlog");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS forcedupload");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS file_info");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS uploadlog");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS forcedupload");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS file_info");
        onCreate(sQLiteDatabase);
    }
}