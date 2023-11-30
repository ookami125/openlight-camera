.class Lopenlight/co/camera/view/depthoffield/DepthOfField$1;
.super Ljava/lang/Object;
.source "DepthOfField.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/depthoffield/DepthOfField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/depthoffield/DepthOfField;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField$1;->this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 107
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField$1;->this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-static {v0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->access$000(Lopenlight/co/camera/view/depthoffield/DepthOfField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField$1;->this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-virtual {v0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->invalidate()V

    .line 109
    iget-object p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField$1;->this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->access$002(Lopenlight/co/camera/view/depthoffield/DepthOfField;Z)Z

    :cond_0
    return-void
.end method
