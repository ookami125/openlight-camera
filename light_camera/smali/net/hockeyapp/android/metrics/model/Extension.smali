.class public Lnet/hockeyapp/android/metrics/model/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;


# instance fields
.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 17
    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/Extension;->ver:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Extension;->InitializeFields()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    return-void
.end method

.method public getVer()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Extension;->ver:Ljava/lang/String;

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

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 53
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Extension;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 p0, 0x7d

    .line 54
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 49
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

    .line 64
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Extension;->ver:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ver\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Extension;->ver:Ljava/lang/String;

    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    :cond_0
    return-object v0
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Extension;->ver:Ljava/lang/String;

    return-void
.end method
