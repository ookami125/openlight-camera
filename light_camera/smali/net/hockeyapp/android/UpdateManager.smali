.class public Lnet/hockeyapp/android/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field public static final INSTALLER_ADB:Ljava/lang/String; = "adb"

.field public static final INSTALLER_PACKAGE_INSTALLER_NOUGAT:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

.field private static updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkExpiryDate(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/UpdateManagerListener;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")Z"
        }
    .end annotation

    .line 185
    invoke-static {p1}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    invoke-virtual {p1}, Lnet/hockeyapp/android/UpdateManagerListener;->onBuildExpired()Z

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 191
    invoke-static {p0}, Lnet/hockeyapp/android/UpdateManager;->startExpiryInfoIntent(Ljava/lang/ref/WeakReference;)V

    :cond_13
    return v0
.end method

.method private static checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 205
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateManagerListener;->getExpiryDate()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 206
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    if-lez p0, :cond_16

    const/4 p0, 0x1

    move v0, p0

    :cond_16
    return v0
.end method

.method private static dialogShown(Ljava/lang/ref/WeakReference;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 294
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_19

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "hockey_update_dialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    return v0
.end method

.method public static getLastListener()Lnet/hockeyapp/android/UpdateManagerListener;
    .registers 1

    .line 310
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    return-object v0
.end method

.method protected static installedFromMarket(Ljava/lang/ref/WeakReference;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "+",
            "Landroid/content/Context;",
            ">;)Z"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_35

    .line 221
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_19} :catch_35

    if-nez v1, :cond_35

    const/4 v1, 0x1

    .line 228
    :try_start_1c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2b

    const-string v2, "com.google.android.packageinstaller"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v1, v0

    :cond_2b
    const-string v2, "adb"

    .line 233
    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_31} :catch_34

    if-eqz p0, :cond_34

    goto :goto_35

    :catch_34
    :cond_34
    move v0, v1

    :catch_35
    :cond_35
    :goto_35
    return v0
.end method

.method public static register(Landroid/app/Activity;)V
    .registers 3

    .line 47
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 51
    invoke-static {p0, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .registers 5

    const/4 v0, 0x1

    .line 107
    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .registers 6

    .line 120
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    sput-object p3, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->fragmentsSupported()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->dialogShown(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return-void

    .line 129
    :cond_1c
    invoke-static {v0, p3}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDate(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result p0

    if-nez p0, :cond_33

    if-eqz p3, :cond_2a

    invoke-virtual {p3}, Lnet/hockeyapp/android/UpdateManagerListener;->canUpdateInMarket()Z

    move-result p0

    if-nez p0, :cond_30

    :cond_2a
    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->installedFromMarket(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 130
    :cond_30
    invoke-static {v0, p1, p2, p3, p4}, Lnet/hockeyapp/android/UpdateManager;->startUpdateTask(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    :cond_33
    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .registers 5

    const-string v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x1

    .line 83
    invoke-static {p0, v0, p1, p2, v1}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .registers 5

    const-string v0, "https://sdk.hockeyapp.net/"

    .line 95
    invoke-static {p0, v0, p1, p2, p3}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, p1, v0, p2}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    return-void
.end method

.method public static registerForBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .registers 5

    .line 154
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 156
    sput-object p3, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 160
    invoke-static {p3}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result p0

    if-nez p0, :cond_22

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Lnet/hockeyapp/android/UpdateManagerListener;->canUpdateInMarket()Z

    move-result p0

    if-nez p0, :cond_1f

    :cond_19
    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->installedFromMarket(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    if-nez p0, :cond_22

    .line 161
    :cond_1f
    invoke-static {v0, p1, p2, p3}, Lnet/hockeyapp/android/UpdateManager;->startUpdateTaskForBackground(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    :cond_22
    return-void
.end method

.method public static registerForBackground(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .registers 4

    const-string v0, "https://sdk.hockeyapp.net/"

    .line 142
    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/UpdateManager;->registerForBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    return-void
.end method

.method private static startExpiryInfoIntent(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1c

    .line 251
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_1c

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/hockeyapp/android/ExpiryInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1c
    return-void
.end method

.method private static startUpdateTask(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            "Z)V"
        }
    .end annotation

    .line 267
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    if-eqz v0, :cond_15

    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_f

    goto :goto_15

    .line 271
    :cond_f
    sget-object p1, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {p1, p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->attach(Ljava/lang/ref/WeakReference;)V

    goto :goto_27

    .line 268
    :cond_15
    :goto_15
    new-instance v6, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    sput-object v6, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 269
    sget-object p0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {p0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    :goto_27
    return-void
.end method

.method private static startUpdateTaskForBackground(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")V"
        }
    .end annotation

    .line 280
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    if-eqz v0, :cond_15

    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_f

    goto :goto_15

    .line 284
    :cond_f
    sget-object p1, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {p1, p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->attach(Ljava/lang/ref/WeakReference;)V

    goto :goto_21

    .line 281
    :cond_15
    :goto_15
    new-instance v0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 282
    sget-object p0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {p0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    :goto_21
    return-void
.end method

.method public static unregister()V
    .registers 3

    .line 169
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 170
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->cancel(Z)Z

    .line 171
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->detach()V

    .line 172
    sput-object v1, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 175
    :cond_12
    sput-object v1, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    return-void
.end method
