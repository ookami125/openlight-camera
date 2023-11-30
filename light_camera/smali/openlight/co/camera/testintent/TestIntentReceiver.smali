.class public Lopenlight/co/camera/testintent/TestIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TestIntentReceiver.java"


# static fields
.field public static final TEST_INTENT_ACTION:Ljava/lang/String; = "openlight.co.intent.CITEST_INTENT"


# instance fields
.field private final mTestIntentManager:Lopenlight/co/camera/testintent/TestIntentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager;->get()Lopenlight/co/camera/testintent/TestIntentManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/testintent/TestIntentReceiver;->mTestIntentManager:Lopenlight/co/camera/testintent/TestIntentManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "openlight.co.intent.CITEST_INTENT"

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentReceiver;->mTestIntentManager:Lopenlight/co/camera/testintent/TestIntentManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/testintent/TestIntentManager;->startTest(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
