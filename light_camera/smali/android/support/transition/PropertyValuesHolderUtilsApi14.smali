.class Landroid/support/transition/PropertyValuesHolderUtilsApi14;
.super Ljava/lang/Object;
.source "PropertyValuesHolderUtilsApi14.java"

# interfaces
.implements Landroid/support/transition/PropertyValuesHolderUtilsImpl;


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
.method public ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 30
    new-instance p0, Landroid/support/transition/PathProperty;

    invoke-direct {p0, p1, p2}, Landroid/support/transition/PathProperty;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_10

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    :array_10
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
