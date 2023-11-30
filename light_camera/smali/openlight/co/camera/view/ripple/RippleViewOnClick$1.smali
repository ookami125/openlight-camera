.class Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;
.super Ljava/lang/Object;
.source "RippleViewOnClick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ripple/RippleViewOnClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/ripple/RippleViewOnClick;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/ripple/RippleViewOnClick;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;->this$0:Lopenlight/co/camera/view/ripple/RippleViewOnClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 61
    iget-object p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;->this$0:Lopenlight/co/camera/view/ripple/RippleViewOnClick;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->invalidate()V

    return-void
.end method
