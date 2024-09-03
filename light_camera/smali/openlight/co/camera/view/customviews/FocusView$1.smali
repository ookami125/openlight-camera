.class Lopenlight/co/camera/view/customviews/FocusView$1;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/customviews/FocusView;->focusArchived()V
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

    .line 94
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView$1;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lopenlight/co/camera/view/customviews/FocusView$1$1;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/customviews/FocusView$1$1;-><init>(Lopenlight/co/camera/view/customviews/FocusView$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
