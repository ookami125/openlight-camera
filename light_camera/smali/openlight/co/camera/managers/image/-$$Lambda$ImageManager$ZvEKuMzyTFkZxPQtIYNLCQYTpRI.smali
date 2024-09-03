.class public final synthetic Lopenlight/co/camera/managers/image/-$$Lambda$ImageManager$ZvEKuMzyTFkZxPQtIYNLCQYTpRI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/managers/image/ImageManager;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/managers/image/ImageManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/managers/image/-$$Lambda$ImageManager$ZvEKuMzyTFkZxPQtIYNLCQYTpRI;->f$0:Lopenlight/co/camera/managers/image/ImageManager;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .registers 1

    iget-object p0, p0, Lopenlight/co/camera/managers/image/-$$Lambda$ImageManager$ZvEKuMzyTFkZxPQtIYNLCQYTpRI;->f$0:Lopenlight/co/camera/managers/image/ImageManager;

    invoke-static {p0}, Lopenlight/co/camera/managers/image/ImageManager;->lambda$closeCamera$0(Lopenlight/co/camera/managers/image/ImageManager;)V

    return-void
.end method
