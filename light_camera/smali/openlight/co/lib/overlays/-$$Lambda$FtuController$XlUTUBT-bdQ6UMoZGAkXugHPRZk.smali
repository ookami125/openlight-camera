.class public final synthetic Lopenlight/co/lib/overlays/-$$Lambda$FtuController$XlUTUBT-bdQ6UMoZGAkXugHPRZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/lib/overlays/FtuController;

.field private final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/lib/overlays/FtuController;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/lib/overlays/-$$Lambda$FtuController$XlUTUBT-bdQ6UMoZGAkXugHPRZk;->f$0:Lopenlight/co/lib/overlays/FtuController;

    iput-object p2, p0, Lopenlight/co/lib/overlays/-$$Lambda$FtuController$XlUTUBT-bdQ6UMoZGAkXugHPRZk;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lopenlight/co/lib/overlays/-$$Lambda$FtuController$XlUTUBT-bdQ6UMoZGAkXugHPRZk;->f$0:Lopenlight/co/lib/overlays/FtuController;

    iget-object p0, p0, Lopenlight/co/lib/overlays/-$$Lambda$FtuController$XlUTUBT-bdQ6UMoZGAkXugHPRZk;->f$1:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lopenlight/co/lib/overlays/FtuController;->lambda$show$0(Lopenlight/co/lib/overlays/FtuController;Landroid/view/ViewGroup;)V

    return-void
.end method
