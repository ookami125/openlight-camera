.class Lopenlight/co/camera/CameraActivity$1;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/CameraActivity;


# direct methods
.method constructor <init>(Lopenlight/co/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lopenlight/co/camera/CameraActivity$1;->this$0:Lopenlight/co/camera/CameraActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0

    .line 59
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->update(I)V

    return-void
.end method
