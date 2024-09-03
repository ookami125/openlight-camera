.class Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/thumbnail/ThumbnailView;->addAnimationAfterCapture(Landroid/util/TimingLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

.field final synthetic val$timingLogger:Landroid/util/TimingLogger;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/util/TimingLogger;)V
    .registers 3

    .line 248
    iput-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    iput-object p2, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;->val$timingLogger:Landroid/util/TimingLogger;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 3

    .line 256
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    # getter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;
    invoke-static {p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$300(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f0800ec

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 257
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    # getter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mIsAncillaryToolbarShown:Z
    invoke-static {p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$600(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 258
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    # getter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;
    invoke-static {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$700(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3

    .line 251
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    # getter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;
    invoke-static {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$300(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
