.class public Lnet/hockeyapp/android/metrics/model/Data;
.super Lnet/hockeyapp/android/metrics/model/Base;
.source "Data.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/ITelemetryData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDomain:",
        "Lnet/hockeyapp/android/metrics/model/Domain;",
        ">",
        "Lnet/hockeyapp/android/metrics/model/Base;",
        "Lnet/hockeyapp/android/metrics/model/ITelemetryData;"
    }
.end annotation


# instance fields
.field private baseData:Lnet/hockeyapp/android/metrics/model/Domain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTDomain;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/model/Base;-><init>()V

    .line 21
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Data;->InitializeFields()V

    .line 22
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Data;->SetupAttributes()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .registers 2

    const-string v0, "com.microsoft.telemetry.Data"

    .line 65
    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/Data;->QualifiedName:Ljava/lang/String;

    return-void
.end method

.method public SetupAttributes()V
    .registers 3

    .line 58
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Data;->Attributes:Ljava/util/LinkedHashMap;

    const-string v0, "Description"

    const-string v1, "Data struct to contain both B and C sections."

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBaseData()Lnet/hockeyapp/android/metrics/model/Domain;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTDomain;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Data;->baseData:Lnet/hockeyapp/android/metrics/model/Domain;

    return-object p0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lnet/hockeyapp/android/metrics/model/Base;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"baseData\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Data;->baseData:Lnet/hockeyapp/android/metrics/model/Domain;

    invoke-static {p1, p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeJsonSerializable(Ljava/io/Writer;Lnet/hockeyapp/android/metrics/model/IJsonSerializable;)V

    const-string p0, ","

    return-object p0
.end method

.method public setBaseData(Lnet/hockeyapp/android/metrics/model/Domain;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDomain;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Data;->baseData:Lnet/hockeyapp/android/metrics/model/Domain;

    return-void
.end method
