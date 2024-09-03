.class public final synthetic Lopenlight/co/camera/testintent/-$$Lambda$TestIntentManager$hyP1XsFTWvrB9BzuuN_TE0W1qag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/testintent/TestIntentManager;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/testintent/TestIntentManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/testintent/-$$Lambda$TestIntentManager$hyP1XsFTWvrB9BzuuN_TE0W1qag;->f$0:Lopenlight/co/camera/testintent/TestIntentManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 2

    iget-object p0, p0, Lopenlight/co/camera/testintent/-$$Lambda$TestIntentManager$hyP1XsFTWvrB9BzuuN_TE0W1qag;->f$0:Lopenlight/co/camera/testintent/TestIntentManager;

    invoke-static {p0, p1}, Lopenlight/co/camera/testintent/TestIntentManager;->lambda$new$0(Lopenlight/co/camera/testintent/TestIntentManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
