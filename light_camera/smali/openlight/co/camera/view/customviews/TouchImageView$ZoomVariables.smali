.class Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomVariables"
.end annotation


# instance fields
.field public focusX:F

.field public focusY:F

.field public scale:F

.field public scaleType:Landroid/widget/ImageView$ScaleType;

.field final synthetic this$0:Lopenlight/co/camera/view/customviews/TouchImageView;


# direct methods
.method public constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V
    .registers 6

    .line 1353
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1354
    iput p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->scale:F

    .line 1355
    iput p3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->focusX:F

    .line 1356
    iput p4, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->focusY:F

    .line 1357
    iput-object p5, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
