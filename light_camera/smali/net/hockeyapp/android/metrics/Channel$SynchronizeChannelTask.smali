.class Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;
.super Ljava/util/TimerTask;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/metrics/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchronizeChannelTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/metrics/Channel;


# direct methods
.method public constructor <init>(Lnet/hockeyapp/android/metrics/Channel;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;->this$0:Lnet/hockeyapp/android/metrics/Channel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 205
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;->this$0:Lnet/hockeyapp/android/metrics/Channel;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->synchronize()V

    return-void
.end method
