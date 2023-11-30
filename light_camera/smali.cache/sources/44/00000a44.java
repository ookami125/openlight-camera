package com.fihtdc.UploadAgentService.upload;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class StreamTool {
    public static void save(File file, byte[] bArr) throws Exception {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(bArr);
        fileOutputStream.close();
    }

    public static String readLine(PushbackInputStream pushbackInputStream) throws IOException {
        int read;
        char[] cArr = new char[128];
        int length = cArr.length;
        int i = 0;
        while (true) {
            read = pushbackInputStream.read();
            if (read == -1 || read == 10) {
                break;
            } else if (read == 13) {
                int read2 = pushbackInputStream.read();
                if (read2 != 10 && read2 != -1) {
                    pushbackInputStream.unread(read2);
                }
            } else {
                length--;
                if (length < 0) {
                    char[] cArr2 = new char[i + 128];
                    System.arraycopy(cArr, 0, cArr2, 0, i);
                    cArr = cArr2;
                    length = (cArr2.length - i) - 1;
                }
                cArr[i] = (char) read;
                i++;
            }
        }
        if (read == -1 && i == 0) {
            return null;
        }
        return String.copyValueOf(cArr, 0, i);
    }

    public static byte[] readStream(InputStream inputStream) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.close();
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }
}