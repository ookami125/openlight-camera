.class public Lcom/fihtdc/UploadAgentService/SettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingReceiver.java"


# static fields
.field private static final ACTION_CHANGE_IS_WIFI_ONLY:Ljava/lang/String; = "com.fihtdc.uploadservice.intent.monitor.wifionly"

.field private static final ACTION_CHANGE_UPLOAD_SETTING:Ljava/lang/String; = "com.fihtdc.uploadservice.intent.monitor.setting"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))"

    .line 14
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/SettingReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private doUploadSettingChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p0, "com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))"

    const-string p1, "doUploadSettingChange"

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "isAgreeUpload"

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))"

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "isAgreeUpload: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doWifiOnlyChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p0, "com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))"

    const-string p1, "doWifiOnlyChange"

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "isWifiOnly"

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))"

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "isWifiOnly: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))"

    const-string v1, "onReceive"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fihtdc.uploadservice.intent.monitor.setting"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/fihtdc/UploadAgentService/SettingReceiver;->doUploadSettingChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_22

    :cond_17
    const-string v1, "com.fihtdc.uploadservice.intent.monitor.wifionly"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/fihtdc/UploadAgentService/SettingReceiver;->doWifiOnlyChange(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_22
    :goto_22
    return-void
.end method
