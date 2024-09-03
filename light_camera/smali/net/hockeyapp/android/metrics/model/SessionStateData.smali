.class public Lnet/hockeyapp/android/metrics/model/SessionStateData;
.super Lnet/hockeyapp/android/metrics/model/TelemetryData;
.source "SessionStateData.java"


# instance fields
.field private state:Lnet/hockeyapp/android/metrics/model/SessionState;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;-><init>()V

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->ver:I

    .line 21
    sget-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->state:Lnet/hockeyapp/android/metrics/model/SessionState;

    .line 27
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/SessionStateData;->InitializeFields()V

    .line 28
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/SessionStateData;->SetupAttributes()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .registers 2

    const-string v0, "com.microsoft.applicationinsights.contracts.SessionStateData"

    .line 118
    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->QualifiedName:Ljava/lang/String;

    return-void
.end method

.method public SetupAttributes()V
    .registers 1

    return-void
.end method

.method public getBaseType()Ljava/lang/String;
    .registers 1

    const-string p0, "SessionStateData"

    return-object p0
.end method

.method public getEnvelopeName()Ljava/lang/String;
    .registers 1

    const-string p0, "Microsoft.ApplicationInsights.SessionState"

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getState()Lnet/hockeyapp/android/metrics/model/SessionState;
    .registers 1

    .line 64
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->state:Lnet/hockeyapp/android/metrics/model/SessionState;

    return-object p0
.end method

.method public getVer()I
    .registers 1

    .line 50
    iget p0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->ver:I

    return p0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ver\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->ver:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"state\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->state:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/SessionState;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, ","

    return-object p0
.end method

.method public setProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setState(Lnet/hockeyapp/android/metrics/model/SessionState;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->state:Lnet/hockeyapp/android/metrics/model/SessionState;

    return-void
.end method

.method public setVer(I)V
    .registers 2

    .line 57
    iput p1, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->ver:I

    return-void
.end method
