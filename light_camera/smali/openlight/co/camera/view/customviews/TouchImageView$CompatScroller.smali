.class Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatScroller"
.end annotation


# instance fields
.field isPreGingerbread:Z

.field overScroller:Landroid/widget/OverScroller;

.field scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lopenlight/co/camera/view/customviews/TouchImageView;


# direct methods
.method public constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;Landroid/content/Context;)V
    .registers 4

    .line 1276
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-ge p1, v0, :cond_16

    const/4 p1, 0x1

    .line 1278
    iput-boolean p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 1279
    new-instance p1, Landroid/widget/Scroller;

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    goto :goto_20

    :cond_16
    const/4 p1, 0x0

    .line 1282
    iput-boolean p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 1283
    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    :goto_20
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .registers 2

    .line 1312
    iget-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_b

    .line 1313
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p0

    return p0

    .line 1315
    :cond_b
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1316
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result p0

    return p0
.end method

.method public fling(IIIIIIII)V
    .registers 21

    move-object v0, p0

    .line 1288
    iget-boolean v1, v0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v1, :cond_18

    .line 1289
    iget-object v2, v0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_2a

    .line 1291
    :cond_18
    iget-object v3, v0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    :goto_2a
    return-void
.end method

.method public forceFinished(Z)V
    .registers 3

    .line 1296
    iget-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_a

    .line 1297
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_f

    .line 1299
    :cond_a
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :goto_f
    return-void
.end method

.method public getCurrX()I
    .registers 2

    .line 1321
    iget-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_b

    .line 1322
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrX()I

    move-result p0

    return p0

    .line 1324
    :cond_b
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result p0

    return p0
.end method

.method public getCurrY()I
    .registers 2

    .line 1329
    iget-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_b

    .line 1330
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrY()I

    move-result p0

    return p0

    .line 1332
    :cond_b
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result p0

    return p0
.end method

.method public isFinished()Z
    .registers 2

    .line 1304
    iget-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_b

    .line 1305
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->isFinished()Z

    move-result p0

    return p0

    .line 1307
    :cond_b
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p0

    return p0
.end method
