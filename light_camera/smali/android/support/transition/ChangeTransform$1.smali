.class final Landroid/support/transition/ChangeTransform$1;
.super Landroid/util/Property;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
        "[F>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 68
    check-cast p1, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeTransform$1;->get(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)[F

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)[F
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public set(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;[F)V
    .registers 3

    .line 76
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setValues([F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 68
    check-cast p1, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeTransform$1;->set(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;[F)V

    return-void
.end method
