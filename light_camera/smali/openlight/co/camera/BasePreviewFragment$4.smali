.class Lopenlight/co/camera/BasePreviewFragment$4;
.super Ljava/lang/Object;
.source "BasePreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/BasePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/BasePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/BasePreviewFragment;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$4;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .line 378
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$4;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, v0, Lopenlight/co/camera/BasePreviewFragment;->mSystemUiVisible:Z

    .line 380
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System UI visible status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment$4;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-boolean v1, v1, Lopenlight/co/camera/BasePreviewFragment;->mSystemUiVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$4;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$4;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-boolean p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSystemUiVisible:Z

    invoke-virtual {p1, p0}, Lopenlight/co/camera/BasePreviewFragment;->handleSystemUIChangeListener(Z)V

    return-void
.end method
