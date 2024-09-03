.class Lopenlight/co/camera/ImagePreviewFragment$1;
.super Ljava/lang/Object;
.source "ImagePreviewFragment.java"

# interfaces
.implements Lopenlight/co/camera/testintent/TestIntentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/ImagePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/ImagePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/ImagePreviewFragment;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment$1;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 166
    const-class p0, Lopenlight/co/camera/ImagePreviewFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFocusROI(II)V
    .registers 3

    .line 161
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment$1;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processTest(II)V

    return-void
.end method

.method public updateUiAfterTest()V
    .registers 3

    .line 155
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment$1;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/ImagePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment$1;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    iget-object v1, v1, Lopenlight/co/camera/ImagePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->performZoom(Lopenlight/co/camera/view/zoom/ZoomWheel;)V

    .line 156
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment$1;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->doFocusPostZoom()V

    return-void
.end method
