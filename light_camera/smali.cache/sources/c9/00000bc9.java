package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.util.Map;
import net.hockeyapp.android.metrics.JsonHelper;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class User implements IJsonSerializable, Serializable {
    private String accountAcquisitionDate;
    private String accountId;
    private String anonUserAcquisitionDate;
    private String authUserAcquisitionDate;
    private String authUserId;
    private String id;
    private String storeRegion;
    private String userAgent;

    protected void InitializeFields() {
    }

    public User() {
        InitializeFields();
    }

    public String getAccountAcquisitionDate() {
        return this.accountAcquisitionDate;
    }

    public void setAccountAcquisitionDate(String str) {
        this.accountAcquisitionDate = str;
    }

    public String getAccountId() {
        return this.accountId;
    }

    public void setAccountId(String str) {
        this.accountId = str;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getStoreRegion() {
        return this.storeRegion;
    }

    public void setStoreRegion(String str) {
        this.storeRegion = str;
    }

    public String getAuthUserId() {
        return this.authUserId;
    }

    public void setAuthUserId(String str) {
        this.authUserId = str;
    }

    public String getAnonUserAcquisitionDate() {
        return this.anonUserAcquisitionDate;
    }

    public void setAnonUserAcquisitionDate(String str) {
        this.anonUserAcquisitionDate = str;
    }

    public String getAuthUserAcquisitionDate() {
        return this.authUserAcquisitionDate;
    }

    public void setAuthUserAcquisitionDate(String str) {
        this.authUserAcquisitionDate = str;
    }

    public void addToHashMap(Map<String, String> map) {
        if (this.accountAcquisitionDate != null) {
            map.put("ai.user.accountAcquisitionDate", this.accountAcquisitionDate);
        }
        if (this.accountId != null) {
            map.put("ai.user.accountId", this.accountId);
        }
        if (this.userAgent != null) {
            map.put("ai.user.userAgent", this.userAgent);
        }
        if (this.id != null) {
            map.put("ai.user.id", this.id);
        }
        if (this.storeRegion != null) {
            map.put("ai.user.storeRegion", this.storeRegion);
        }
        if (this.authUserId != null) {
            map.put("ai.user.authUserId", this.authUserId);
        }
        if (this.anonUserAcquisitionDate != null) {
            map.put("ai.user.anonUserAcquisitionDate", this.anonUserAcquisitionDate);
        }
        if (this.authUserAcquisitionDate != null) {
            map.put("ai.user.authUserAcquisitionDate", this.authUserAcquisitionDate);
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
        if (this.accountAcquisitionDate != null) {
            writer.write("\"ai.user.accountAcquisitionDate\":");
            writer.write(JsonHelper.convert(this.accountAcquisitionDate));
            str = ",";
        }
        if (this.accountId != null) {
            writer.write(str + "\"ai.user.accountId\":");
            writer.write(JsonHelper.convert(this.accountId));
            str = ",";
        }
        if (this.userAgent != null) {
            writer.write(str + "\"ai.user.userAgent\":");
            writer.write(JsonHelper.convert(this.userAgent));
            str = ",";
        }
        if (this.id != null) {
            writer.write(str + "\"ai.user.id\":");
            writer.write(JsonHelper.convert(this.id));
            str = ",";
        }
        if (this.storeRegion != null) {
            writer.write(str + "\"ai.user.storeRegion\":");
            writer.write(JsonHelper.convert(this.storeRegion));
            str = ",";
        }
        if (this.authUserId != null) {
            writer.write(str + "\"ai.user.authUserId\":");
            writer.write(JsonHelper.convert(this.authUserId));
            str = ",";
        }
        if (this.anonUserAcquisitionDate != null) {
            writer.write(str + "\"ai.user.anonUserAcquisitionDate\":");
            writer.write(JsonHelper.convert(this.anonUserAcquisitionDate));
            str = ",";
        }
        if (this.authUserAcquisitionDate != null) {
            writer.write(str + "\"ai.user.authUserAcquisitionDate\":");
            writer.write(JsonHelper.convert(this.authUserAcquisitionDate));
            return ",";
        }
        return str;
    }
}