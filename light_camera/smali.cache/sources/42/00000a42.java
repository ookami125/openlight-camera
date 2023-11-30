package com.fihtdc.UploadAgentService.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.fihtdc.UploadAgentService.data.FileInfo;
import java.io.File;
import java.util.ArrayList;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class UploadLogDBHelper {
    private String TAG = "com.fihtdc.UploadAgentService.database(7.0010.05(Evenwell_s))";
    private DBOpenHelper dbOpenHelper;

    public UploadLogDBHelper(Context context) {
        this.dbOpenHelper = new DBOpenHelper(context);
    }

    public void DisplayUploadFile() {
        SQLiteDatabase readableDatabase = this.dbOpenHelper.getReadableDatabase();
        if (readableDatabase == null || !readableDatabase.isOpen()) {
            return;
        }
        Cursor rawQuery = readableDatabase.rawQuery("select upload_file_name, isForceUpload, isResend from file_info", new String[0]);
        if (rawQuery.isClosed()) {
            return;
        }
        while (rawQuery.moveToNext()) {
            try {
                try {
                    String str = this.TAG;
                    Log.i(str, "upload_file_name: " + rawQuery.getString(0) + " isForceUpload: " + rawQuery.getInt(1) + " isResend: " + rawQuery.getInt(2));
                } catch (Exception e) {
                    Log.i(this.TAG, e.toString());
                }
            } finally {
                rawQuery.close();
                readableDatabase.close();
            }
        }
    }

    public ArrayList<String> getUploadFileList() {
        ArrayList<String> arrayList = new ArrayList<>();
        SQLiteDatabase readableDatabase = this.dbOpenHelper.getReadableDatabase();
        if (readableDatabase != null && readableDatabase.isOpen()) {
            Cursor rawQuery = readableDatabase.rawQuery("select upload_file_name from file_info where upload_file_name is not null", new String[0]);
            if (!rawQuery.isClosed()) {
                while (rawQuery.moveToNext()) {
                    try {
                        try {
                            arrayList.add(rawQuery.getString(0));
                        } catch (Exception e) {
                            Log.i(this.TAG, e.toString());
                        }
                    } finally {
                        rawQuery.close();
                        readableDatabase.close();
                    }
                }
            }
        }
        return arrayList;
    }

    public void insertUploadFileInfo(String str, boolean z, boolean z2) {
        String str2 = this.TAG;
        Log.i(str2, " upload_file_name: " + str + " isForceUpload: " + z + " isResend: " + z2);
        SQLiteDatabase writableDatabase = this.dbOpenHelper.getWritableDatabase();
        writableDatabase.execSQL("insert into file_info(upload_file_name, isForceUpload, isResend) values(?, ?, ?)", new Object[]{str, Integer.valueOf(z ? 1 : 0), Integer.valueOf(z2 ? 1 : 0)});
        writableDatabase.close();
    }

    public void deleteUploadFileInfo(String str) {
        SQLiteDatabase writableDatabase = this.dbOpenHelper.getWritableDatabase();
        writableDatabase.execSQL("delete from file_info where upload_file_name=?", new Object[]{str});
        writableDatabase.close();
    }

    public FileInfo getFileInfo(String str) {
        FileInfo fileInfo = new FileInfo();
        SQLiteDatabase readableDatabase = this.dbOpenHelper.getReadableDatabase();
        if (readableDatabase != null && readableDatabase.isOpen()) {
            Cursor rawQuery = readableDatabase.rawQuery("select upload_file_name, isForceUpload, isResend from file_info where upload_file_name = ?", new String[]{str});
            if (!rawQuery.isClosed()) {
                while (rawQuery.moveToNext()) {
                    try {
                        if (rawQuery.getInt(1) == 0) {
                            fileInfo.isForceUpload = false;
                        } else {
                            fileInfo.isForceUpload = true;
                        }
                        if (rawQuery.getInt(2) == 0) {
                            fileInfo.isResend = false;
                        } else {
                            fileInfo.isResend = true;
                        }
                    } catch (Exception unused) {
                    } catch (Throwable th) {
                        rawQuery.close();
                        readableDatabase.close();
                        throw th;
                    }
                }
                rawQuery.close();
                readableDatabase.close();
            }
        }
        return fileInfo;
    }

    public void close() {
        this.dbOpenHelper.close();
    }

    public String getBindId(File file) {
        SQLiteDatabase readableDatabase = this.dbOpenHelper.getReadableDatabase();
        String str = null;
        if (readableDatabase != null && readableDatabase.isOpen()) {
            Cursor rawQuery = readableDatabase.rawQuery("select sourceid from uploadlog where uploadfilepath=?", new String[]{file.getAbsolutePath()});
            if (!rawQuery.isClosed()) {
                try {
                    if (rawQuery.moveToFirst()) {
                        str = rawQuery.getString(0);
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    rawQuery.close();
                    readableDatabase.close();
                    throw th;
                }
                rawQuery.close();
                readableDatabase.close();
            }
        }
        return str;
    }

    public void save(String str, File file) {
        SQLiteDatabase writableDatabase = this.dbOpenHelper.getWritableDatabase();
        writableDatabase.execSQL("insert into uploadlog(uploadfilepath, sourceid,upload_count) values(?,?,?)", new Object[]{file.getAbsolutePath(), str, 1});
        writableDatabase.close();
    }

    public void delete(File file) {
        SQLiteDatabase writableDatabase = this.dbOpenHelper.getWritableDatabase();
        writableDatabase.execSQL("delete from uploadlog where uploadfilepath=?", new Object[]{file.getAbsolutePath()});
        writableDatabase.close();
    }

    public void deleteUploadFile(String str) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                SQLiteDatabase writableDatabase = this.dbOpenHelper.getWritableDatabase();
                try {
                    writableDatabase.execSQL("delete from file_info where upload_file_name=?", new Object[]{str});
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                } catch (Exception e) {
                    e = e;
                    sQLiteDatabase = writableDatabase;
                    Log.i(this.TAG, e.toString());
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    sQLiteDatabase = writableDatabase;
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}