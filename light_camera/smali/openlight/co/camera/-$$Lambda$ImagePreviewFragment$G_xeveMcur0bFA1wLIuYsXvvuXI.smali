.class public final synthetic Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$G_xeveMcur0bFA1wLIuYsXvvuXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/ImagePreviewFragment;

.field private final synthetic f$1:Ljava/lang/Byte;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/ImagePreviewFragment;Ljava/lang/Byte;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$G_xeveMcur0bFA1wLIuYsXvvuXI;->f$0:Lopenlight/co/camera/ImagePreviewFragment;

    iput-object p2, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$G_xeveMcur0bFA1wLIuYsXvvuXI;->f$1:Ljava/lang/Byte;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$G_xeveMcur0bFA1wLIuYsXvvuXI;->f$0:Lopenlight/co/camera/ImagePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$G_xeveMcur0bFA1wLIuYsXvvuXI;->f$1:Ljava/lang/Byte;

    invoke-static {v0, p0}, Lopenlight/co/camera/ImagePreviewFragment;->lambda$updateTripodAssist$3(Lopenlight/co/camera/ImagePreviewFragment;Ljava/lang/Byte;)V

    return-void
.end method
