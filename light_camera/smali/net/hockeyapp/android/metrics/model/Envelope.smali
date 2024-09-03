.class public Lnet/hockeyapp/android/metrics/model/Envelope;
.super Ljava/lang/Object;
.source "Envelope.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;


# instance fields
.field private appId:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private cV:Ljava/lang/String;

.field private data:Lnet/hockeyapp/android/metrics/model/Base;

.field private epoch:Ljava/lang/String;

.field private ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/metrics/model/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private flags:J

.field private iKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVer:Ljava/lang/String;

.field private sampleRate:I

.field private seqNum:J

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ver:I

    const/16 v0, 0x64

    .line 32
    iput v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    .line 98
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Envelope;->InitializeFields()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .registers 1

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .registers 1

    .line 245
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public getAppVer()Ljava/lang/String;
    .registers 1

    .line 259
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appVer:Ljava/lang/String;

    return-object p0
.end method

.method public getCV()Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->cV:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Lnet/hockeyapp/android/metrics/model/Base;
    .registers 1

    .line 321
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->data:Lnet/hockeyapp/android/metrics/model/Base;

    return-object p0
.end method

.method public getEpoch()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->epoch:Ljava/lang/String;

    return-object p0
.end method

.method public getExt()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/metrics/model/Extension;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 305
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    .line 307
    :cond_b
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    return-object p0
.end method

.method public getFlags()J
    .registers 3

    .line 203
    iget-wide v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->flags:J

    return-wide v0
.end method

.method public getIKey()Ljava/lang/String;
    .registers 1

    .line 189
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->iKey:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOs()Ljava/lang/String;
    .registers 1

    .line 217
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->os:Ljava/lang/String;

    return-object p0
.end method

.method public getOsVer()Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->osVer:Ljava/lang/String;

    return-object p0
.end method

.method public getSampleRate()I
    .registers 1

    .line 147
    iget p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    return p0
.end method

.method public getSeqNum()J
    .registers 3

    .line 175
    iget-wide v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->seqNum:J

    return-wide v0
.end method

.method public getTags()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 288
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    .line 290
    :cond_b
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .registers 1

    .line 133
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->time:Ljava/lang/String;

    return-object p0
.end method

.method public getVer()I
    .registers 1

    .line 105
    iget p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ver:I

    return p0
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

    .line 343
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 344
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 p0, 0x7d

    .line 345
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 340
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "writer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ver\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    iget v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ver:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"name\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->name:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"time\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->time:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 367
    iget v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_8f

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"sampleRate\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 373
    :cond_8f
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->epoch:Ljava/lang/String;

    if-eqz v1, :cond_b2

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"epoch\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->epoch:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 379
    :cond_b2
    iget-wide v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->seqNum:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_dd

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"seqNum\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    iget-wide v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->seqNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 385
    :cond_dd
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->iKey:Ljava/lang/String;

    if-eqz v1, :cond_100

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"iKey\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->iKey:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 391
    :cond_100
    iget-wide v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->flags:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_129

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"flags\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 393
    iget-wide v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->flags:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 397
    :cond_129
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->os:Ljava/lang/String;

    if-eqz v1, :cond_14c

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"os\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->os:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 403
    :cond_14c
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->osVer:Ljava/lang/String;

    if-eqz v1, :cond_16f

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"osVer\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->osVer:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 409
    :cond_16f
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appId:Ljava/lang/String;

    if-eqz v1, :cond_192

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"appId\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appId:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 415
    :cond_192
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appVer:Ljava/lang/String;

    if-eqz v1, :cond_1b5

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"appVer\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appVer:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 421
    :cond_1b5
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->cV:Ljava/lang/String;

    if-eqz v1, :cond_1d8

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"cV\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->cV:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ","

    .line 427
    :cond_1d8
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    if-eqz v1, :cond_1f7

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"tags\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    invoke-static {p1, v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    const-string v0, ","

    .line 433
    :cond_1f7
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    if-eqz v1, :cond_216

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"ext\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    invoke-static {p1, v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    const-string v0, ","

    .line 439
    :cond_216
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->data:Lnet/hockeyapp/android/metrics/model/Base;

    if-eqz v1, :cond_235

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"data\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 441
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->data:Lnet/hockeyapp/android/metrics/model/Base;

    invoke-static {p1, p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeJsonSerializable(Ljava/io/Writer;Lnet/hockeyapp/android/metrics/model/IJsonSerializable;)V

    const-string v0, ","

    :cond_235
    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppVer(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appVer:Ljava/lang/String;

    return-void
.end method

.method public setCV(Ljava/lang/String;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->cV:Ljava/lang/String;

    return-void
.end method

.method public setData(Lnet/hockeyapp/android/metrics/model/Base;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->data:Lnet/hockeyapp/android/metrics/model/Base;

    return-void
.end method

.method public setEpoch(Ljava/lang/String;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->epoch:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/metrics/model/Extension;",
            ">;)V"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    return-void
.end method

.method public setFlags(J)V
    .registers 3

    .line 210
    iput-wide p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->flags:J

    return-void
.end method

.method public setIKey(Ljava/lang/String;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->iKey:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->name:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->osVer:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .registers 2

    .line 154
    iput p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    return-void
.end method

.method public setSeqNum(J)V
    .registers 3

    .line 182
    iput-wide p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->seqNum:J

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
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

    .line 297
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->time:Ljava/lang/String;

    return-void
.end method

.method public setVer(I)V
    .registers 2

    .line 112
    iput p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ver:I

    return-void
.end method
