.class Landroid/support/transition/GhostViewApi21;
.super Ljava/lang/Object;
.source "GhostViewApi21.java"

# interfaces
.implements Landroid/support/transition/GhostViewImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/GhostViewApi21$Creator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GhostViewApi21"

.field private static sAddGhostMethod:Ljava/lang/reflect/Method;

.field private static sAddGhostMethodFetched:Z

.field private static sGhostViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sGhostViewClassFetched:Z

.field private static sRemoveGhostMethod:Ljava/lang/reflect/Method;

.field private static sRemoveGhostMethodFetched:Z


# instance fields
.field private final mGhostView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/support/transition/GhostViewApi21;->mGhostView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/support/transition/GhostViewApi21$1;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Landroid/support/transition/GhostViewApi21;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 30
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->fetchAddGhostMethod()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    .line 30
    sget-object v0, Landroid/support/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 30
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->fetchRemoveGhostMethod()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .registers 1

    .line 30
    sget-object v0, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static fetchAddGhostMethod()V
    .registers 6

    .line 104
    sget-boolean v0, Landroid/support/transition/GhostViewApi21;->sAddGhostMethodFetched:Z

    if-nez v0, :cond_33

    const/4 v0, 0x1

    .line 106
    :try_start_5
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->fetchGhostViewClass()V

    .line 107
    sget-object v1, Landroid/support/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;

    const-string v2, "addGhost"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    .line 109
    sget-object v1, Landroid/support/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception v1

    const-string v2, "GhostViewApi21"

    const-string v3, "Failed to retrieve addGhost method"

    .line 111
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_31
    sput-boolean v0, Landroid/support/transition/GhostViewApi21;->sAddGhostMethodFetched:Z

    :cond_33
    return-void
.end method

.method private static fetchGhostViewClass()V
    .registers 3

    .line 93
    sget-boolean v0, Landroid/support/transition/GhostViewApi21;->sGhostViewClassFetched:Z

    if-nez v0, :cond_18

    :try_start_4
    const-string v0, "android.view.GhostView"

    .line 95
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    const-string v1, "GhostViewApi21"

    const-string v2, "Failed to retrieve GhostView class"

    .line 97
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    const/4 v0, 0x1

    .line 99
    sput-boolean v0, Landroid/support/transition/GhostViewApi21;->sGhostViewClassFetched:Z

    :cond_18
    return-void
.end method

.method private static fetchRemoveGhostMethod()V
    .registers 6

    .line 118
    sget-boolean v0, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethodFetched:Z

    if-nez v0, :cond_29

    const/4 v0, 0x1

    .line 120
    :try_start_5
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->fetchGhostViewClass()V

    .line 121
    sget-object v1, Landroid/support/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;

    const-string v2, "removeGhost"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    .line 122
    sget-object v1, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception v1

    const-string v2, "GhostViewApi21"

    const-string v3, "Failed to retrieve removeGhost method"

    .line 124
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_27
    sput-boolean v0, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethodFetched:Z

    :cond_29
    return-void
.end method


# virtual methods
.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 84
    iget-object p0, p0, Landroid/support/transition/GhostViewApi21;->mGhostView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
