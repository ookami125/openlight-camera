.class Lopenlight/co/touchstrip/TouchStrip$2;
.super Ljava/lang/Object;
.source "TouchStrip.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/touchstrip/TouchStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/touchstrip/TouchStrip;


# direct methods
.method constructor <init>(Lopenlight/co/touchstrip/TouchStrip;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$2;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    const-string p1, "device_touchstrip_setting"

    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 89
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$2;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    iget-object p2, p0, Lopenlight/co/touchstrip/TouchStrip$2;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    # getter for: Lopenlight/co/touchstrip/TouchStrip;->mApplication:Landroid/app/Application;
    invoke-static {p2}, Lopenlight/co/touchstrip/TouchStrip;->access$400(Lopenlight/co/touchstrip/TouchStrip;)Landroid/app/Application;

    move-result-object p2

    # invokes: Lopenlight/co/touchstrip/TouchStrip;->updateTouchStripStatus(Landroid/app/Application;)V
    invoke-static {p1, p2}, Lopenlight/co/touchstrip/TouchStrip;->access$500(Lopenlight/co/touchstrip/TouchStrip;Landroid/app/Application;)V

    .line 90
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$2;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    # getter for: Lopenlight/co/touchstrip/TouchStrip;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/touchstrip/TouchStrip;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Touchstrip shared preferences have been updated"

    # invokes: Lopenlight/co/touchstrip/TouchStrip;->logIt(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p0, p1, p2}, Lopenlight/co/touchstrip/TouchStrip;->access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
