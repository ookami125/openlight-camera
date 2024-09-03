.class Lopenlight/co/camera/BasePreviewFragment$3;
.super Ljava/lang/Object;
.source "BasePreviewFragment.java"

# interfaces
.implements Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/BasePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/BasePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/BasePreviewFragment;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$3;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChanged(Lopenlight/co/lib/content/Prefs;Ljava/lang/String;)V
    .registers 3

    const-string p0, "burst_mode"

    .line 364
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 365
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CameraState;->checkAndUpdateCaptureMode()V

    :cond_f
    return-void
.end method
