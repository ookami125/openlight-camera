.class public final synthetic Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$8hBKRpFB24VVaqBb5gKIbbgczF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

.field private final synthetic f$1:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/setting/SettingAdapter;Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$8hBKRpFB24VVaqBb5gKIbbgczF8;->f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

    iput-object p2, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$8hBKRpFB24VVaqBb5gKIbbgczF8;->f$1:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$8hBKRpFB24VVaqBb5gKIbbgczF8;->f$0:Lopenlight/co/camera/view/setting/SettingAdapter;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$8hBKRpFB24VVaqBb5gKIbbgczF8;->f$1:Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    invoke-static {v0, p0, p1, p2}, Lopenlight/co/camera/view/setting/SettingAdapter;->lambda$onBindViewHolder$1(Lopenlight/co/camera/view/setting/SettingAdapter;Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
