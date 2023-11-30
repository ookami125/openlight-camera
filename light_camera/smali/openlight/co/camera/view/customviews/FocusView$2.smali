.class Lopenlight/co/camera/view/customviews/FocusView$2;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/customviews/FocusView;->focusFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/customviews/FocusView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/customviews/FocusView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView$2;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 117
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$2;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$400(Lopenlight/co/camera/view/customviews/FocusView;)V

    .line 118
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView$2;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$300(Lopenlight/co/camera/view/customviews/FocusView;Z)V

    return-void
.end method
