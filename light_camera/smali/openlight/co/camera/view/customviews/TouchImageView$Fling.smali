.class Lopenlight/co/camera/view/customviews/TouchImageView$Fling;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

.field final synthetic this$0:Lopenlight/co/camera/view/customviews/TouchImageView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;II)V
    .locals 11

    .line 1201
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    sget-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->FLING:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-static {p1, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    .line 1203
    new-instance v0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2600(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    .line 1204
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1700(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2700(Lopenlight/co/camera/view/customviews/TouchImageView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1206
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2700(Lopenlight/co/camera/view/customviews/TouchImageView;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    .line 1207
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2700(Lopenlight/co/camera/view/customviews/TouchImageView;)[F

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v10, v1

    .line 1210
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1300(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1200(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 1211
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1200(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1300(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    move v6, v1

    move v7, v2

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v6

    .line 1218
    :goto_0
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1600(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1500(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 1219
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1500(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1600(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    move v8, v1

    move v9, v2

    goto :goto_1

    :cond_1
    move v8, v10

    move v9, v8

    .line 1226
    :goto_1
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    move v2, v0

    move v3, v10

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    .line 1228
    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->currX:I

    .line 1229
    iput v10, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->currY:I

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .line 1233
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    sget-object v1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-static {v0, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    .line 1235
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1246
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 1250
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1251
    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    return-void

    .line 1255
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    .line 1257
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->scroller:Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;

    invoke-virtual {v1}, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    .line 1258
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v2

    .line 1259
    iget v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v3

    .line 1260
    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->currX:I

    .line 1261
    iput v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->currY:I

    .line 1262
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1700(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1263
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1800(Lopenlight/co/camera/view/customviews/TouchImageView;)V

    .line 1264
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1700(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1265
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0, p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$500(Lopenlight/co/camera/view/customviews/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
