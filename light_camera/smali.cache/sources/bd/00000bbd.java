package net.hockeyapp.android.metrics.model;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.util.Map;
import net.hockeyapp.android.metrics.JsonHelper;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Device implements IJsonSerializable, Serializable {
    private String id;
    private String ip;
    private String language;
    private String locale;
    private String machineName;
    private String model;
    private String network;
    private String networkName;
    private String oemName;
    private String os;
    private String osVersion;
    private String roleInstance;
    private String roleName;
    private String screenResolution;
    private String type;
    private String vmName;

    protected void InitializeFields() {
    }

    public Device() {
        InitializeFields();
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getIp() {
        return this.ip;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public String getLocale() {
        return this.locale;
    }

    public void setLocale(String str) {
        this.locale = str;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public String getNetwork() {
        return this.network;
    }

    public void setNetwork(String str) {
        this.network = str;
    }

    public String getNetworkName() {
        return this.networkName;
    }

    public void setNetworkName(String str) {
        this.networkName = str;
    }

    public String getOemName() {
        return this.oemName;
    }

    public void setOemName(String str) {
        this.oemName = str;
    }

    public String getOs() {
        return this.os;
    }

    public void setOs(String str) {
        this.os = str;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public void setOsVersion(String str) {
        this.osVersion = str;
    }

    public String getRoleInstance() {
        return this.roleInstance;
    }

    public void setRoleInstance(String str) {
        this.roleInstance = str;
    }

    public String getRoleName() {
        return this.roleName;
    }

    public void setRoleName(String str) {
        this.roleName = str;
    }

    public String getScreenResolution() {
        return this.screenResolution;
    }

    public void setScreenResolution(String str) {
        this.screenResolution = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getMachineName() {
        return this.machineName;
    }

    public void setMachineName(String str) {
        this.machineName = str;
    }

    public String getVmName() {
        return this.vmName;
    }

    public void setVmName(String str) {
        this.vmName = str;
    }

    public void addToHashMap(Map<String, String> map) {
        if (this.id != null) {
            map.put("ai.device.id", this.id);
        }
        if (this.ip != null) {
            map.put("ai.device.ip", this.ip);
        }
        if (this.language != null) {
            map.put("ai.device.language", this.language);
        }
        if (this.locale != null) {
            map.put("ai.device.locale", this.locale);
        }
        if (this.model != null) {
            map.put("ai.device.model", this.model);
        }
        if (this.network != null) {
            map.put("ai.device.network", this.network);
        }
        if (this.networkName != null) {
            map.put("ai.device.networkName", this.networkName);
        }
        if (this.oemName != null) {
            map.put("ai.device.oemName", this.oemName);
        }
        if (this.os != null) {
            map.put("ai.device.os", this.os);
        }
        if (this.osVersion != null) {
            map.put("ai.device.osVersion", this.osVersion);
        }
        if (this.roleInstance != null) {
            map.put("ai.device.roleInstance", this.roleInstance);
        }
        if (this.roleName != null) {
            map.put("ai.device.roleName", this.roleName);
        }
        if (this.screenResolution != null) {
            map.put("ai.device.screenResolution", this.screenResolution);
        }
        if (this.type != null) {
            map.put("ai.device.type", this.type);
        }
        if (this.machineName != null) {
            map.put("ai.device.machineName", this.machineName);
        }
        if (this.vmName != null) {
            map.put("ai.device.vmName", this.vmName);
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
            writer.write("\"ai.device.id\":");
            writer.write(JsonHelper.convert(this.id));
            str = ",";
        }
        if (this.ip != null) {
            writer.write(str + "\"ai.device.ip\":");
            writer.write(JsonHelper.convert(this.ip));
            str = ",";
        }
        if (this.language != null) {
            writer.write(str + "\"ai.device.language\":");
            writer.write(JsonHelper.convert(this.language));
            str = ",";
        }
        if (this.locale != null) {
            writer.write(str + "\"ai.device.locale\":");
            writer.write(JsonHelper.convert(this.locale));
            str = ",";
        }
        if (this.model != null) {
            writer.write(str + "\"ai.device.model\":");
            writer.write(JsonHelper.convert(this.model));
            str = ",";
        }
        if (this.network != null) {
            writer.write(str + "\"ai.device.network\":");
            writer.write(JsonHelper.convert(this.network));
            str = ",";
        }
        if (this.networkName != null) {
            writer.write(str + "\"ai.device.networkName\":");
            writer.write(JsonHelper.convert(this.networkName));
            str = ",";
        }
        if (this.oemName != null) {
            writer.write(str + "\"ai.device.oemName\":");
            writer.write(JsonHelper.convert(this.oemName));
            str = ",";
        }
        if (this.os != null) {
            writer.write(str + "\"ai.device.os\":");
            writer.write(JsonHelper.convert(this.os));
            str = ",";
        }
        if (this.osVersion != null) {
            writer.write(str + "\"ai.device.osVersion\":");
            writer.write(JsonHelper.convert(this.osVersion));
            str = ",";
        }
        if (this.roleInstance != null) {
            writer.write(str + "\"ai.device.roleInstance\":");
            writer.write(JsonHelper.convert(this.roleInstance));
            str = ",";
        }
        if (this.roleName != null) {
            writer.write(str + "\"ai.device.roleName\":");
            writer.write(JsonHelper.convert(this.roleName));
            str = ",";
        }
        if (this.screenResolution != null) {
            writer.write(str + "\"ai.device.screenResolution\":");
            writer.write(JsonHelper.convert(this.screenResolution));
            str = ",";
        }
        if (this.type != null) {
            writer.write(str + "\"ai.device.type\":");
            writer.write(JsonHelper.convert(this.type));
            str = ",";
        }
        if (this.machineName != null) {
            writer.write(str + "\"ai.device.machineName\":");
            writer.write(JsonHelper.convert(this.machineName));
            str = ",";
        }
        if (this.vmName != null) {
            writer.write(str + "\"ai.device.vmName\":");
            writer.write(JsonHelper.convert(this.vmName));
            return ",";
        }
        return str;
    }
}