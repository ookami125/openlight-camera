.class Lopenlight/co/camera/view/customviews/FocusView$3;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/customviews/FocusView;->getTimeOutRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/customviews/FocusView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/customviews/FocusView;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView$3;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 159
    # getter for: Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/customviews/FocusView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView$3;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/FocusView;->focusFailed()V

    return-void
.end method
