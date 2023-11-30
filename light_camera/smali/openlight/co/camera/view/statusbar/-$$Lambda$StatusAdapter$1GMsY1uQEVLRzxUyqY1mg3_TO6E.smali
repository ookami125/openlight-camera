.class public final synthetic Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusAdapter$1GMsY1uQEVLRzxUyqY1mg3_TO6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/statusbar/StatusAdapter;

.field private final synthetic f$1:Lopenlight/co/camera/view/statusbar/StatusModel;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/statusbar/StatusAdapter;Lopenlight/co/camera/view/statusbar/StatusModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusAdapter$1GMsY1uQEVLRzxUyqY1mg3_TO6E;->f$0:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    iput-object p2, p0, Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusAdapter$1GMsY1uQEVLRzxUyqY1mg3_TO6E;->f$1:Lopenlight/co/camera/view/statusbar/StatusModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusAdapter$1GMsY1uQEVLRzxUyqY1mg3_TO6E;->f$0:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusAdapter$1GMsY1uQEVLRzxUyqY1mg3_TO6E;->f$1:Lopenlight/co/camera/view/statusbar/StatusModel;

    invoke-static {v0, p0, p1}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->lambda$onBindViewHolder$0(Lopenlight/co/camera/view/statusbar/StatusAdapter;Lopenlight/co/camera/view/statusbar/StatusModel;Landroid/view/View;)V

    return-void
.end method
