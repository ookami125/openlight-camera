.class Lopenlight/co/camera/view/grid/GridView$1;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/grid/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/grid/GridView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/grid/GridView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 116
    iget-object v0, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-static {v0}, Lopenlight/co/camera/view/grid/GridView;->access$000(Lopenlight/co/camera/view/grid/GridView;)Lopenlight/co/camera/view/grid/GridViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/grid/GridViewModel;->getPreviewWidth()I

    move-result v0

    .line 117
    iget-object v1, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-static {v1}, Lopenlight/co/camera/view/grid/GridView;->access$000(Lopenlight/co/camera/view/grid/GridView;)Lopenlight/co/camera/view/grid/GridViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/view/grid/GridViewModel;->getPreviewHeight()I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    mul-int/lit8 v3, v0, 0x3

    if-ne v2, v3, :cond_0

    .line 119
    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    const/16 v3, 0xf0

    invoke-static {v2, v3}, Lopenlight/co/camera/view/grid/GridView;->access$102(Lopenlight/co/camera/view/grid/GridView;I)I

    .line 120
    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-static {v2, v0}, Lopenlight/co/camera/view/grid/GridView;->access$202(Lopenlight/co/camera/view/grid/GridView;I)I

    .line 121
    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-static {v2, v1}, Lopenlight/co/camera/view/grid/GridView;->access$302(Lopenlight/co/camera/view/grid/GridView;I)I

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v1, 0x10

    mul-int/lit8 v3, v0, 0x9

    if-ne v2, v3, :cond_1

    .line 123
    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lopenlight/co/camera/view/grid/GridView;->access$102(Lopenlight/co/camera/view/grid/GridView;I)I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 125
    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    const/16 v3, 0x1a4

    invoke-static {v2, v3}, Lopenlight/co/camera/view/grid/GridView;->access$102(Lopenlight/co/camera/view/grid/GridView;I)I

    .line 127
    :cond_2
    :goto_0
    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-static {v2}, Lopenlight/co/camera/view/grid/GridView;->access$400(Lopenlight/co/camera/view/grid/GridView;)I

    move-result v2

    if-eq v2, v0, :cond_3

    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-static {v2}, Lopenlight/co/camera/view/grid/GridView;->access$500(Lopenlight/co/camera/view/grid/GridView;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 128
    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-virtual {v2}, Lopenlight/co/camera/view/grid/GridView;->invalidate()V

    .line 130
    :cond_3
    iget-object v2, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-static {v2, v0}, Lopenlight/co/camera/view/grid/GridView;->access$402(Lopenlight/co/camera/view/grid/GridView;I)I

    .line 131
    iget-object p0, p0, Lopenlight/co/camera/view/grid/GridView$1;->this$0:Lopenlight/co/camera/view/grid/GridView;

    invoke-static {p0, v1}, Lopenlight/co/camera/view/grid/GridView;->access$502(Lopenlight/co/camera/view/grid/GridView;I)I

    return-void
.end method
