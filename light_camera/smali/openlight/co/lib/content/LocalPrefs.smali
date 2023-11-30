.class public Lopenlight/co/lib/content/LocalPrefs;
.super Ljava/lang/Object;
.source "LocalPrefs.java"

# interfaces
.implements Lopenlight/co/lib/content/Prefs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/content/LocalPrefs$Creator;
    }
.end annotation


# static fields
.field private static final FIELD_NAME_CREATOR:Ljava/lang/String; = "CREATOR"

.field private static final TAG:Ljava/lang/String; = "LocalPrefs"


# instance fields
.field private mBroadcastingChanges:Z

.field private final mDefaultsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mGson:Lcom/google/gson/Gson;

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mSharedPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mListeners:Ljava/util/HashSet;

    .line 40
    new-instance v0, Lopenlight/co/lib/content/-$$Lambda$LocalPrefs$bJCZhJjf9MZ8538bh5JGofMoolo;

    invoke-direct {v0, p0}, Lopenlight/co/lib/content/-$$Lambda$LocalPrefs$bJCZhJjf9MZ8538bh5JGofMoolo;-><init>(Lopenlight/co/lib/content/LocalPrefs;)V

    iput-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mSharedPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mGson:Lcom/google/gson/Gson;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mDefaultsCache:Ljava/util/Map;

    .line 464
    iput-object p1, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private broadcastPrefChanged(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 4

    .line 449
    invoke-virtual {p0}, Lopenlight/co/lib/content/LocalPrefs;->getActionPrefChanged()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 452
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 453
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "cam_pref_key"

    .line 454
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cam_pref_value"

    .line 455
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->getApp()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lopenlight/co/lib/content/LocalPrefs;->getPermissionPrefChanged()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lopenlight/co/lib/content/LocalPrefs;->tag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Broadcast Event called with action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lopenlight/co/lib/content/LocalPrefs;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lopenlight/co/lib/content/LocalPrefs;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    .line 43
    invoke-interface {v0, p0, p2}, Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;->onPreferenceChanged(Lopenlight/co/lib/content/Prefs;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getActionPrefChanged()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 1

    .line 205
    invoke-virtual {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 206
    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getDefaultBooleanValue(Ljava/lang/String;)Z
    .locals 2

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x75e13c28

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const v0, -0x757b5fcd

    if-eq p0, v0, :cond_1

    const v0, -0x36be5ff8    # -793088.5f

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ftu_edit_user"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "gallery_show_tutorial"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_2
    const-string p0, "use_metric_units"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultFloatValue(Ljava/lang/String;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultIntValue(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultLongValue(Ljava/lang/String;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "image_encryption_setting"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string p0, "dream_processing_setting"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string p0, "device_haptic_setting"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string p0, "locked_names"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string p0, "qualityFtuState"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "off"

    return-object p0

    :pswitch_1
    const-string p0, "on"

    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    return-object p0

    :pswitch_3
    const-string p0, "start"

    return-object p0

    :pswitch_4
    const-string p0, "normal"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7970ba77 -> :sswitch_4
        -0x72c5822d -> :sswitch_3
        -0x39c0264f -> :sswitch_2
        0x291a62e0 -> :sswitch_1
        0x7657c2f8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mDefaultsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mDefaultsCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->createDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v1, "CREATOR"

    .line 360
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lopenlight/co/lib/content/LocalPrefs$Creator;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/lib/content/LocalPrefs$Creator;

    .line 364
    invoke-interface {v1, p1}, Lopenlight/co/lib/content/LocalPrefs$Creator;->createForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LocalPrefs"

    const-string v3, "Couldn\'t access CREATOR field"

    .line 368
    invoke-static {v2, v3, v1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 375
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    const-string v1, "LocalPrefs"

    const-string v2, "Couldn\'t call newInstance()"

    .line 377
    invoke-static {v1, v2, p2}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    move-object p2, v0

    .line 382
    :goto_1
    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mDefaultsCache:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public getFloatValue(Ljava/lang/String;)F
    .locals 1

    .line 193
    invoke-virtual {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultFloatValue(Ljava/lang/String;)F

    move-result v0

    .line 194
    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 1

    .line 169
    invoke-virtual {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultIntValue(Ljava/lang/String;)I

    move-result v0

    .line 170
    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 2

    .line 181
    invoke-virtual {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 182
    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected getPermissionPrefChanged()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 157
    invoke-virtual {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 223
    :cond_0
    iget-object p1, p0, Lopenlight/co/lib/content/LocalPrefs;->mGson:Lcom/google/gson/Gson;

    monitor-enter p1

    .line 224
    :try_start_0
    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    .line 225
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putValue(Ljava/lang/String;F)V
    .locals 1

    .line 115
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    iget-boolean v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/content/LocalPrefs;->broadcastPrefChanged(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public putValue(Ljava/lang/String;I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    iget-boolean v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/content/LocalPrefs;->broadcastPrefChanged(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public putValue(Ljava/lang/String;J)V
    .locals 1

    .line 102
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    iget-boolean v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/content/LocalPrefs;->broadcastPrefChanged(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mGson:Lcom/google/gson/Gson;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lopenlight/co/lib/content/LocalPrefs;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {p0, p1, p2}, Lopenlight/co/lib/content/LocalPrefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    iget-boolean v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/content/LocalPrefs;->broadcastPrefChanged(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public putValue(Ljava/lang/String;Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    iget-boolean v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/content/LocalPrefs;->broadcastPrefChanged(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public registerChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lopenlight/co/lib/content/LocalPrefs;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 250
    iget-object p1, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mSharedPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    iget-boolean v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/content/LocalPrefs;->broadcastPrefChanged(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method protected tag()Ljava/lang/String;
    .locals 0

    const-string p0, "LocalPrefs"

    return-object p0
.end method

.method public unregisterChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lopenlight/co/lib/content/LocalPrefs;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lopenlight/co/lib/content/LocalPrefs;->mPrefs:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lopenlight/co/lib/content/LocalPrefs;->mSharedPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public withBroadcast(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 275
    :try_start_0
    iput-boolean v0, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    .line 276
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iput-boolean v1, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lopenlight/co/lib/content/LocalPrefs;->mBroadcastingChanges:Z

    .line 279
    throw p1
.end method
