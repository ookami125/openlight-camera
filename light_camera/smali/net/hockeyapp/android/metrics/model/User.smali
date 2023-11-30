.class public Lnet/hockeyapp/android/metrics/model/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private accountAcquisitionDate:Ljava/lang/String;

.field private accountId:Ljava/lang/String;

.field private anonUserAcquisitionDate:Ljava/lang/String;

.field private authUserAcquisitionDate:Ljava/lang/String;

.field private authUserId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private storeRegion:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/User;->InitializeFields()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    return-void
.end method

.method public addToHashMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "ai.user.accountAcquisitionDate"

    .line 182
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "ai.user.accountId"

    .line 185
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "ai.user.userAgent"

    .line 188
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "ai.user.id"

    .line 191
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "ai.user.storeRegion"

    .line 194
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_4
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "ai.user.authUserId"

    .line 197
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_5
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "ai.user.anonUserAcquisitionDate"

    .line 200
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_6
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "ai.user.authUserAcquisitionDate"

    .line 203
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public getAccountAcquisitionDate()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    return-object p0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public getAnonUserAcquisitionDate()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthUserAcquisitionDate()Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthUserId()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getStoreRegion()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x7b

    .line 219
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 220
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/User;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 p0, 0x7d

    .line 221
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "writer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 231
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.user.accountAcquisitionDate\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 237
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.user.accountId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 243
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.user.userAgent\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 249
    :cond_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.user.id\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 255
    :cond_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.user.storeRegion\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 261
    :cond_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.user.authUserId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 267
    :cond_5
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.user.anonUserAcquisitionDate\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 273
    :cond_6
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.user.authUserAcquisitionDate\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    :cond_7
    return-object v0
.end method

.method public setAccountAcquisitionDate(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setAnonUserAcquisitionDate(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    return-void
.end method

.method public setAuthUserAcquisitionDate(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    return-void
.end method

.method public setAuthUserId(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    return-void
.end method

.method public setStoreRegion(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    return-void
.end method
