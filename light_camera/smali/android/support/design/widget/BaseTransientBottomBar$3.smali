.class Landroid/support/design/widget/BaseTransientBottomBar$3;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/SnackbarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2

    .line 391
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$3;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .registers 6

    .line 399
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar$3;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public show()V
    .registers 4

    .line 394
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar$3;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
