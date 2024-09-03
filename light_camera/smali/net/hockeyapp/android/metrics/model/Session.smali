.class public Lnet/hockeyapp/android/metrics/model/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private isFirst:Ljava/lang/String;

.field private isNew:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Session;->InitializeFields()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .registers 1

    return-void
.end method

.method public addToHashMap(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Session;->id:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "ai.session.id"

    .line 86
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Session;->id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_b
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Session;->isFirst:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v0, "ai.session.isFirst"

    .line 89
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Session;->isFirst:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_16
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Session;->isNew:Ljava/lang/String;

    if-eqz v0, :cond_21

    const-string v0, "ai.session.isNew"

    .line 92
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Session;->isNew:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Session;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getIsFirst()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Session;->isFirst:Ljava/lang/String;

    return-object p0
.end method

.method public getIsNew()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Session;->isNew:Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_10

    const/16 v0, 0x7b

    .line 108
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 109
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 p0, 0x7d

    .line 110
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 105
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "writer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 120
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Session;->id:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.session.id\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Session;->id:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 126
    :cond_25
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Session;->isFirst:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.session.isFirst\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Session;->isFirst:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 132
    :cond_48
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Session;->isNew:Ljava/lang/String;

    if-eqz v1, :cond_6b

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.session.isNew\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Session;->isNew:Ljava/lang/String;

    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    :cond_6b
    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Session;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsFirst(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Session;->isFirst:Ljava/lang/String;

    return-void
.end method

.method public setIsNew(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Session;->isNew:Ljava/lang/String;

    return-void
.end method
