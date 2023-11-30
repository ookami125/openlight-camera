.class public Lopenlight/co/camera/view/alerts/AlertActivity;
.super Lopenlight/co/camera/BaseActivity;
.source "AlertActivity.java"


# static fields
.field public static final EXTRAS_FRAGMENT_TAG:Ljava/lang/String; = "fragment_tag"

.field private static final TAG:Ljava/lang/String; = "AlertActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/BaseActivity;-><init>()V

    return-void
.end method

.method private hideSystemUI()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->hideSystemUIImmersiveSticky(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lopenlight/co/camera/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001b

    .line 29
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/AlertActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fragment_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    sget-object v0, Lopenlight/co/camera/view/alerts/LowBatteryFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance p1, Lopenlight/co/camera/view/alerts/LowBatteryFragment;

    invoke-direct {p1}, Lopenlight/co/camera/view/alerts/LowBatteryFragment;-><init>()V

    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lopenlight/co/camera/view/alerts/ThermalShutdownFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    new-instance p1, Lopenlight/co/camera/view/alerts/ThermalShutdownFragment;

    invoke-direct {p1}, Lopenlight/co/camera/view/alerts/ThermalShutdownFragment;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/AlertActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f09001d

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 47
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onResume()V

    .line 48
    invoke-direct {p0}, Lopenlight/co/camera/view/alerts/AlertActivity;->hideSystemUI()V

    return-void
.end method
