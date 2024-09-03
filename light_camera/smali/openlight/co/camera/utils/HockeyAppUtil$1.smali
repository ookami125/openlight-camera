.class final Lopenlight/co/camera/utils/HockeyAppUtil$1;
.super Landroid/os/Handler;
.source "HockeyAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/utils/HockeyAppUtil;->createHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 77
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 78
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2e

    goto :goto_2c

    :pswitch_f
    const p1, 0x7f0e0048

    .line 84
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    :pswitch_1e
    const p1, 0x7f0e0049

    .line 80
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_f
    .end packed-switch
.end method
