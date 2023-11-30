package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Writer;
import net.hockeyapp.android.metrics.JsonHelper;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Extension implements IJsonSerializable {
    private String ver = "1.0";

    protected void InitializeFields() {
    }

    public Extension() {
        InitializeFields();
    }

    public String getVer() {
        return this.ver;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    @Override // net.hockeyapp.android.metrics.model.IJsonSerializable
    public void serialize(Writer writer) throws IOException {
        if (writer == null) {
            throw new IllegalArgumentException("writer");
        }
        writer.write(123);
        serializeContent(writer);
        writer.write(125);
    }

    protected String serializeContent(Writer writer) throws IOException {
        if (this.ver != null) {
            writer.write("\"ver\":");
            writer.write(JsonHelper.convert(this.ver));
            return ",";
        }
        return "";
    }
}