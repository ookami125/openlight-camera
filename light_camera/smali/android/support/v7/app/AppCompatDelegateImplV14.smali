.class Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;,
        Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
    }
.end annotation


# static fields
.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"


# instance fields
.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

.field private mHandleNativeActionModes:Z

.field private mLocalNightMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    const/16 p1, -0x64

    .line 45
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return-void
.end method

.method private ensureAutoNightModeManager()V
    .registers 3

    .line 234
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-nez v0, :cond_11

    .line 235
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/support/v7/app/TwilightManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    :cond_11
    return-void
.end method

.method private getNightMode()I
    .registers 3

    .line 163
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_9

    iget p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    goto :goto_d

    :cond_9
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getDefaultNightMode()I

    move-result p0

    :goto_d
    return p0
.end method

.method private shouldRecreateOnNightModeChange()Z
    .registers 6

    .line 246
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_34

    .line 249
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    .line 251
    :try_start_12
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 255
    iget p0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_25} :catch_2b

    and-int/lit16 p0, p0, 0x200

    if-nez p0, :cond_2a

    move v1, v2

    :cond_2a
    return v1

    :catch_2b
    move-exception p0

    const-string v0, "AppCompatDelegate"

    const-string v1, "Exception while getting ActivityInfo"

    .line 259
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_34
    return v1
.end method

.method private updateForNightMode(I)Z
    .registers 6

    .line 191
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 193
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x2

    if-ne p1, v3, :cond_14

    const/16 p1, 0x20

    goto :goto_16

    :cond_14
    const/16 p1, 0x10

    :goto_16
    if-eq v2, p1, :cond_44

    .line 200
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->shouldRecreateOnNightModeChange()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 206
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_42

    .line 212
    :cond_26
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 213
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 216
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/2addr p1, v2

    iput p1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 217
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 220
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1a

    if-ge p0, p1, :cond_42

    .line 221
    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flush(Landroid/content/res/Resources;)Z

    :cond_42
    :goto_42
    const/4 p0, 0x1

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public applyDayNight()Z
    .registers 4

    .line 90
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getNightMode()I

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 93
    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->updateForNightMode(I)Z

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-nez v0, :cond_1b

    .line 98
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 99
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V

    :cond_1b
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    return v1
.end method

.method final getAutoNightModeManager()Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
    .registers 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 241
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 242
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    return-object p0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return p0
.end method

.method mapNightMode(I)I
    .registers 3

    const/16 v0, -0x64

    if-eq p1, v0, :cond_11

    if-eqz p1, :cond_7

    return p1

    .line 151
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 152
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->getApplyableNightMode()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_13

    .line 61
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_13

    const-string v0, "appcompat:local_night_mode"

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    :cond_13
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 178
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onDestroy()V

    .line 181
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_c

    .line 182
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    :cond_c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_10

    const-string v0, "appcompat:local_night_mode"

    .line 172
    iget p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_10
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 108
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStart()V

    .line 112
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 117
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStop()V

    .line 120
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_c

    .line 121
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    :cond_c
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return-void
.end method

.method public setLocalNightMode(I)V
    .registers 3

    packed-switch p1, :pswitch_data_1a

    const-string p0, "AppCompatDelegate"

    const-string p1, "setLocalNightMode() called with an unknown mode"

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 132
    :pswitch_b
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-eq v0, p1, :cond_18

    .line 133
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 134
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz p1, :cond_18

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    :cond_18
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch -0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    .line 73
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    return-object v0
.end method
