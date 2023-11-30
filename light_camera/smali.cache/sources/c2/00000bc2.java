package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Writer;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface IJsonSerializable {
    void serialize(Writer writer) throws IOException;
}