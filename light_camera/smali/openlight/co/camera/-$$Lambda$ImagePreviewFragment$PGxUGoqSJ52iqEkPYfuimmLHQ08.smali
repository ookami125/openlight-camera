.class public final synthetic Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$PGxUGoqSJ52iqEkPYfuimmLHQ08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/ImagePreviewFragment;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/ImagePreviewFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$PGxUGoqSJ52iqEkPYfuimmLHQ08;->f$0:Lopenlight/co/camera/ImagePreviewFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$PGxUGoqSJ52iqEkPYfuimmLHQ08;->f$0:Lopenlight/co/camera/ImagePreviewFragment;

    invoke-static {p0}, Lopenlight/co/camera/ImagePreviewFragment;->lambda$onImageSaved$1(Lopenlight/co/camera/ImagePreviewFragment;)V

    return-void
.end method
