.class Lopenlight/co/camera/view/depthoffield/DepthOfField$3;
.super Ljava/lang/Object;
.source "DepthOfField.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/depthoffield/DepthOfField;->getTitleOffset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/depthoffield/DepthOfField;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField$3;->this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 321
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField$3;->this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    iget-object p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField$3;->this$0:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    # getter for: Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F
    invoke-static {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->access$200(Lopenlight/co/camera/view/depthoffield/DepthOfField;)F

    move-result p0

    float-to-double v1, p0

    const-wide v3, 0x4012da1cac083127L    # 4.713

    mul-double/2addr v1, v3

    double-to-float p0, v1

    const/high16 v1, 0x432f0000    # 175.0f

    add-float/2addr p0, v1

    # setter for: Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTitleOffset:F
    invoke-static {v0, p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->access$302(Lopenlight/co/camera/view/depthoffield/DepthOfField;F)F

    return-void
.end method
