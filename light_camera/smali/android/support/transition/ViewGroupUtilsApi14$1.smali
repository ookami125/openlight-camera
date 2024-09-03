.class Landroid/support/transition/ViewGroupUtilsApi14$1;
.super Landroid/animation/LayoutTransition;
.source "ViewGroupUtilsApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ViewGroupUtilsApi14;->suppressLayout(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/ViewGroupUtilsApi14;


# direct methods
.method constructor <init>(Landroid/support/transition/ViewGroupUtilsApi14;)V
    .registers 2

    .line 53
    iput-object p1, p0, Landroid/support/transition/ViewGroupUtilsApi14$1;->this$0:Landroid/support/transition/ViewGroupUtilsApi14;

    invoke-direct {p0}, Landroid/animation/LayoutTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public isChangingLayout()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
