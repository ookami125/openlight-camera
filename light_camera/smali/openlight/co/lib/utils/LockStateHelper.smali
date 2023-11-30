.class public Lopenlight/co/lib/utils/LockStateHelper;
.super Landroid/content/BroadcastReceiver;
.source "LockStateHelper.java"


# static fields
.field private static final MAX_OFF_TIME:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "LockStateHelper"


# instance fields
.field final mPrefs:Lopenlight/co/lib/content/Prefs;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/lib/utils/LockStateHelper;->mPrefs:Lopenlight/co/lib/content/Prefs;

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lopenlight/co/lib/utils/LockStateHelper;)V
    .locals 2

    .line 51
    iget-object p0, p0, Lopenlight/co/lib/utils/LockStateHelper;->mPrefs:Lopenlight/co/lib/content/Prefs;

    const-string v0, "locked_names"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object p2

    invoke-virtual {p2}, Lopenlight/co/lib/utils/Utils;->isLocked()Z

    move-result p2

    .line 31
    sget-object v0, Lopenlight/co/lib/utils/LockStateHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " locked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7ed8ea7f

    if-eq v0, v1, :cond_2

    const v1, -0x56ac2893

    if-eq v0, v1, :cond_1

    const v1, 0x311a1d6c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lopenlight/co/lib/utils/LockStateHelper;->onUserPresent()V

    goto :goto_3

    :pswitch_1
    if-eqz p2, :cond_5

    .line 49
    iget-object p1, p0, Lopenlight/co/lib/utils/LockStateHelper;->mPrefs:Lopenlight/co/lib/content/Prefs;

    const-string p2, "screen_off_time"

    invoke-interface {p1, p2}, Lopenlight/co/lib/content/Prefs;->getLongValue(Ljava/lang/String;)J

    move-result-wide p1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1388

    cmp-long p1, v0, p1

    if-lez p1, :cond_5

    .line 51
    iget-object p1, p0, Lopenlight/co/lib/utils/LockStateHelper;->mPrefs:Lopenlight/co/lib/content/Prefs;

    new-instance p2, Lopenlight/co/lib/utils/-$$Lambda$LockStateHelper$50S8Xq7syDhvq_DYX2B2QU65NMw;

    invoke-direct {p2, p0}, Lopenlight/co/lib/utils/-$$Lambda$LockStateHelper$50S8Xq7syDhvq_DYX2B2QU65NMw;-><init>(Lopenlight/co/lib/utils/LockStateHelper;)V

    invoke-interface {p1, p2}, Lopenlight/co/lib/content/Prefs;->withBroadcast(Ljava/lang/Runnable;)V

    goto :goto_3

    :pswitch_2
    if-eqz p2, :cond_4

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 38
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/lib/utils/Utils;->updateLockedState()Z

    goto :goto_2

    :cond_4
    const-wide/16 p1, 0x0

    .line 42
    :goto_2
    iget-object p0, p0, Lopenlight/co/lib/utils/LockStateHelper;->mPrefs:Lopenlight/co/lib/content/Prefs;

    const-string v0, "screen_off_time"

    invoke-interface {p0, v0, p1, p2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;J)V

    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onUserPresent()V
    .locals 0

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
