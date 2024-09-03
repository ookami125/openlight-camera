.class public final synthetic Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$RAWhPjyB_3Niqxojczr5YZvhqek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/setting/SettingsFragment;

.field private final synthetic f$1:Lopenlight/co/camera/view/setting/SettingModel;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$RAWhPjyB_3Niqxojczr5YZvhqek;->f$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    iput-object p2, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$RAWhPjyB_3Niqxojczr5YZvhqek;->f$1:Lopenlight/co/camera/view/setting/SettingModel;

    return-void
.end method


# virtual methods
.method public final onOptionItemSelected(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$RAWhPjyB_3Niqxojczr5YZvhqek;->f$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$RAWhPjyB_3Niqxojczr5YZvhqek;->f$1:Lopenlight/co/camera/view/setting/SettingModel;

    invoke-static {v0, p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->lambda$initSecondLevelSettingsAdapter$4(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;Ljava/lang/String;)V

    return-void
.end method
