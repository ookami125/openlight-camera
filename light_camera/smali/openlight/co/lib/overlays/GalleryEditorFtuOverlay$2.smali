.class Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GalleryEditorFtuOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->animationScaleAndDisappear(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;


# direct methods
.method constructor <init>(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$2;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 127
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 128
    iget-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$2;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    # getter for: Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFirstTime:Z
    invoke-static {p1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->access$100(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 129
    iget-object p0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$2;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    # invokes: Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->resetTranslate()V
    invoke-static {p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->access$200(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V

    goto :goto_18

    .line 131
    :cond_11
    iget-object p0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$2;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    const-wide/16 v0, 0x12c

    # invokes: Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->animationScaleAndAppear(J)V
    invoke-static {p0, v0, v1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->access$300(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;J)V

    :goto_18
    return-void
.end method
