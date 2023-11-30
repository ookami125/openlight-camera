.class Lopenlight/co/camera/view/ftu/FtuHelper$2;
.super Ljava/lang/Object;
.source "FtuHelper.java"

# interfaces
.implements Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/ftu/FtuHelper;->showQualityFtu(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/ftu/FtuHelper;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper$2;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aboutToShowScreen(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public done()V
    .locals 0

    .line 217
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$2;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$800(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    return-void
.end method
