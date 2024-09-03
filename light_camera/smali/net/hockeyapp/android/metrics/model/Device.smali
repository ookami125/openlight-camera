.class public Lnet/hockeyapp/android/metrics/model/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private machineName:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private networkName:Ljava/lang/String;

.field private oemName:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private roleInstance:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private screenResolution:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private vmName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->InitializeFields()V

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

    .line 332
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "ai.device.id"

    .line 333
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_b
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v0, "ai.device.ip"

    .line 336
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_16
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    if-eqz v0, :cond_21

    const-string v0, "ai.device.language"

    .line 339
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_21
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const-string v0, "ai.device.locale"

    .line 342
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_2c
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    if-eqz v0, :cond_37

    const-string v0, "ai.device.model"

    .line 345
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_37
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    if-eqz v0, :cond_42

    const-string v0, "ai.device.network"

    .line 348
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_42
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_4d

    const-string v0, "ai.device.networkName"

    .line 351
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_4d
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    if-eqz v0, :cond_58

    const-string v0, "ai.device.oemName"

    .line 354
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_58
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    if-eqz v0, :cond_63

    const-string v0, "ai.device.os"

    .line 357
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_63
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_6e

    const-string v0, "ai.device.osVersion"

    .line 360
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_6e
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    if-eqz v0, :cond_79

    const-string v0, "ai.device.roleInstance"

    .line 363
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_79
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    if-eqz v0, :cond_84

    const-string v0, "ai.device.roleName"

    .line 366
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_84
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    if-eqz v0, :cond_8f

    const-string v0, "ai.device.screenResolution"

    .line 369
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_8f
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    if-eqz v0, :cond_9a

    const-string v0, "ai.device.type"

    .line 372
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_9a
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    if-eqz v0, :cond_a5

    const-string v0, "ai.device.machineName"

    .line 375
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_a5
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    if-eqz v0, :cond_b0

    const-string v0, "ai.device.vmName"

    .line 378
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getIp()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 1

    .line 133
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 1

    .line 147
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public getMachineName()Ljava/lang/String;
    .registers 1

    .line 301
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork()Ljava/lang/String;
    .registers 1

    .line 175
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 1

    .line 189
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    return-object p0
.end method

.method public getOemName()Ljava/lang/String;
    .registers 1

    .line 203
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    return-object p0
.end method

.method public getOs()Ljava/lang/String;
    .registers 1

    .line 217
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    return-object p0
.end method

.method public getOsVersion()Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getRoleInstance()Ljava/lang/String;
    .registers 1

    .line 245
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    return-object p0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 1

    .line 259
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    .line 287
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getVmName()Ljava/lang/String;
    .registers 1

    .line 315
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

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

    .line 394
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 395
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 p0, 0x7d

    .line 396
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 391
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

    .line 406
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.id\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 412
    :cond_25
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.ip\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 418
    :cond_48
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    if-eqz v1, :cond_6b

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.language\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 424
    :cond_6b
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    if-eqz v1, :cond_8e

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.locale\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 430
    :cond_8e
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    if-eqz v1, :cond_b1

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.model\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 436
    :cond_b1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    if-eqz v1, :cond_d4

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.network\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 442
    :cond_d4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    if-eqz v1, :cond_f7

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.networkName\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 448
    :cond_f7
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    if-eqz v1, :cond_11a

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.oemName\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 454
    :cond_11a
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    if-eqz v1, :cond_13d

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.os\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 460
    :cond_13d
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    if-eqz v1, :cond_160

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.osVersion\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 466
    :cond_160
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    if-eqz v1, :cond_183

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.roleInstance\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 472
    :cond_183
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    if-eqz v1, :cond_1a6

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.roleName\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 478
    :cond_1a6
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.screenResolution\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 484
    :cond_1c9
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    if-eqz v1, :cond_1ec

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.type\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 490
    :cond_1ec
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    if-eqz v1, :cond_20f

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.machineName\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 496
    :cond_20f
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    if-eqz v1, :cond_232

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ai.device.vmName\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 498
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    :cond_232
    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    return-void
.end method

.method public setMachineName(Ljava/lang/String;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    return-void
.end method

.method public setOemName(Ljava/lang/String;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setRoleInstance(Ljava/lang/String;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setScreenResolution(Ljava/lang/String;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    return-void
.end method

.method public setVmName(Ljava/lang/String;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    return-void
.end method
