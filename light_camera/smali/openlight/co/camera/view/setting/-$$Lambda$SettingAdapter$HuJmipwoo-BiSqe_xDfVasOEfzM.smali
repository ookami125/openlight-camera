.class public final synthetic Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$HuJmipwoo-BiSqe_xDfVasOEfzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

.field private final synthetic f$1:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/setting/SettingAdapter;Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$HuJmipwoo-BiSqe_xDfVasOEfzM;->f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

    iput-object p2, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$HuJmipwoo-BiSqe_xDfVasOEfzM;->f$1:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$HuJmipwoo-BiSqe_xDfVasOEfzM;->f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$HuJmipwoo-BiSqe_xDfVasOEfzM;->f$1:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    invoke-static {v0, p0, p1}, Lopenlight/co/camera/view/setting/SettingAdapter;->lambda$onBindViewHolder$0(Lopenlight/co/camera/view/setting/SettingAdapter;Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;Landroid/view/View;)V

    return-void
.end method
