.class Landroid/support/transition/ViewGroupUtilsApi14;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi14.java"

# interfaces
.implements Landroid/support/transition/ViewGroupUtilsImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# static fields
.field private static final LAYOUT_TRANSITION_CHANGING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ViewGroupUtilsApi14"

.field private static sCancelMethod:Ljava/lang/reflect/Method;

.field private static sCancelMethodFetched:Z

.field private static sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

.field private static sLayoutSuppressedField:Ljava/lang/reflect/Field;

.field private static sLayoutSuppressedFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cancelLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 6

    .line 116
    sget-boolean v0, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 118
    :try_start_6
    const-class v2, Landroid/animation/LayoutTransition;

    const-string v3, "cancel"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    .line 119
    sget-object v2, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    const-string v2, "ViewGroupUtilsApi14"

    const-string v3, "Failed to access cancel method by reflection"

    .line 121
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_1f
    sput-boolean v0, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    .line 125
    :cond_21
    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3c

    .line 127
    :try_start_25
    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2c} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_3c

    :catch_2d
    const-string p0, "ViewGroupUtilsApi14"

    const-string v0, "Failed to invoke cancel method by reflection"

    .line 131
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :catch_35
    const-string p0, "ViewGroupUtilsApi14"

    const-string v0, "Failed to access cancel method by reflection"

    .line 129
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;
    .registers 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-static {p1}, Landroid/support/transition/ViewGroupOverlayApi14;->createFrom(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayApi14;

    move-result-object p0

    return-object p0
.end method

.method public suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2a

    .line 53
    new-instance v0, Landroid/support/transition/ViewGroupUtilsApi14$1;

    invoke-direct {v0, p0}, Landroid/support/transition/ViewGroupUtilsApi14$1;-><init>(Landroid/support/transition/ViewGroupUtilsApi14;)V

    sput-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    .line 59
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 60
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 61
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 62
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 63
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    :cond_2a
    if-eqz p2, :cond_4a

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 69
    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 70
    invoke-static {p0}, Landroid/support/transition/ViewGroupUtilsApi14;->cancelLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 72
    :cond_3b
    sget-object p2, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-eq p0, p2, :cond_44

    .line 73
    sget p2, Landroid/support/transition/R$id;->transition_layout_save:I

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 77
    :cond_44
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_9e

    .line 80
    :cond_4a
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 82
    sget-boolean p0, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    if-nez p0, :cond_6a

    .line 84
    :try_start_51
    const-class p0, Landroid/view/ViewGroup;

    const-string p2, "mLayoutSuppressed"

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    .line 85
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_60
    .catch Ljava/lang/NoSuchFieldException; {:try_start_51 .. :try_end_60} :catch_61

    goto :goto_68

    :catch_61
    const-string p0, "ViewGroupUtilsApi14"

    const-string p2, "Failed to access mLayoutSuppressed field by reflection"

    .line 87
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_68
    sput-boolean v1, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    .line 92
    :cond_6a
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_87

    .line 94
    :try_start_6e
    sget-object p0, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_6e .. :try_end_74} :catch_80

    if-eqz p0, :cond_7e

    .line 96
    :try_start_76
    sget-object p2, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_7b
    .catch Ljava/lang/IllegalAccessException; {:try_start_76 .. :try_end_7b} :catch_7c

    goto :goto_7e

    :catch_7c
    move v2, p0

    goto :goto_80

    :cond_7e
    :goto_7e
    move v2, p0

    goto :goto_87

    :catch_80
    :goto_80
    const-string p0, "ViewGroupUtilsApi14"

    const-string p2, "Failed to get mLayoutSuppressed field by reflection"

    .line 99
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    if-eqz v2, :cond_8c

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 106
    :cond_8c
    sget p0, Landroid/support/transition/R$id;->transition_layout_save:I

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/LayoutTransition;

    if-eqz p0, :cond_9e

    .line 109
    sget p2, Landroid/support/transition/R$id;->transition_layout_save:I

    invoke-virtual {p1, p2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_9e
    :goto_9e
    return-void
.end method
