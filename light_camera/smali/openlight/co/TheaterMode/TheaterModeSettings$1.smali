.class Lopenlight/co/TheaterMode/TheaterModeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TheaterModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/TheaterMode/TheaterModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/TheaterMode/TheaterModeSettings;


# direct methods
.method constructor <init>(Lopenlight/co/TheaterMode/TheaterModeSettings;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$1;->this$0:Lopenlight/co/TheaterMode/TheaterModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 47
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "in TheaterMode changed receiver"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$1;->this$0:Lopenlight/co/TheaterMode/TheaterModeSettings;

    invoke-static {p0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$100(Lopenlight/co/TheaterMode/TheaterModeSettings;)V

    return-void
.end method
