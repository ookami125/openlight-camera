.class public Lcom/fihtdc/UploadAgentService/adapter/FihDualTelephonyManager;
.super Ljava/lang/Object;
.source "FihDualTelephonyManager.java"


# static fields
.field public static final PHONE_TYPE_CDMA_PHONE:I = 0x2

.field public static final PHONE_TYPE_GSM_PHONE:I = 0x1

.field public static final PHONE_TYPE_NO_PHONE:I = 0x0

.field public static final PHONE_TYPE_SIP_PHONE:I = 0x3

.field private static final SDK_INT_LOLLIPOP:I = 0x15

.field private static final TAG:Ljava/lang/String; = "com.fihtdc.AprUploadService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceID(Landroid/content/Context;)Lcom/fihtdc/UploadAgentService/data/DeviceID;
    .registers 5

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "com.fihtdc.AprUploadService"

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android SDK: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_25

    const-string v0, "com.fihtdc.AprUploadService"

    const-string v1, "getDeviceIDFor4X"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0}, Lcom/fihtdc/UploadAgentService/adapter/FihDualTelephonyManager;->getDeviceIDFor4X(Landroid/content/Context;)Lcom/fihtdc/UploadAgentService/data/DeviceID;

    move-result-object p0

    goto :goto_30

    :cond_25
    const-string v0, "com.fihtdc.AprUploadService"

    const-string v1, "getDeviceIDFor5X"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p0}, Lcom/fihtdc/UploadAgentService/adapter/FihDualTelephonyManager;->getDeviceIDFor5X(Landroid/content/Context;)Lcom/fihtdc/UploadAgentService/data/DeviceID;

    move-result-object p0

    :goto_30
    return-object p0
.end method

.method private static getDeviceIDFor4X(Landroid/content/Context;)Lcom/fihtdc/UploadAgentService/data/DeviceID;
    .registers 10

    .line 80
    new-instance v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;

    invoke-direct {v0}, Lcom/fihtdc/UploadAgentService/data/DeviceID;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "com.fihtdc.telephony.TelephonyManagerFihAdaptorDual"

    .line 82
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDeviceId"

    const/4 v4, 0x1

    .line 84
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "getPhoneType"

    .line 85
    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 86
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p0, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 87
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 91
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v5, 0x2

    if-ne v4, v6, :cond_7d

    .line 94
    iput-object v2, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei:Ljava/lang/String;

    goto :goto_81

    :cond_7d
    if-ne v5, v6, :cond_81

    .line 96
    iput-object v2, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid:Ljava/lang/String;

    :cond_81
    :goto_81
    if-ne v4, p0, :cond_86

    .line 100
    iput-object v3, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei2:Ljava/lang/String;

    goto :goto_8a

    :cond_86
    if-ne v5, p0, :cond_8a

    .line 102
    iput-object v3, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid2:Ljava/lang/String;

    .line 105
    :cond_8a
    :goto_8a
    iput-boolean v4, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->hasFihTelephonyManager:Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8c} :catch_8d

    goto :goto_9f

    :catch_8d
    const-string p0, "null"

    .line 107
    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei:Ljava/lang/String;

    const-string p0, "null"

    .line 108
    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei2:Ljava/lang/String;

    const-string p0, "null"

    .line 109
    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid:Ljava/lang/String;

    const-string p0, "null"

    .line 110
    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid2:Ljava/lang/String;

    .line 111
    iput-boolean v1, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->hasFihTelephonyManager:Z

    :goto_9f
    return-object v0
.end method

.method private static getDeviceIDFor5X(Landroid/content/Context;)Lcom/fihtdc/UploadAgentService/data/DeviceID;
    .registers 10

    .line 43
    new-instance v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;

    invoke-direct {v0}, Lcom/fihtdc/UploadAgentService/data/DeviceID;-><init>()V

    const-string v1, "phone"

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    :try_start_e
    const-string v2, "android.telephony.TelephonyManager"

    .line 46
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDeviceId"

    const/4 v4, 0x1

    .line 47
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "getCurrentPhoneType"

    const/4 v6, 0x0

    .line 48
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 49
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 50
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 52
    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x2

    if-ne v4, p0, :cond_54

    .line 56
    iput-object v5, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei:Ljava/lang/String;

    goto :goto_58

    :cond_54
    if-ne v2, p0, :cond_58

    .line 58
    iput-object v5, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid:Ljava/lang/String;

    :cond_58
    :goto_58
    if-ne v4, p0, :cond_5d

    .line 62
    iput-object v3, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei2:Ljava/lang/String;

    goto :goto_74

    :cond_5d
    if-ne v2, p0, :cond_74

    .line 64
    iput-object v3, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid2:Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_61} :catch_62

    goto :goto_74

    :catch_62
    const-string p0, "null"

    .line 68
    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei:Ljava/lang/String;

    const-string p0, "null"

    .line 69
    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei2:Ljava/lang/String;

    const-string p0, "null"

    .line 70
    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid:Ljava/lang/String;

    const-string p0, "null"

    .line 71
    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid2:Ljava/lang/String;

    .line 72
    iput-boolean v1, v0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->hasFihTelephonyManager:Z

    :cond_74
    :goto_74
    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "com.fihtdc.AprUploadService"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android SDK: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_25

    const-string v0, "com.fihtdc.AprUploadService"

    const-string v1, "getIMEIFor4X"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p0}, Lcom/fihtdc/UploadAgentService/adapter/FihDualTelephonyManager;->getIMEIFor4X(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_30

    :cond_25
    const-string v0, "com.fihtdc.AprUploadService"

    const-string v1, "getIMEIFor5X"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p0}, Lcom/fihtdc/UploadAgentService/adapter/FihDualTelephonyManager;->getIMEIFor5X(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_30
    return-object p0
.end method

.method private static getIMEIFor4X(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, "null"

    :try_start_2
    const-string v1, "com.fihtdc.telephony.TelephonyManagerFihAdaptorDual"

    .line 164
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDeviceId"

    const/4 v3, 0x1

    .line 166
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getPhoneType"

    .line 167
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 168
    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 169
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_58

    if-ne v3, p0, :cond_5a

    move-object v0, v1

    goto :goto_5a

    :catch_58
    const-string v0, "null"

    :cond_5a
    :goto_5a
    return-object v0
.end method

.method public static getIMEIFor5X(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, "null"

    const-string v1, "phone"

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    :try_start_a
    const-string v1, "android.telephony.TelephonyManager"

    .line 139
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDeviceId"

    const/4 v3, 0x1

    .line 141
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getCurrentPhoneType"

    const/4 v5, 0x0

    .line 142
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_41

    if-ne v3, p0, :cond_43

    move-object v0, v2

    goto :goto_43

    :catch_41
    const-string v0, "null"

    :cond_43
    :goto_43
    return-object v0
.end method
