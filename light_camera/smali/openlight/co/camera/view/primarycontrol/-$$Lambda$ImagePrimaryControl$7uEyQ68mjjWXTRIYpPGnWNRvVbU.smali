.class public final synthetic Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$7uEyQ68mjjWXTRIYpPGnWNRvVbU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

.field private final synthetic f$1:Lopenlight/co/camera/managers/CameraManager;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Lopenlight/co/camera/managers/CameraManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$7uEyQ68mjjWXTRIYpPGnWNRvVbU;->f$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iput-object p2, p0, Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$7uEyQ68mjjWXTRIYpPGnWNRvVbU;->f$1:Lopenlight/co/camera/managers/CameraManager;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$7uEyQ68mjjWXTRIYpPGnWNRvVbU;->f$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$7uEyQ68mjjWXTRIYpPGnWNRvVbU;->f$1:Lopenlight/co/camera/managers/CameraManager;

    invoke-static {v0, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->lambda$onTouch$1(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Lopenlight/co/camera/managers/CameraManager;)V

    return-void
.end method
