.class Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GalleryEditorFtuOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->resetTranslate()V
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

    .line 165
    iput-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 168
    iget-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    # getter for: Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mCount:I
    invoke-static {p1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->access$500(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_11

    .line 169
    iget-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    const-wide/16 v0, 0x12c

    # invokes: Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->animationScaleAndAppear(J)V
    invoke-static {p1, v0, v1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->access$300(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;J)V

    goto :goto_1f

    .line 170
    :cond_11
    iget-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    # getter for: Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mCount:I
    invoke-static {p1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->access$500(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)I

    move-result p1

    if-ne p1, v0, :cond_1f

    .line 171
    iget-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->close(Z)V

    .line 173
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    # operator++ for: Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mCount:I
    invoke-static {p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->access$508(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)I

    return-void
.end method
