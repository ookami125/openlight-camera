.class Landroid/support/design/widget/BaseTransientBottomBar$5$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar$5;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/BaseTransientBottomBar$5;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar$5;)V
    .registers 2

    .line 459
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$5$1;->this$1:Landroid/support/design/widget/BaseTransientBottomBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 462
    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar$5$1;->this$1:Landroid/support/design/widget/BaseTransientBottomBar$5;

    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method
