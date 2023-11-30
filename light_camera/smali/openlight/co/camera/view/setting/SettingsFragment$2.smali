.class Lopenlight/co/camera/view/setting/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/setting/SettingsFragment;->addConfirmPopup(Lopenlight/co/camera/view/setting/SettingModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/setting/SettingsFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$2;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 0

    .line 515
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$2;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1300(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V

    return-void
.end method

.method public onOk(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 0

    .line 510
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$2;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1100(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V

    return-void
.end method
