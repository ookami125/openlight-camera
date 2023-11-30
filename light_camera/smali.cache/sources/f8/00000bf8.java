package net.hockeyapp.android.utils;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;
import org.apache.commons.io.IOUtils;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class SimpleMultipartEntity {
    private static final char[] BOUNDARY_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private String mBoundary;
    private boolean mIsSetFirst = false;
    private boolean mIsSetLast = false;
    private ByteArrayOutputStream mOut = new ByteArrayOutputStream();

    public SimpleMultipartEntity() {
        StringBuffer stringBuffer = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < 30; i++) {
            stringBuffer.append(BOUNDARY_CHARS[random.nextInt(BOUNDARY_CHARS.length)]);
        }
        this.mBoundary = stringBuffer.toString();
    }

    public String getBoundary() {
        return this.mBoundary;
    }

    public void writeFirstBoundaryIfNeeds() throws IOException {
        if (!this.mIsSetFirst) {
            ByteArrayOutputStream byteArrayOutputStream = this.mOut;
            byteArrayOutputStream.write(("--" + this.mBoundary + IOUtils.LINE_SEPARATOR_WINDOWS).getBytes());
        }
        this.mIsSetFirst = true;
    }

    public void writeLastBoundaryIfNeeds() {
        if (this.mIsSetLast) {
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = this.mOut;
            byteArrayOutputStream.write(("\r\n--" + this.mBoundary + "--\r\n").getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.mIsSetLast = true;
    }

    public void addPart(String str, String str2) throws IOException {
        writeFirstBoundaryIfNeeds();
        ByteArrayOutputStream byteArrayOutputStream = this.mOut;
        byteArrayOutputStream.write(("Content-Disposition: form-data; name=\"" + str + "\"\r\n").getBytes());
        this.mOut.write("Content-Type: text/plain; charset=UTF-8\r\n".getBytes());
        this.mOut.write("Content-Transfer-Encoding: 8bit\r\n\r\n".getBytes());
        this.mOut.write(str2.getBytes());
        ByteArrayOutputStream byteArrayOutputStream2 = this.mOut;
        byteArrayOutputStream2.write(("\r\n--" + this.mBoundary + IOUtils.LINE_SEPARATOR_WINDOWS).getBytes());
    }

    public void addPart(String str, File file, boolean z) throws IOException {
        addPart(str, file.getName(), new FileInputStream(file), z);
    }

    public void addPart(String str, String str2, InputStream inputStream, boolean z) throws IOException {
        addPart(str, str2, inputStream, "application/octet-stream", z);
    }

    public void addPart(String str, String str2, InputStream inputStream, String str3, boolean z) throws IOException {
        writeFirstBoundaryIfNeeds();
        try {
            this.mOut.write(("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"\r\n").getBytes());
            this.mOut.write(("Content-Type: " + str3 + IOUtils.LINE_SEPARATOR_WINDOWS).getBytes());
            this.mOut.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                this.mOut.write(bArr, 0, read);
            }
            this.mOut.flush();
            if (z) {
                writeLastBoundaryIfNeeds();
            } else {
                this.mOut.write(("\r\n--" + this.mBoundary + IOUtils.LINE_SEPARATOR_WINDOWS).getBytes());
            }
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            throw th;
        }
    }

    public long getContentLength() {
        writeLastBoundaryIfNeeds();
        return this.mOut.toByteArray().length;
    }

    public String getContentType() {
        return "multipart/form-data; boundary=" + getBoundary();
    }

    public ByteArrayOutputStream getOutputStream() {
        writeLastBoundaryIfNeeds();
        return this.mOut;
    }
}