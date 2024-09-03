.class public final synthetic Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/view/ftu/ImageFtuController;

.field private final synthetic f$1:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

.field private final synthetic f$2:Lopenlight/co/camera/view/ftu/BaseFtuLayout;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/view/ftu/ImageFtuController;Lopenlight/co/camera/view/ftu/BaseFtuLayout;Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;->f$0:Lopenlight/co/camera/view/ftu/ImageFtuController;

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;->f$1:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    iput-object p3, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;->f$2:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;->f$0:Lopenlight/co/camera/view/ftu/ImageFtuController;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;->f$1:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;->f$2:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    invoke-static {v0, v1, p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->lambda$showScreen$0(Lopenlight/co/camera/view/ftu/ImageFtuController;Lopenlight/co/camera/view/ftu/BaseFtuLayout;Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V

    return-void
.end method
