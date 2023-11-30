package com.bumptech.glide.util;

import android.util.Log;
import java.util.Queue;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public final class ByteArrayPool {
    private static final ByteArrayPool BYTE_ARRAY_POOL = new ByteArrayPool();
    private static final int MAX_BYTE_ARRAY_COUNT = 32;
    private static final int MAX_SIZE = 2146304;
    private static final String TAG = "ByteArrayPool";
    private static final int TEMP_BYTES_SIZE = 65536;
    private final Queue<byte[]> tempQueue = Util.createQueue(0);

    public static ByteArrayPool get() {
        return BYTE_ARRAY_POOL;
    }

    private ByteArrayPool() {
    }

    public void clear() {
        synchronized (this.tempQueue) {
            this.tempQueue.clear();
        }
    }

    public byte[] getBytes() {
        byte[] poll;
        synchronized (this.tempQueue) {
            poll = this.tempQueue.poll();
        }
        if (poll == null) {
            poll = new byte[65536];
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Created temp bytes");
            }
        }
        return poll;
    }

    public boolean releaseBytes(byte[] bArr) {
        boolean z = false;
        if (bArr.length != 65536) {
            return false;
        }
        synchronized (this.tempQueue) {
            if (this.tempQueue.size() < 32) {
                z = true;
                this.tempQueue.offer(bArr);
            }
        }
        return z;
    }
}