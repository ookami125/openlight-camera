.class public Lopenlight/co/camera/view/setting/SettingsActivity;
.super Lopenlight/co/camera/BaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;


# static fields
.field public static final EXTRA_SETTINGS_INDEX_KEY:Ljava/lang/String; = "settings_index"

.field public static final EXTRA_SETTINGS_SCROLL_TO_KEY:Ljava/lang/String; = "settings_scroll_to_index_key"

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# instance fields
.field private final mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lopenlight/co/camera/BaseActivity;-><init>()V

    .line 28
    invoke-static {}, Lopenlight/co/camera/listener/HardKeyManager;->get()Lopenlight/co/camera/listener/HardKeyManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsActivity;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    return-void
.end method

.method private hideSystemUI()V
    .registers 1

    .line 92
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 93
    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->hideSystemUIImmersiveSticky(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .line 53
    sget-object v0, Lopenlight/co/camera/view/setting/SettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/view/setting/SettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 57
    check-cast v0, Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->onBackPressed()V

    goto :goto_1c

    .line 59
    :cond_19
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onBackPressed()V

    :goto_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 32
    invoke-super {p0, p1}, Lopenlight/co/camera/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001d

    .line 33
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/setting/SettingsActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    if-nez p1, :cond_3a

    .line 42
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "settings_index"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_scroll_to_index_key"

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lopenlight/co/camera/view/setting/SettingsFragment;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f090139

    .line 47
    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_3a
    return-void
.end method

.method public onHardKeyEvent(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .registers 3

    .line 82
    sget-object p1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    if-ne p2, p1, :cond_7

    .line 83
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsActivity;->finish()V

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .registers 2

    .line 72
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onPause()V

    .line 73
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsActivity;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/listener/HardKeyManager;->unregisterKeyListener(Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 65
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onResume()V

    .line 66
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsActivity;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/listener/HardKeyManager;->registerKeyListener(Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;)V

    .line 67
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsActivity;->hideSystemUI()V

    return-void
.end method
