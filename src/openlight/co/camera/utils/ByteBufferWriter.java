package openlight.co.camera.utils;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;

public interface ByteBufferWriter extends Closeable {
    void close() throws IOException;
    int write(ByteBuffer byteBuffer) throws IOException;
}
