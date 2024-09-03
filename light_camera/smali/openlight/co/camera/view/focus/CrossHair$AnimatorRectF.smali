.class final Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;
.super Landroid/graphics/RectF;
.source "CrossHair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/focus/CrossHair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnimatorRectF"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/focus/CrossHair;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/focus/CrossHair;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/focus/CrossHair;Lopenlight/co/camera/view/focus/CrossHair$1;)V
    .registers 3

    .line 557
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;-><init>(Lopenlight/co/camera/view/focus/CrossHair;)V

    return-void
.end method

.method static synthetic access$1100(Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;Landroid/graphics/Rect;)V
    .registers 2

    .line 557
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->copyValues(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1200(Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;Landroid/graphics/RectF;)V
    .registers 2

    .line 557
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->copyValues(Landroid/graphics/RectF;)V

    return-void
.end method

.method private copyValues(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_16

    .line 587
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    .line 588
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    .line 589
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    .line 590
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    :cond_16
    return-void
.end method

.method private copyValues(Landroid/graphics/RectF;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 578
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    .line 579
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    .line 580
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    .line 581
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    :cond_12
    return-void
.end method


# virtual methods
.method public setBottom(F)V
    .registers 2

    .line 564
    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    return-void
.end method

.method public setLeft(F)V
    .registers 2

    .line 572
    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    return-void
.end method

.method public setRight(F)V
    .registers 2

    .line 568
    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    return-void
.end method

.method public setTop(F)V
    .registers 2

    .line 560
    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    return-void
.end method
