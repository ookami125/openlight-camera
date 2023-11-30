package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.util.Map;
import net.hockeyapp.android.metrics.JsonHelper;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Session implements IJsonSerializable, Serializable {
    private String id;
    private String isFirst;
    private String isNew;

    protected void InitializeFields() {
    }

    public Session() {
        InitializeFields();
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getIsFirst() {
        return this.isFirst;
    }

    public void setIsFirst(String str) {
        this.isFirst = str;
    }

    public String getIsNew() {
        return this.isNew;
    }

    public void setIsNew(String str) {
        this.isNew = str;
    }

    public void addToHashMap(Map<String, String> map) {
        if (this.id != null) {
            map.put("ai.session.id", this.id);
        }
        if (this.isFirst != null) {
            map.put("ai.session.isFirst", this.isFirst);
        }
        if (this.isNew != null) {
            map.put("ai.session.isNew", this.isNew);
        }
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
        String str = "";
        if (this.id != null) {
            writer.write("\"ai.session.id\":");
            writer.write(JsonHelper.convert(this.id));
            str = ",";
        }
        if (this.isFirst != null) {
            writer.write(str + "\"ai.session.isFirst\":");
            writer.write(JsonHelper.convert(this.isFirst));
            str = ",";
        }
        if (this.isNew != null) {
            writer.write(str + "\"ai.session.isNew\":");
            writer.write(JsonHelper.convert(this.isNew));
            return ",";
        }
        return str;
    }
}