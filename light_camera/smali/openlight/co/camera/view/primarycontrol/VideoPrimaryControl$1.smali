.class Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl$1;
.super Lopenlight/co/camera/listener/OnSwipeTouchListener;
.source "VideoPrimaryControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->initThumbnailView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;Landroid/content/Context;)V
    .registers 3

    .line 156
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-direct {p0, p2}, Lopenlight/co/camera/listener/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSingleTap()V
    .registers 3

    .line 159
    # getter for: Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on galleryThumb single tap"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->gotoGallery()V
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->access$100(Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;)V

    .line 161
    invoke-super {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onSingleTap()V

    return-void
.end method
