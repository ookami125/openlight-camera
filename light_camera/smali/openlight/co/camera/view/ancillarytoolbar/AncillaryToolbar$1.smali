.class Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$1;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "AncillaryToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;Landroid/content/Context;IZ)V
    .registers 5

    .line 223
    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$1;->this$0:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 2

    .line 226
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 229
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$1;->this$0:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;

    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    .line 229
    # invokes: Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->updateListRotation(I)V
    invoke-static {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->access$000(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;I)V

    return-void
.end method
