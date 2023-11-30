package com.fihtdc.UploadAgentService.util;

import android.content.Context;
import android.content.ContextWrapper;
import android.telephony.TelephonyManager;
import com.fihtdc.UploadAgentService.adapter.FihDualTelephonyManager;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.HashSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Util {
    public static final String APR_SERVER_URL = "apr.c2dms.com";
    public static final String DUTINFO_FILE_NAME = "DUTInfo.txt";
    private static final String TAG = "com.fihtdc.AprUploadService.common.util(7.0010.05(Evenwell_s))";
    private static final String TAG_LOG = "com.fihtdc.AprUploadService.process.log";
    public static final String TMP_UPLOAD_FOLDER = "upload";
    public static final String UPLOAD_SERVICE_PACKAGE_NAME = "com.evenwell.AprUploadService";

    public static File getUploadFolder(Context context) {
        File file = new File(getFileFolder(context), TMP_UPLOAD_FOLDER);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File getFileFolder(Context context) {
        return new ContextWrapper(context).getFilesDir();
    }

    public static File[] getUploadFiles(Context context) {
        return getUploadFolder(context).listFiles();
    }

    public String getDeviceId(Context context) {
        String imeiFromProperty = getImeiFromProperty();
        if ("null".equals(imeiFromProperty) || "".equals(imeiFromProperty)) {
            imeiFromProperty = FihDualTelephonyManager.getIMEI(context);
        }
        if ("null".equals(imeiFromProperty) || "".equals(imeiFromProperty)) {
            imeiFromProperty = getIMEI(context);
        }
        if ("null".equals(imeiFromProperty) || "".equals(imeiFromProperty)) {
            imeiFromProperty = getMeidFromProperty();
        }
        return ("null".equals(imeiFromProperty) || "".equals(imeiFromProperty)) ? getSerialNo(context) : imeiFromProperty;
    }

    private String getIMEI(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String deviceId = telephonyManager.getDeviceId();
            int i = 0;
            while (true) {
                if ((deviceId == null || deviceId.equals("") || deviceId.equals("null")) && i < 5) {
                    deviceId = telephonyManager.getDeviceId();
                    i++;
                }
            }
            return (deviceId == null || deviceId.equals("")) ? "null" : !deviceId.equals("null") ? deviceId : "null";
        } catch (Exception e) {
            e.printStackTrace();
            return "null";
        }
    }

    private String getImeiFromProperty() {
        return getSystemProperty("persist.radio.imei", "null");
    }

    private String getMeidFromProperty() {
        return getSystemProperty("persist.radio.meid", "null");
    }

    public String getSerialNo(Context context) {
        try {
            return getSystemProperty("ro.serialno", "null");
        } catch (Exception e) {
            e.printStackTrace();
            return "null";
        }
    }

    public static String getSystemProperty(String str, Object obj) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, obj);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getDeviceModel(Context context) {
        try {
            File file = new File("/proc/fver");
            if (file.isFile() && file.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                if (readLine != null) {
                    String[] split = readLine.split("-");
                    if (split.length >= 5) {
                        String[] split2 = split[0].split(",");
                        if (split2.length == 2) {
                            return split2[1];
                        }
                    }
                }
            }
            File file2 = new File("/proc/devmodel");
            if (file2.isFile() && file2.exists()) {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file2));
                String readLine2 = bufferedReader2.readLine();
                bufferedReader2.close();
                return readLine2 != null ? readLine2 : "null";
            }
            return "null";
        } catch (Exception e) {
            e.printStackTrace();
            return "null";
        }
    }

    public void convertStringToFile(String str, File file) {
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file));
            } catch (Exception unused) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                bufferedWriter.append((CharSequence) str);
                bufferedWriter.flush();
                bufferedWriter.close();
            } catch (Exception unused2) {
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.flush();
                        bufferedWriter2.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
        }
    }

    public void addFilesToZip(File file, File[] fileArr) {
        if (isNormalZipFile(file)) {
            try {
                file.getName();
                File createTempFile = File.createTempFile(file.getName(), null);
                createTempFile.delete();
                if (file.renameTo(createTempFile)) {
                    byte[] bArr = new byte[1024];
                    ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(createTempFile));
                    ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
                    HashSet hashSet = new HashSet();
                    while (true) {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry == null) {
                            break;
                        }
                        nextEntry.getName();
                        hashSet.add(nextEntry.getName());
                        zipOutputStream.putNextEntry(nextEntry);
                        for (int read = zipInputStream.read(bArr); read > -1; read = zipInputStream.read(bArr)) {
                            zipOutputStream.write(bArr, 0, read);
                        }
                        zipOutputStream.closeEntry();
                    }
                    zipInputStream.closeEntry();
                    zipInputStream.close();
                    for (int i = 0; i < fileArr.length; i++) {
                        if (!hashSet.contains(fileArr[i].getName())) {
                            FileInputStream fileInputStream = new FileInputStream(fileArr[i]);
                            zipOutputStream.putNextEntry(new ZipEntry(fileArr[i].getName()));
                            while (true) {
                                int read2 = fileInputStream.read(bArr);
                                if (read2 <= -1) {
                                    break;
                                }
                                zipOutputStream.write(bArr, 0, read2);
                            }
                            zipOutputStream.closeEntry();
                            fileInputStream.close();
                        }
                    }
                    zipOutputStream.close();
                    createTempFile.delete();
                }
            } catch (Exception e) {
                file.delete();
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
        if (r1 != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean isNormalZipFile(java.io.File r7) {
        /*
            r6 = this;
            r6 = 1024(0x400, float:1.435E-42)
            r0 = 1
            r1 = 0
            r2 = 0
            byte[] r6 = new byte[r6]     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4c
            java.util.zip.ZipInputStream r3 = new java.util.zip.ZipInputStream     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4c
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4c
            r4.<init>(r7)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4c
            r3.<init>(r4)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4c
            java.util.zip.ZipEntry r2 = r3.getNextEntry()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L49
            r4 = r1
        L16:
            if (r2 != 0) goto L1a
        L18:
            r1 = r0
            goto L31
        L1a:
            r2.getName()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L49
            int r2 = r3.read(r6)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L49
        L21:
            r5 = -1
            if (r2 > r5) goto L25
            goto L2e
        L25:
            if (r2 != 0) goto L29
            int r4 = r4 + 1
        L29:
            r2 = 2000(0x7d0, float:2.803E-42)
            if (r4 <= r2) goto L44
            r0 = r1
        L2e:
            if (r0 != 0) goto L3f
            goto L18
        L31:
            if (r1 == 0) goto L39
            r3.closeEntry()     // Catch: java.lang.Exception -> L39
            r3.close()     // Catch: java.lang.Exception -> L39
        L39:
            if (r1 != 0) goto L5d
        L3b:
            r7.delete()
            goto L5d
        L3f:
            java.util.zip.ZipEntry r2 = r3.getNextEntry()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L49
            goto L16
        L44:
            int r2 = r3.read(r6)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L49
            goto L21
        L49:
            r6 = move-exception
            r2 = r3
            goto L4d
        L4c:
            r6 = move-exception
        L4d:
            if (r0 == 0) goto L57
            if (r2 == 0) goto L57
            r2.closeEntry()     // Catch: java.lang.Exception -> L57
            r2.close()     // Catch: java.lang.Exception -> L57
        L57:
            if (r0 != 0) goto L5c
            r7.delete()
        L5c:
            throw r6
        L5d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fihtdc.UploadAgentService.util.Util.isNormalZipFile(java.io.File):boolean");
    }

    public static String getSWVerInfo() {
        String[] split;
        try {
            File file = new File("/proc/fver");
            if (file.isFile() && file.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                if (readLine != null) {
                    if (readLine.split("-").length >= 5) {
                        String str = String.valueOf(split[1]) + "_" + split[3] + "_" + split[4].substring(0, 3);
                        if (str != null) {
                            return str;
                        }
                    }
                }
            }
            File file2 = new File("/build_id");
            if (file2.isFile() && file2.exists()) {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file2));
                String readLine2 = bufferedReader2.readLine();
                bufferedReader2.close();
                if (readLine2 != null) {
                    return readLine2;
                }
            }
            File file3 = new File("/system/build_id");
            if (file3.isFile() && file3.exists()) {
                BufferedReader bufferedReader3 = new BufferedReader(new FileReader(file3));
                String readLine3 = bufferedReader3.readLine();
                bufferedReader3.close();
                return readLine3 != null ? readLine3 : "0000_0000_000";
            }
            return "0000_0000_000";
        } catch (Exception e) {
            e.printStackTrace();
            return "0000_0000_000";
        }
    }
}