.class public Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;
.super Ljava/lang/Object;
.source "SharedPrefHelper.java"


# static fields
.field public static final SettingsFile:Ljava/lang/String; = "AgentSettings"

.field private static final UpTimePrefFile:Ljava/lang/String; = "UpTime"


# instance fields
.field private final IS_DMC_MONITORING:Ljava/lang/String;

.field private final IS_MONITORING:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final UPLOAD_MODE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.fihtdc.UploadAgentService(7.0010.05(Evenwell_s))"

    .line 24
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->TAG:Ljava/lang/String;

    const-string v0, "IS_MONITORING"

    .line 27
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->IS_MONITORING:Ljava/lang/String;

    const-string v0, "IS_DMC_MONITORING"

    .line 28
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->IS_DMC_MONITORING:Ljava/lang/String;

    const-string v0, "UPLOAD_MODE"

    .line 29
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->UPLOAD_MODE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIsDMCMonitoring(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "AgentSettings"

    const/4 v0, 0x4

    .line 57
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "IS_DMC_MONITORING"

    const-string v0, "none"

    .line 58
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsMonitoring(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "AgentSettings"

    const/4 v0, 0x4

    .line 45
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "IS_MONITORING"

    const-string v0, "on"

    .line 46
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateIsDMCMonitoring(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string p0, "AgentSettings"

    const/4 v0, 0x4

    .line 52
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "IS_DMC_MONITORING"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateIsMonitoring(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string p0, "AgentSettings"

    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 41
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "IS_MONITORING"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
