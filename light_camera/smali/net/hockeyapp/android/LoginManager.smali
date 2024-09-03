.class public Lnet/hockeyapp/android/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/LoginManager$LoginHandler;
    }
.end annotation


# static fields
.field static final LOGIN_EXIT_KEY:Ljava/lang/String; = "net.hockeyapp.android.EXIT"

.field public static final LOGIN_MODE_ANONYMOUS:I = 0x0

.field public static final LOGIN_MODE_EMAIL_ONLY:I = 0x1

.field public static final LOGIN_MODE_EMAIL_PASSWORD:I = 0x2

.field public static final LOGIN_MODE_VALIDATE:I = 0x3

.field private static identifier:Ljava/lang/String;

.field static listener:Lnet/hockeyapp/android/LoginManagerListener;

.field static mainActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mode:I

.field private static secret:Ljava/lang/String;

.field private static urlString:Ljava/lang/String;

.field private static validateHandler:Landroid/os/Handler;


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

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1

    .line 26
    invoke-static {p0}, Lnet/hockeyapp/android/LoginManager;->startLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method private static getURLString(I)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const/4 v1, 0x2

    if-ne p0, v1, :cond_8

    const-string v0, "authorize"

    goto :goto_13

    :cond_8
    const/4 v1, 0x1

    if-ne p0, v1, :cond_e

    const-string v0, "check"

    goto :goto_13

    :cond_e
    const/4 v1, 0x3

    if-ne p0, v1, :cond_13

    const-string v0, "validate"

    .line 250
    :cond_13
    :goto_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/LoginManager;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/3/apps/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/hockeyapp/android/LoginManager;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/identity/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 97
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 101
    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v0, p1, p2, v1}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    return-void

    .line 99
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v3, "https://sdk.hockeyapp.net/"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 128
    invoke-static/range {v0 .. v5}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILnet/hockeyapp/android/LoginManagerListener;)V
    .registers 5

    .line 114
    sput-object p4, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    const/4 p4, 0x0

    .line 115
    check-cast p4, Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, p4}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1e

    .line 143
    invoke-static {p1}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/hockeyapp/android/LoginManager;->identifier:Ljava/lang/String;

    .line 144
    sput-object p2, Lnet/hockeyapp/android/LoginManager;->secret:Ljava/lang/String;

    .line 145
    sput-object p3, Lnet/hockeyapp/android/LoginManager;->urlString:Ljava/lang/String;

    .line 146
    sput p4, Lnet/hockeyapp/android/LoginManager;->mode:I

    .line 147
    sput-object p5, Lnet/hockeyapp/android/LoginManager;->mainActivity:Ljava/lang/Class;

    .line 149
    sget-object p1, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    if-nez p1, :cond_1b

    .line 150
    new-instance p1, Lnet/hockeyapp/android/LoginManager$LoginHandler;

    invoke-direct {p1, p0}, Lnet/hockeyapp/android/LoginManager$LoginHandler;-><init>(Landroid/content/Context;)V

    sput-object p1, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    .line 153
    :cond_1b
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    :cond_1e
    return-void
.end method

.method private static startLoginActivity(Landroid/content/Context;)V
    .registers 5

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x2

    goto :goto_1b

    :cond_19
    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    :goto_1b
    const/high16 v2, 0x50000000

    .line 232
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    const-class v2, Lnet/hockeyapp/android/LoginActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "url"

    .line 234
    invoke-static {v1}, Lnet/hockeyapp/android/LoginManager;->getURLString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mode"

    .line 235
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "secret"

    .line 236
    sget-object v2, Lnet/hockeyapp/android/LoginManager;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static verifyLogin(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    const-string v1, "net.hockeyapp.android.EXIT"

    .line 169
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_f
    if-eqz p0, :cond_ca

    .line 176
    sget p1, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-nez p1, :cond_17

    goto/16 :goto_ca

    :cond_17
    const-string p1, "net.hockeyapp.android.login"

    .line 182
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "mode"

    const/4 v2, -0x1

    .line 183
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 184
    sget v2, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-eq v1, v2, :cond_4a

    const-string v1, "HockeyAuth"

    const-string v2, "Mode has changed, require re-auth."

    .line 185
    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "auid"

    .line 187
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "iuid"

    .line 188
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode"

    sget v3, Lnet/hockeyapp/android/LoginManager;->mode:I

    .line 189
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4a
    const-string v1, "auid"

    const/4 v2, 0x0

    .line 194
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "iuid"

    .line 195
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v1, :cond_5e

    if-nez p1, :cond_5e

    move v3, v2

    goto :goto_5f

    :cond_5e
    move v3, v0

    :goto_5f
    const/4 v4, 0x3

    if-nez v1, :cond_6d

    .line 198
    sget v5, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6b

    sget v5, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-ne v5, v4, :cond_6d

    :cond_6b
    move v5, v2

    goto :goto_6e

    :cond_6d
    move v5, v0

    :goto_6e
    if-nez p1, :cond_75

    .line 199
    sget v6, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-ne v6, v2, :cond_75

    goto :goto_76

    :cond_75
    move v2, v0

    :goto_76
    if-nez v3, :cond_bf

    if-nez v5, :cond_bf

    if-eqz v2, :cond_7d

    goto :goto_bf

    .line 208
    :cond_7d
    sget v2, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-ne v2, v4, :cond_be

    const-string v2, "HockeyAuth"

    const-string v3, "LOGIN_MODE_VALIDATE, Validate the user\'s info!"

    .line 209
    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_9c

    const-string p1, "type"

    const-string v2, "auid"

    .line 213
    invoke-interface {v10, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    .line 214
    invoke-interface {v10, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    :cond_9c
    if-eqz p1, :cond_aa

    const-string v1, "type"

    const-string v2, "iuid"

    .line 216
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 217
    invoke-interface {v10, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_aa
    :goto_aa
    new-instance p1, Lnet/hockeyapp/android/tasks/LoginTask;

    sget-object v7, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    invoke-static {v4}, Lnet/hockeyapp/android/LoginManager;->getURLString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lnet/hockeyapp/android/tasks/LoginTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V

    .line 221
    invoke-virtual {p1, v0}, Lnet/hockeyapp/android/tasks/LoginTask;->setShowProgressDialog(Z)V

    .line 222
    invoke-static {p1}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    :cond_be
    return-void

    :cond_bf
    :goto_bf
    const-string p1, "HockeyAuth"

    const-string v0, "Not authenticated or correct ID missing, re-authenticate."

    .line 202
    invoke-static {p1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p0}, Lnet/hockeyapp/android/LoginManager;->startLoginActivity(Landroid/content/Context;)V

    return-void

    :cond_ca
    :goto_ca
    return-void
.end method
