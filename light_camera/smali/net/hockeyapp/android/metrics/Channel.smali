.class Lnet/hockeyapp/android/metrics/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"

.field protected static mMaxBatchCount:I

.field protected static mMaxBatchInterval:I


# instance fields
.field private final mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

.field protected final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

.field protected final mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/Channel;->LOCK:Ljava/lang/Object;

    const/16 v0, 0x32

    .line 38
    sput v0, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchCount:I

    const/16 v0, 0x3a98

    .line 42
    sput v0, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchInterval:I

    return-void
.end method

.method public constructor <init>(Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Persistence;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    .line 69
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    .line 70
    iput-object p2, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    .line 71
    new-instance p1, Ljava/util/Timer;

    const-string p2, "HockeyApp User Metrics Sender Queue"

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mTimer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method protected createEnvelope(Lnet/hockeyapp/android/metrics/model/Data;)Lnet/hockeyapp/android/metrics/model/Envelope;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/Data<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;)",
            "Lnet/hockeyapp/android/metrics/model/Envelope;"
        }
    .end annotation

    .line 124
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Envelope;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Envelope;-><init>()V

    .line 125
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->setData(Lnet/hockeyapp/android/metrics/model/Base;)V

    .line 126
    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/model/Data;->getBaseData()Lnet/hockeyapp/android/metrics/model/Domain;

    move-result-object p1

    .line 127
    instance-of v1, p1, Lnet/hockeyapp/android/metrics/model/TelemetryData;

    if-eqz v1, :cond_0

    .line 128
    check-cast p1, Lnet/hockeyapp/android/metrics/model/TelemetryData;

    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->setName(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->updateScreenResolution()V

    .line 134
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lnet/hockeyapp/android/utils/Util;->dateToISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->setTime(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->getInstrumentationKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->setIKey(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->getContextTags()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 139
    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/model/Envelope;->setTags(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method protected enqueue(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    sget-object v0, Lnet/hockeyapp/android/metrics/Channel;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v1, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchCount:I

    if-lt p1, v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->synchronize()V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 89
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->scheduleSynchronizeTask()V

    goto :goto_0

    :cond_2
    const-string p0, "HockeyApp-Metrics"

    const-string p1, "Unable to add item to queue"

    .line 92
    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enqueueData(Lnet/hockeyapp/android/metrics/model/Base;)V
    .locals 2

    .line 156
    instance-of v0, p1, Lnet/hockeyapp/android/metrics/model/Data;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    :try_start_0
    check-cast p1, Lnet/hockeyapp/android/metrics/model/Data;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Channel;->createEnvelope(Lnet/hockeyapp/android/metrics/model/Data;)Lnet/hockeyapp/android/metrics/model/Envelope;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HockeyApp-Metrics"

    const-string v1, "Telemetry not enqueued, could not create envelope, must be of type ITelemetry"

    .line 161
    invoke-static {p1, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Channel;->serializeEnvelope(Lnet/hockeyapp/android/metrics/model/Envelope;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/Channel;->enqueue(Ljava/lang/String;)V

    const-string p0, "HockeyApp-Metrics"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueued telemetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p0, "HockeyApp-Metrics"

    const-string p1, "Telemetry not enqueued, must be of type ITelemetry"

    .line 171
    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected scheduleSynchronizeTask()V
    .locals 3

    .line 145
    new-instance v0, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;-><init>(Lnet/hockeyapp/android/metrics/Channel;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    .line 146
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTimer:Ljava/util/Timer;

    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    sget v1, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected serializeEnvelope(Lnet/hockeyapp/android/metrics/model/Envelope;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 183
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 184
    invoke-virtual {p1, v0}, Lnet/hockeyapp/android/metrics/model/Envelope;->serialize(Ljava/io/Writer;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "HockeyApp-Metrics"

    const-string v0, "Envelope wasn\'t empty but failed to serialize anything, returning null"

    .line 187
    invoke-static {p1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string v0, "HockeyApp-Metrics"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save data with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected synchronize()V
    .locals 2

    .line 101
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;->cancel()Z

    .line 106
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    if-eqz v1, :cond_1

    .line 112
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/Persistence;->persist([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
