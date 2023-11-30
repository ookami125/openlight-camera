.class public final synthetic Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$YTyNbsmVGSX1-GF3NipjTJMd3-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/ftu/ImageFtuController;

.field private final synthetic f$1:Lopenlight/co/camera/view/ftu/BaseFtuLayout;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/ftu/ImageFtuController;Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$YTyNbsmVGSX1-GF3NipjTJMd3-Y;->f$0:Lopenlight/co/camera/view/ftu/ImageFtuController;

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$YTyNbsmVGSX1-GF3NipjTJMd3-Y;->f$1:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$YTyNbsmVGSX1-GF3NipjTJMd3-Y;->f$0:Lopenlight/co/camera/view/ftu/ImageFtuController;

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$YTyNbsmVGSX1-GF3NipjTJMd3-Y;->f$1:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    invoke-static {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->lambda$fadeInScreen$1(Lopenlight/co/camera/view/ftu/ImageFtuController;Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V

    return-void
.end method
