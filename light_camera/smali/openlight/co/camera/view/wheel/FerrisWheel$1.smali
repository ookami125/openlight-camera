.class Lopenlight/co/camera/view/wheel/FerrisWheel$1;
.super Ljava/lang/Object;
.source "FerrisWheel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/wheel/FerrisWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/wheel/FerrisWheel;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/wheel/FerrisWheel;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel$1;->this$0:Lopenlight/co/camera/view/wheel/FerrisWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 176
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel$1;->this$0:Lopenlight/co/camera/view/wheel/FerrisWheel;

    iget-object p0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel$1;->this$0:Lopenlight/co/camera/view/wheel/FerrisWheel;

    # getter for: Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;
    invoke-static {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->access$100(Lopenlight/co/camera/view/wheel/FerrisWheel;)Lopenlight/co/camera/view/dragger/DraggerModel;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;->indexOfSelectedItem()I

    move-result p0

    # setter for: Lopenlight/co/camera/view/wheel/FerrisWheel;->mPrevIndex:I
    invoke-static {v0, p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->access$002(Lopenlight/co/camera/view/wheel/FerrisWheel;I)I

    return-void
.end method
