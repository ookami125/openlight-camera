.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplApi21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;,
        Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v4/media/session/MediaControllerCompat$Callback;",
            "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mControllerObj:Ljava/lang/Object;

.field private mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

.field private final mPendingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaControllerCompat$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1874
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    .line 1879
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    .line 1893
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 1892
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    .line 1894
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    if-eqz p1, :cond_2d

    .line 1895
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 1896
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-nez p1, :cond_2c

    .line 1897
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->requestExtraBinder()V

    :cond_2c
    return-void

    .line 1894
    :cond_2d
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .registers 4

    .line 1881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1874
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    .line 1879
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    .line 1883
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 1882
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    .line 1884
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 1885
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-nez p1, :cond_30

    .line 1886
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->requestExtraBinder()V

    :cond_30
    return-void
.end method

.method static synthetic access$202(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/IMediaSession;
    .registers 2

    .line 1871
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)V
    .registers 1

    .line 1871
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->processPendingCallbacks()V

    return-void
.end method

.method private processPendingCallbacks()V
    .registers 6

    .line 2135
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-nez v0, :cond_5

    return-void

    .line 2138
    :cond_5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 2139
    :try_start_8
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 2140
    new-instance v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-direct {v3, v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 2141
    iget-object v4, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 2142
    iput-boolean v4, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHasExtraCallback:Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3c

    .line 2144
    :try_start_27
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2, v3}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3c

    goto :goto_e

    :catch_2d
    move-exception v1

    :try_start_2e
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in registerCallback."

    .line 2146
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2150
    :cond_35
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2151
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method private requestExtraBinder()V
    .registers 4

    const-string v0, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    .line 2130
    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .registers 6

    .line 1978
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 1983
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 1984
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    const/4 v1, 0x0

    .line 1985
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    .line 1980
    :cond_1e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This session doesn\'t support queue management operations"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .registers 7

    .line 1990
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 1995
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 1996
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    .line 1997
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    const/4 p2, 0x0

    .line 1998
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    .line 1992
    :cond_23
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This session doesn\'t support queue management operations"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public adjustVolume(II)V
    .registers 3

    .line 2111
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->adjustVolume(Ljava/lang/Object;II)V

    return-void
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 1942
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->dispatchMediaButtonEvent(Ljava/lang/Object;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 1

    .line 2020
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getFlags()J
    .registers 3

    .line 2085
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getFlags(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaController()Ljava/lang/Object;
    .registers 1

    .line 2126
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    return-object p0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .registers 1

    .line 1966
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getMetadata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1967
    invoke-static {p0}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 2121
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .registers 8

    .line 2090
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getPlaybackInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 2091
    new-instance v6, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 2092
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getPlaybackType(Ljava/lang/Object;)I

    move-result v1

    .line 2093
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getLegacyAudioStream(Ljava/lang/Object;)I

    move-result v2

    .line 2094
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getVolumeControl(Ljava/lang/Object;)I

    move-result v3

    .line 2095
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getMaxVolume(Ljava/lang/Object;)I

    move-result v4

    .line 2096
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getCurrentVolume(Ljava/lang/Object;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    goto :goto_24

    :cond_23
    const/4 v6, 0x0

    :goto_24
    return-object v6
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 4

    .line 1953
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_13

    .line 1955
    :try_start_4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaSession;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackState."

    .line 1957
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1960
    :cond_13
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getPlaybackState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1961
    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return-object p0
.end method

.method public getQueue()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 1972
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getQueue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1973
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->fromQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 2015
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getQueueTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getRatingType()I
    .registers 4

    .line 2025
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_19

    .line 2027
    :try_start_a
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaSession;->getRatingType()I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRatingType."

    .line 2029
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2032
    :cond_19
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getRatingType(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .registers 3

    .line 2049
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_13

    .line 2051
    :try_start_4
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {p0}, Landroid/support/v4/media/session/IMediaSession;->getRepeatMode()I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    const-string v0, "MediaControllerCompat"

    const-string v1, "Dead object in getRepeatMode."

    .line 2053
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .registers 1

    .line 2101
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getSessionActivity(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getShuffleMode()I
    .registers 3

    .line 2073
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_13

    .line 2075
    :try_start_4
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {p0}, Landroid/support/v4/media/session/IMediaSession;->getShuffleMode()I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    const-string v0, "MediaControllerCompat"

    const-string v1, "Dead object in getShuffleMode."

    .line 2077
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .registers 2

    .line 1947
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1948
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;-><init>(Ljava/lang/Object;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public isCaptioningEnabled()Z
    .registers 3

    .line 2037
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_13

    .line 2039
    :try_start_4
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {p0}, Landroid/support/v4/media/session/IMediaSession;->isCaptioningEnabled()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    const-string v0, "MediaControllerCompat"

    const-string v1, "Dead object in isCaptioningEnabled."

    .line 2041
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isShuffleModeEnabled()Z
    .registers 3

    .line 2061
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_13

    .line 2063
    :try_start_4
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {p0}, Landroid/support/v4/media/session/IMediaSession;->isShuffleModeEnabledDeprecated()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    const-string v0, "MediaControllerCompat"

    const-string v1, "Dead object in isShuffleModeEnabled."

    .line 2065
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .registers 5

    .line 1903
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    .line 1904
    # getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$000(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v1

    .line 1903
    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 1905
    iget-object p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz p2, :cond_29

    .line 1906
    new-instance p2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-direct {p2, p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 1907
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1908
    iput-boolean v0, p1, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHasExtraCallback:Z

    .line 1910
    :try_start_1a
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {p0, p2}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_32

    :catch_20
    move-exception p0

    const-string p1, "MediaControllerCompat"

    const-string p2, "Dead object in registerCallback."

    .line 1912
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 1915
    :cond_29
    iget-object p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    monitor-enter p2

    .line 1916
    :try_start_2c
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1917
    monitor-exit p2

    :goto_32
    return-void

    :catchall_33
    move-exception p0

    monitor-exit p2
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw p0
.end method

.method public removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .registers 6

    .line 2003
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 2008
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 2009
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    const/4 v1, 0x0

    .line 2010
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    .line 2005
    :cond_1e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This session doesn\'t support queue management operations"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4

    .line 2116
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->sendCommand(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public setVolumeTo(II)V
    .registers 3

    .line 2106
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->setVolumeTo(Ljava/lang/Object;II)V

    return-void
.end method

.method public final unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 4

    .line 1923
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    # getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$000(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1924
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_26

    .line 1926
    :try_start_d
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    if-eqz p1, :cond_2f

    .line 1928
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {p0, p1}, Landroid/support/v4/media/session/IMediaSession;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_2f

    :catch_1d
    move-exception p0

    const-string p1, "MediaControllerCompat"

    const-string v0, "Dead object in unregisterCallback."

    .line 1931
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 1934
    :cond_26
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1935
    :try_start_29
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1936
    monitor-exit v0

    :cond_2f
    :goto_2f
    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw p0
.end method
