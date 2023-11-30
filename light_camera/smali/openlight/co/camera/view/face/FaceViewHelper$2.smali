.class Lopenlight/co/camera/view/face/FaceViewHelper$2;
.super Ljava/lang/Object;
.source "FaceViewHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/face/FaceViewHelper;->onFaceDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/camera2/params/Face;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

.field final synthetic val$lastFaceId:I


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/face/FaceViewHelper;I)V
    .locals 0

    .line 121
    iput-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper$2;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    iput p2, p0, Lopenlight/co/camera/view/face/FaceViewHelper$2;->val$lastFaceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/camera2/params/Face;Landroid/hardware/camera2/params/Face;)I
    .locals 2

    .line 124
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    iget v1, p0, Lopenlight/co/camera/view/face/FaceViewHelper$2;->val$lastFaceId:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    iget p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$2;->val$lastFaceId:I

    if-ne v0, p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result p2

    mul-int/2addr p0, p2

    .line 132
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result p1

    mul-int/2addr p2, p1

    sub-int/2addr p0, p2

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 121
    check-cast p1, Landroid/hardware/camera2/params/Face;

    check-cast p2, Landroid/hardware/camera2/params/Face;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/face/FaceViewHelper$2;->compare(Landroid/hardware/camera2/params/Face;Landroid/hardware/camera2/params/Face;)I

    move-result p0

    return p0
.end method
