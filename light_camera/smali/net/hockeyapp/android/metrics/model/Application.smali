.class public Lnet/hockeyapp/android/metrics/model/Application;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private build:Ljava/lang/String;

.field private typeId:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Application;->InitializeFields()V

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

    .line 86
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Application;->ver:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "ai.application.ver"

    .line 87
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Application;->ver:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Application;->build:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "ai.application.build"

    .line 90
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Application;->build:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Application;->typeId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "ai.application.typeId"

    .line 93
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Application;->typeId:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public getBuild()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Application;->build:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Application;->typeId:Ljava/lang/String;

    return-object p0
.end method

.method public getVer()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Application;->ver:Ljava/lang/String;

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

    .line 109
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 110
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Application;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 p0, 0x7d

    .line 111
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 106
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

    .line 121
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Application;->ver:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.application.ver\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Application;->ver:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 127
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Application;->build:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.application.build\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Application;->build:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 133
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Application;->typeId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.application.typeId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Application;->typeId:Ljava/lang/String;

    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    :cond_2
    return-object v0
.end method

.method public setBuild(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Application;->build:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Application;->typeId:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Application;->ver:Ljava/lang/String;

    return-void
.end method
