.class public Lnet/hockeyapp/android/metrics/model/Internal;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private accountId:Ljava/lang/String;

.field private agentVersion:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private applicationType:Ljava/lang/String;

.field private dataCollectorReceivedTime:Ljava/lang/String;

.field private flowType:Ljava/lang/String;

.field private instrumentationKey:Ljava/lang/String;

.field private isAudit:Ljava/lang/String;

.field private profileClassId:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private requestSource:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private telemetryItemId:Ljava/lang/String;

.field private trackingSourceId:Ljava/lang/String;

.field private trackingType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Internal;->InitializeFields()V

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

    .line 313
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "ai.internal.sdkVersion"

    .line 314
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "ai.internal.agentVersion"

    .line 317
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "ai.internal.dataCollectorReceivedTime"

    .line 320
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "ai.internal.profileId"

    .line 323
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "ai.internal.profileClassId"

    .line 326
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_4
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "ai.internal.accountId"

    .line 329
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_5
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "ai.internal.applicationName"

    .line 332
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_6
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "ai.internal.instrumentationKey"

    .line 335
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_7
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "ai.internal.telemetryItemId"

    .line 338
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_8
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "ai.internal.applicationType"

    .line 341
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_9
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "ai.internal.requestSource"

    .line 344
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_a
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "ai.internal.flowType"

    .line 347
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_b
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "ai.internal.isAudit"

    .line 350
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_c
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "ai.internal.trackingSourceId"

    .line 353
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_d
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "ai.internal.trackingType"

    .line 356
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationType()Ljava/lang/String;
    .locals 0

    .line 226
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    return-object p0
.end method

.method public getDataCollectorReceivedTime()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    return-object p0
.end method

.method public getFlowType()Ljava/lang/String;
    .locals 0

    .line 254
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    return-object p0
.end method

.method public getInstrumentationKey()Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getIsAudit()Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileClassId()Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestSource()Ljava/lang/String;
    .locals 0

    .line 240
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getTelemetryItemId()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingSourceId()Ljava/lang/String;
    .locals 0

    .line 282
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingType()Ljava/lang/String;
    .locals 0

    .line 296
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

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

    .line 372
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 373
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Internal;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 p0, 0x7d

    .line 374
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 369
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

    .line 384
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.sdkVersion\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 390
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.agentVersion\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 396
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.dataCollectorReceivedTime\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 402
    :cond_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.profileId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 408
    :cond_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.profileClassId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 414
    :cond_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.accountId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 420
    :cond_5
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.applicationName\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 426
    :cond_6
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.instrumentationKey\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 432
    :cond_7
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.telemetryItemId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 438
    :cond_8
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.applicationType\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 444
    :cond_9
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.requestSource\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 450
    :cond_a
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.flowType\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 456
    :cond_b
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.isAudit\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 462
    :cond_c
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.trackingSourceId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 468
    :cond_d
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.internal.trackingType\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    :cond_e
    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setAgentVersion(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationType(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    return-void
.end method

.method public setDataCollectorReceivedTime(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    return-void
.end method

.method public setFlowType(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    return-void
.end method

.method public setInstrumentationKey(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    return-void
.end method

.method public setIsAudit(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    return-void
.end method

.method public setProfileClassId(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setRequestSource(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setTelemetryItemId(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    return-void
.end method

.method public setTrackingSourceId(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    return-void
.end method

.method public setTrackingType(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    return-void
.end method
