.class final Lnet/hockeyapp/android/FeedbackManager$3;
.super Landroid/content/BroadcastReceiver;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackManager;->startNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 407
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 410
    invoke-static {p1}, Lnet/hockeyapp/android/FeedbackManager;->takeScreenshot(Landroid/content/Context;)V

    return-void
.end method
