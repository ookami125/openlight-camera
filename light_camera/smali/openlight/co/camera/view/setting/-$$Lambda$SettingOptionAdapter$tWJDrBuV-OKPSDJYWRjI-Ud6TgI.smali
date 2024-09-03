.class public final synthetic Lopenlight/co/camera/view/setting/-$$Lambda$SettingOptionAdapter$tWJDrBuV-OKPSDJYWRjI-Ud6TgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

.field private final synthetic f$1:Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/setting/SettingOptionAdapter;Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingOptionAdapter$tWJDrBuV-OKPSDJYWRjI-Ud6TgI;->f$0:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    iput-object p2, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingOptionAdapter$tWJDrBuV-OKPSDJYWRjI-Ud6TgI;->f$1:Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingOptionAdapter$tWJDrBuV-OKPSDJYWRjI-Ud6TgI;->f$0:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingOptionAdapter$tWJDrBuV-OKPSDJYWRjI-Ud6TgI;->f$1:Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;

    invoke-static {v0, p0, p1}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->lambda$onBindViewHolder$0(Lopenlight/co/camera/view/setting/SettingOptionAdapter;Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;Landroid/view/View;)V

    return-void
.end method
