.class Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$7;
.super Ljava/lang/Object;
.source "ImagePrimaryControl.java"

# interfaces
.implements Lopenlight/co/camera/testintent/TestIntentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 1676
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$7;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 1689
    const-class p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFocusROI(II)V
    .locals 0

    return-void
.end method

.method public updateUiAfterTest()V
    .locals 0

    .line 1679
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$7;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$2600(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    return-void
.end method
