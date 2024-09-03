.class public final synthetic Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$rEDgJVtKet-z2f1FiKvkKbHLXXA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$rEDgJVtKet-z2f1FiKvkKbHLXXA;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$rEDgJVtKet-z2f1FiKvkKbHLXXA;->f$0:Landroid/view/View;

    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->lambda$translateDown$0(Landroid/view/View;)V

    return-void
.end method
