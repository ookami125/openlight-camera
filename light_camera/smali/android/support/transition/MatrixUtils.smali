.class Landroid/support/transition/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# static fields
.field static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Landroid/support/transition/MatrixUtils$1;

    invoke-direct {v0}, Landroid/support/transition/MatrixUtils$1;-><init>()V

    sput-object v0, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
