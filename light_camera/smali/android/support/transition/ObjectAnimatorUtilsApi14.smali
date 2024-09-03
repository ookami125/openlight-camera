.class Landroid/support/transition/ObjectAnimatorUtilsApi14;
.super Ljava/lang/Object;
.source "ObjectAnimatorUtilsApi14.java"

# interfaces
.implements Landroid/support/transition/ObjectAnimatorUtilsImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 30
    new-instance p0, Landroid/support/transition/PathProperty;

    invoke-direct {p0, p2, p3}, Landroid/support/transition/PathProperty;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_10

    invoke-static {p1, p0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    :array_10
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
