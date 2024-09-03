.class Lopenlight/co/camera/view/setting/scroll/FastScroller$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/setting/scroll/FastScroller;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/setting/scroll/FastScroller;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$2;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 4

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 132
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$2;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;
    invoke-static {p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$200(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_14

    .line 133
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$2;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->show()V

    :cond_14
    return-void
.end method
