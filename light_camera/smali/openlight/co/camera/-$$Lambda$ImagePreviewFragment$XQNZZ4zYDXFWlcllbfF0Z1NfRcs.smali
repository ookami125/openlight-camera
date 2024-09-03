.class public final synthetic Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$XQNZZ4zYDXFWlcllbfF0Z1NfRcs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lopenlight/co/lib/view/HistogramView$OnDrawListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/ImagePreviewFragment;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/ImagePreviewFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$XQNZZ4zYDXFWlcllbfF0Z1NfRcs;->f$0:Lopenlight/co/camera/ImagePreviewFragment;

    return-void
.end method


# virtual methods
.method public final onDone(Z)V
    .registers 2

    iget-object p0, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$XQNZZ4zYDXFWlcllbfF0Z1NfRcs;->f$0:Lopenlight/co/camera/ImagePreviewFragment;

    invoke-static {p0, p1}, Lopenlight/co/camera/ImagePreviewFragment;->lambda$onYuvImageAvailable$0(Lopenlight/co/camera/ImagePreviewFragment;Z)V

    return-void
.end method
