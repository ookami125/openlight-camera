.class public Lnet/hockeyapp/android/tasks/LoginTask;
.super Lnet/hockeyapp/android/tasks/ConnectionTask;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/hockeyapp/android/tasks/ConnectionTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUNDLE_SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mMode:I

.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShowProgressDialog:Z

.field private final mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/ConnectionTask;-><init>()V

    .line 55
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mUrlString:Ljava/lang/String;

    .line 58
    iput p4, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    .line 59
    iput-object p5, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mParams:Ljava/util/Map;

    const/4 p2, 0x1

    .line 60
    iput-boolean p2, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mShowProgressDialog:Z

    if-eqz p1, :cond_15

    .line 63
    invoke-static {p1}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    :cond_15
    return-void
.end method

.method private handleResponse(Ljava/lang/String;)Z
    .registers 8

    .line 165
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    const-string v1, "net.hockeyapp.android.login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 169
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    return v2

    .line 175
    :cond_1b
    iget v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42

    const-string p0, "identified"

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8a

    const-string p0, "iuid"

    .line 177
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "iuid"

    .line 181
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 182
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v4

    .line 186
    :cond_42
    iget v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_69

    const-string p0, "authorized"

    .line 187
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8a

    const-string p0, "auid"

    .line 188
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "auid"

    .line 192
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 193
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v4

    .line 197
    :cond_69
    iget v1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8b

    const-string p0, "validated"

    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    return v4

    .line 201
    :cond_77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "iuid"

    .line 202
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "auid"

    .line 203
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8a
    return v2

    .line 207
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not supported."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception p0

    .line 212
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return v2
.end method

.method private makeRequest(ILjava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 141
    new-instance p1, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    iget-object p0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mUrlString:Ljava/lang/String;

    invoke-direct {p1, p0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "POST"

    .line 142
    invoke-virtual {p1, p0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object p0

    .line 143
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->writeFormFields(Ljava/util/Map;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_42

    .line 147
    new-instance p1, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    iget-object p0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mUrlString:Ljava/lang/String;

    invoke-direct {p1, p0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "POST"

    .line 148
    invoke-virtual {p1, p0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object p0

    const-string p1, "email"

    .line 149
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "password"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    :cond_42
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7d

    const-string p1, "type"

    .line 153
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "id"

    .line 154
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mUrlString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 157
    new-instance p1, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    invoke-direct {p1, p0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    .line 160
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Login mode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public attach(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public detach()V
    .registers 2

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    .line 78
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    const/4 p1, 0x0

    .line 94
    :try_start_1
    iget v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mMode:I

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mParams:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/tasks/LoginTask;->makeRequest(ILjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_9} :catch_44
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_3d
    .catchall {:try_start_1 .. :try_end_9} :catchall_3a

    .line 95
    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 97
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2c

    .line 98
    invoke-static {v0}, Lnet/hockeyapp/android/tasks/LoginTask;->getStringFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 101
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/tasks/LoginTask;->handleResponse(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_26} :catch_37
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_26} :catch_34
    .catchall {:try_start_9 .. :try_end_26} :catchall_32

    if-eqz v0, :cond_2b

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2b
    return-object p0

    :cond_2c
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4d

    :catchall_32
    move-exception p0

    goto :goto_53

    :catch_34
    move-exception p0

    move-object p1, v0

    goto :goto_3e

    :catch_37
    move-exception p0

    move-object p1, v0

    goto :goto_45

    :catchall_3a
    move-exception p0

    move-object v0, p1

    goto :goto_53

    :catch_3d
    move-exception p0

    .line 107
    :goto_3e
    :try_start_3e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p1, :cond_4d

    goto :goto_4a

    :catch_44
    move-exception p0

    .line 105
    :goto_45
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_3a

    if-eqz p1, :cond_4d

    .line 110
    :goto_4a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    .line 114
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_53
    if-eqz v0, :cond_58

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_58
    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/LoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    .line 121
    :try_start_4
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :cond_e
    :goto_e
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    .line 129
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 130
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "success"

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 134
    iget-object p0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/LoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .line 84
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_c
    iget-boolean v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mShowProgressDialog:Z

    if-eqz v0, :cond_1e

    .line 85
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "Please wait..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1e
    return-void
.end method

.method public setShowProgressDialog(Z)V
    .registers 2

    .line 68
    iput-boolean p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mShowProgressDialog:Z

    return-void
.end method
