package org.apache.commons.io;

import java.io.IOException;

@Deprecated
/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class IOExceptionWithCause extends IOException {
    private static final long serialVersionUID = 1;

    public IOExceptionWithCause(String str, Throwable th) {
        super(str, th);
    }

    public IOExceptionWithCause(Throwable th) {
        super(th);
    }
}