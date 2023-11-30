.class Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GalleryEditorFtuOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->translateAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;


# direct methods
.method constructor <init>(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$3;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 156
    iget-object p0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$3;->this$0:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    const-wide/16 v0, 0x12c

    invoke-static {p0, v0, v1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->access$400(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;J)V

    return-void
.end method
