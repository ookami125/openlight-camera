.class public final synthetic Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

.field private final synthetic f$3:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/setting/SettingAdapter;ZLopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;->f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

    iput-boolean p2, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;->f$1:Z

    iput-object p3, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;->f$2:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    iput-object p4, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;->f$3:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;->f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

    iget-boolean v1, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;->f$1:Z

    iget-object v2, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;->f$2:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;->f$3:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-static {v0, v1, v2, p0, p1}, Lopenlight/co/camera/view/setting/SettingAdapter;->lambda$onBindViewHolder$2(Lopenlight/co/camera/view/setting/SettingAdapter;ZLopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;Landroid/view/View;)V

    return-void
.end method
