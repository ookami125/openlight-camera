package org.apache.commons.io;

import java.io.File;
import java.io.IOException;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FileExistsException extends IOException {
    private static final long serialVersionUID = 1;

    public FileExistsException() {
    }

    public FileExistsException(String str) {
        super(str);
    }

    public FileExistsException(File file) {
        super("File " + file + " exists");
    }
}