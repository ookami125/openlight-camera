.class public final synthetic Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$SCI7yWbH5Lp2rOdeGh9qeRlaLI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/ImagePreviewFragment;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/ImagePreviewFragment;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$SCI7yWbH5Lp2rOdeGh9qeRlaLI8;->f$0:Lopenlight/co/camera/ImagePreviewFragment;

    iput-boolean p2, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$SCI7yWbH5Lp2rOdeGh9qeRlaLI8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$SCI7yWbH5Lp2rOdeGh9qeRlaLI8;->f$0:Lopenlight/co/camera/ImagePreviewFragment;

    iget-boolean p0, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$SCI7yWbH5Lp2rOdeGh9qeRlaLI8;->f$1:Z

    invoke-static {v0, p0}, Lopenlight/co/camera/ImagePreviewFragment;->lambda$updateHandshakeAssist$4(Lopenlight/co/camera/ImagePreviewFragment;Z)V

    return-void
.end method
