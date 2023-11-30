package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.util.Map;
import net.hockeyapp.android.metrics.JsonHelper;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Application implements IJsonSerializable, Serializable {
    private String build;
    private String typeId;
    private String ver;

    protected void InitializeFields() {
    }

    public Application() {
        InitializeFields();
    }

    public String getVer() {
        return this.ver;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public String getBuild() {
        return this.build;
    }

    public void setBuild(String str) {
        this.build = str;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public void setTypeId(String str) {
        this.typeId = str;
    }

    public void addToHashMap(Map<String, String> map) {
        if (this.ver != null) {
            map.put("ai.application.ver", this.ver);
        }
        if (this.build != null) {
            map.put("ai.application.build", this.build);
        }
        if (this.typeId != null) {
            map.put("ai.application.typeId", this.typeId);
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
        if (this.ver != null) {
            writer.write("\"ai.application.ver\":");
            writer.write(JsonHelper.convert(this.ver));
            str = ",";
        }
        if (this.build != null) {
            writer.write(str + "\"ai.application.build\":");
            writer.write(JsonHelper.convert(this.build));
            str = ",";
        }
        if (this.typeId != null) {
            writer.write(str + "\"ai.application.typeId\":");
            writer.write(JsonHelper.convert(this.typeId));
            return ",";
        }
        return str;
    }
}