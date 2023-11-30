.class Lopenlight/co/camera/view/thumbnail/ThumbnailView$2;
.super Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setThumbImage(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/widget/ImageView;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$2;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 210
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$2;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$2;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-static {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$000(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Landroid/util/TimingLogger;

    move-result-object p0

    invoke-static {p1, p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$500(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/util/TimingLogger;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 204
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/thumbnail/ThumbnailView$2;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
