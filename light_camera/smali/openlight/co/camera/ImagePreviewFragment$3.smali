.class Lopenlight/co/camera/ImagePreviewFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImagePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/ImagePreviewFragment;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/ImagePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/ImagePreviewFragment;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment$3;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 800
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment$3;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    invoke-static {p0}, Lopenlight/co/camera/ImagePreviewFragment;->access$100(Lopenlight/co/camera/ImagePreviewFragment;)V

    return-void
.end method
