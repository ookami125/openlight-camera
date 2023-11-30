package openlight.co.camera.utils;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface ByteBufferWriter extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    int write(ByteBuffer byteBuffer) throws IOException;
}