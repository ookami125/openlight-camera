.class Landroid/support/transition/GhostViewApi21$Creator;
.super Ljava/lang/Object;
.source "GhostViewApi21.java"

# interfaces
.implements Landroid/support/transition/GhostViewImpl$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/GhostViewApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Creator"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;
    .registers 8

    .line 45
    # invokes: Landroid/support/transition/GhostViewApi21;->fetchAddGhostMethod()V
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$000()V

    .line 46
    # getter for: Landroid/support/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$100()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    .line 48
    :try_start_a
    new-instance p0, Landroid/support/transition/GhostViewApi21;

    .line 49
    # getter for: Landroid/support/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroid/support/transition/GhostViewApi21;-><init>(Landroid/view/View;Landroid/support/transition/GhostViewApi21$1;)V
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_25} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 53
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_31
    :cond_31
    return-object v0
.end method

.method public removeGhost(Landroid/view/View;)V
    .registers 5

    .line 61
    # invokes: Landroid/support/transition/GhostViewApi21;->fetchRemoveGhostMethod()V
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$300()V

    .line 62
    # getter for: Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$400()Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 64
    :try_start_9
    # getter for: Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->access$400()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_17} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_23

    :catch_18
    move-exception p0

    .line 68
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_23
    :cond_23
    :goto_23
    return-void
.end method
