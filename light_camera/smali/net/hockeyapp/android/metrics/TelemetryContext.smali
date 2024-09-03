.class Lnet/hockeyapp/android/metrics/TelemetryContext;
.super Ljava/lang/Object;
.source "TelemetryContext.java"


# static fields
.field private static final SESSION_IS_FIRST_KEY:Ljava/lang/String; = "SESSION_IS_FIRST"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "HOCKEY_APP_TELEMETRY_CONTEXT"

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"


# instance fields
.field private final IKEY_LOCK:Ljava/lang/Object;

.field protected final mApplication:Lnet/hockeyapp/android/metrics/model/Application;

.field protected mContext:Landroid/content/Context;

.field protected final mDevice:Lnet/hockeyapp/android/metrics/model/Device;

.field private mInstrumentationKey:Ljava/lang/String;

.field protected final mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

.field private mPackageName:Ljava/lang/String;

.field protected final mSession:Lnet/hockeyapp/android/metrics/model/Session;

.field private mSettings:Landroid/content/SharedPreferences;

.field protected final mUser:Lnet/hockeyapp/android/metrics/model/User;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    .line 97
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Device;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Device;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    .line 98
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Session;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Session;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    .line 99
    new-instance v0, Lnet/hockeyapp/android/metrics/model/User;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/User;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    .line 100
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Application;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Application;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    .line 101
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Internal;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 111
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;-><init>()V

    const-string v0, "HOCKEY_APP_TELEMETRY_CONTEXT"

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    .line 113
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->convertAppIdentifierToGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configDeviceContext()V

    .line 117
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configUserId()V

    .line 118
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configInternalContext()V

    .line 119
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configApplicationContext()V

    return-void
.end method


# virtual methods
.method protected configApplicationContext()V
    .registers 7

    const-string v0, "HockeyApp-Metrics"

    const-string v1, "Configuring application context"

    .line 159
    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unknown"

    const-string v1, ""

    .line 163
    iput-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    .line 166
    :try_start_d
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 170
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_26

    .line 171
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    .line 174
    :cond_26
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "%s (%S)"

    const/4 v5, 0x2

    .line 175
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_3c} :catch_42
    .catchall {:try_start_d .. :try_end_3c} :catchall_40

    .line 179
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    goto :goto_4c

    :catchall_40
    move-exception v1

    goto :goto_63

    :catch_42
    :try_start_42
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "Could not get application context"

    .line 177
    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_40

    .line 179
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    :goto_4c
    const-string v0, "4.1.2"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSdkVersion(Ljava/lang/String;)V

    return-void

    .line 179
    :goto_63
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    throw v1
.end method

.method protected configDeviceContext()V
    .registers 3

    const-string v0, "HockeyApp-Metrics"

    const-string v1, "Configuring device context"

    .line 201
    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsVersion(Ljava/lang/String;)V

    const-string v0, "Android"

    .line 203
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsName(Ljava/lang/String;)V

    .line 204
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceModel(Ljava/lang/String;)V

    .line 205
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceOemName(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsLocale(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsLanguage(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->updateScreenResolution()V

    .line 209
    sget-object v0, Lnet/hockeyapp/android/Constants;->DEVICE_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceId(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 214
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "Phone"

    .line 215
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceType(Ljava/lang/String;)V

    goto :goto_54

    :cond_4f
    const-string v0, "Tablet"

    .line 217
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceType(Ljava/lang/String;)V

    .line 221
    :goto_54
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Emulator]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v1}, Lnet/hockeyapp/android/metrics/model/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceModel(Ljava/lang/String;)V

    :cond_74
    return-void
.end method

.method protected configInternalContext()V
    .registers 4

    const-string v0, "4.1.2"

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method protected configSessionContext(Ljava/lang/String;)V
    .registers 5

    const-string v0, "HockeyApp-Metrics"

    const-string v1, "Configuring session context"

    .line 137
    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSessionId(Ljava/lang/String;)V

    const-string p1, "HockeyApp-Metrics"

    const-string v0, "Setting the isNew-flag to true, as we only count new sessions"

    .line 140
    invoke-static {p1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "true"

    .line 141
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsNewSession(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SESSION_IS_FIRST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "SESSION_IS_FIRST"

    const/4 v1, 0x1

    .line 145
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "true"

    .line 147
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsFirstSession(Ljava/lang/String;)V

    const-string p0, "HockeyApp-Metrics"

    const-string p1, "It\'s our first session, writing true to SharedPreferences."

    .line 148
    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_3d
    const-string p1, "false"

    .line 150
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsFirstSession(Ljava/lang/String;)V

    const-string p0, "HockeyApp-Metrics"

    const-string p1, "It\'s not their first session, writing false to SharedPreferences."

    .line 151
    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method protected configUserId()V
    .registers 3

    const-string v0, "HockeyApp-Metrics"

    const-string v1, "Configuring user context"

    .line 191
    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Using pre-supplied anonymous device identifier."

    .line 193
    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAnonymousUserId(Ljava/lang/String;)V

    return-void
.end method

.method public getAnonymousUserId()Ljava/lang/String;
    .registers 2

    .line 359
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v0

    .line 360
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/User;->getId()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 361
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    .line 347
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Application;->getVer()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 349
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method protected getContextTags()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 303
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v1

    .line 304
    :try_start_8
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v2, v0}, Lnet/hockeyapp/android/metrics/model/Application;->addToHashMap(Ljava/util/Map;)V

    .line 305
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_3f

    .line 306
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v2

    .line 307
    :try_start_11
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Device;->addToHashMap(Ljava/util/Map;)V

    .line 308
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_3c

    .line 309
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 310
    :try_start_1a
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v2, v0}, Lnet/hockeyapp/android/metrics/model/Session;->addToHashMap(Ljava/util/Map;)V

    .line 311
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_39

    .line 312
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v2

    .line 313
    :try_start_23
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/User;->addToHashMap(Ljava/util/Map;)V

    .line 314
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_36

    .line 315
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v1

    .line 316
    :try_start_2c
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/model/Internal;->addToHashMap(Ljava/util/Map;)V

    .line 317
    monitor-exit v1

    return-object v0

    :catchall_33
    move-exception p0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw p0

    :catchall_36
    move-exception p0

    .line 314
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0

    :catchall_39
    move-exception p0

    .line 311
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0

    :catchall_3c
    move-exception p0

    .line 308
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0

    :catchall_3f
    move-exception p0

    .line 305
    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 1

    .line 491
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 2

    .line 443
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getModel()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 445
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getDeviceOemName()Ljava/lang/String;
    .registers 2

    .line 455
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 456
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getOemName()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 457
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 1

    .line 501
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstrumentationKey()Ljava/lang/String;
    .registers 2

    .line 323
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 325
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getIsFirstSession()Ljava/lang/String;
    .registers 2

    .line 395
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v0

    .line 396
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Session;->getIsFirst()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 397
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getIsNewSession()Ljava/lang/String;
    .registers 2

    .line 407
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v0

    .line 408
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Session;->getIsNew()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 409
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .registers 2

    .line 479
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 480
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getLanguage()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 481
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getOsLocale()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 468
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getLocale()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 469
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getOsName()Ljava/lang/String;
    .registers 2

    .line 431
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 432
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getOs()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 433
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getOsVersion()Ljava/lang/String;
    .registers 2

    .line 419
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 420
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getOsVersion()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 421
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method protected getPackageName()Ljava/lang/String;
    .registers 1

    .line 297
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .registers 2

    .line 335
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 336
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->getScreenResolution()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 337
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .line 371
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v0

    .line 372
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Internal;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 373
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 383
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v0

    .line 384
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Session;->getId()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 385
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method protected renewSessionContext(Ljava/lang/String;)V
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configSessionContext(Ljava/lang/String;)V

    return-void
.end method

.method public setAnonymousUserId(Ljava/lang/String;)V
    .registers 3

    .line 365
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v0

    .line 366
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/User;->setId(Ljava/lang/String;)V

    .line 367
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 3

    .line 353
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Application;->setVer(Ljava/lang/String;)V

    .line 355
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 3

    .line 495
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 496
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setId(Ljava/lang/String;)V

    .line 497
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .registers 3

    .line 449
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 450
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setModel(Ljava/lang/String;)V

    .line 451
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setDeviceOemName(Ljava/lang/String;)V
    .registers 3

    .line 461
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 462
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOemName(Ljava/lang/String;)V

    .line 463
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .registers 3

    .line 505
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setType(Ljava/lang/String;)V

    .line 507
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public declared-synchronized setInstrumentationKey(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 329
    :try_start_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    .line 330
    :try_start_4
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    .line 331
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 332
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    .line 331
    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw p1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception p1

    .line 328
    monitor-exit p0

    throw p1
.end method

.method public setIsFirstSession(Ljava/lang/String;)V
    .registers 3

    .line 401
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setIsFirst(Ljava/lang/String;)V

    .line 403
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setIsNewSession(Ljava/lang/String;)V
    .registers 3

    .line 413
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v0

    .line 414
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setIsNew(Ljava/lang/String;)V

    .line 415
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setOsLanguage(Ljava/lang/String;)V
    .registers 3

    .line 485
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 486
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setLanguage(Ljava/lang/String;)V

    .line 487
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setOsLocale(Ljava/lang/String;)V
    .registers 3

    .line 473
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setLocale(Ljava/lang/String;)V

    .line 475
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setOsName(Ljava/lang/String;)V
    .registers 3

    .line 437
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOs(Ljava/lang/String;)V

    .line 439
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .registers 3

    .line 425
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 426
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOsVersion(Ljava/lang/String;)V

    .line 427
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setScreenResolution(Ljava/lang/String;)V
    .registers 3

    .line 341
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setScreenResolution(Ljava/lang/String;)V

    .line 343
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .registers 3

    .line 377
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Internal;->setSdkVersion(Ljava/lang/String;)V

    .line 379
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 3

    .line 389
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v0

    .line 390
    :try_start_3
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setId(Ljava/lang/String;)V

    .line 391
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method protected updateScreenResolution()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Deprecation"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c0

    .line 234
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 236
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2c

    .line 237
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 238
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 241
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 242
    iget v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_a1

    :cond_29
    move v0, v3

    goto/16 :goto_a1

    .line 248
    :cond_2c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_95

    .line 253
    :try_start_32
    const-class v1, Landroid/view/Display;

    const-string v2, "getRawWidth"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 254
    const-class v2, Landroid/view/Display;

    const-string v4, "getRawHeight"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 255
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 256
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 257
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_62} :catch_65

    move v3, v1

    move v0, v2

    goto :goto_a1

    :catch_65
    move-exception v1

    .line 259
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 260
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 262
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 263
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 264
    iget v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_7a

    :cond_79
    move v0, v3

    :goto_7a
    const-string v2, "HockeyApp-Metrics"

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t determine screen resolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 274
    :cond_95
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 276
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 279
    :goto_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setScreenResolution(Ljava/lang/String;)V

    :cond_c0
    return-void
.end method
