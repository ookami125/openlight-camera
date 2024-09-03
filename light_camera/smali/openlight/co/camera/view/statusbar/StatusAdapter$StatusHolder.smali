.class Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/statusbar/StatusAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field final synthetic this$0:Lopenlight/co/camera/view/statusbar/StatusAdapter;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/statusbar/StatusAdapter;Landroid/view/View;)V
    .registers 3

    .line 217
    iput-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;->this$0:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    .line 218
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09014e

    .line 219
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;->img:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/statusbar/StatusAdapter;Landroid/view/View;Lopenlight/co/camera/view/statusbar/StatusAdapter$1;)V
    .registers 4

    .line 214
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;-><init>(Lopenlight/co/camera/view/statusbar/StatusAdapter;Landroid/view/View;)V

    return-void
.end method
