.class public final synthetic Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$8zMmWLG2HagQv2aMPUJBOQ8XcIM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/setting/SettingsFragment;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$8zMmWLG2HagQv2aMPUJBOQ8XcIM;->f$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    iput-object p2, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$8zMmWLG2HagQv2aMPUJBOQ8XcIM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$8zMmWLG2HagQv2aMPUJBOQ8XcIM;->f$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$8zMmWLG2HagQv2aMPUJBOQ8XcIM;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->lambda$updateSharedPreferences$6(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)V

    return-void
.end method
