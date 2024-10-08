.class Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowCompatBaseImpl"
.end annotation


# static fields
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 6

    .line 84
    sget-boolean p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    const/4 v0, 0x0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    .line 86
    :try_start_6
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "getWindowLayoutType"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 88
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_17

    .line 92
    :catch_17
    sput-boolean p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 95
    :cond_19
    sget-object p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2c

    .line 97
    :try_start_1d
    sget-object p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_2c

    return p0

    :catch_2c
    :cond_2c
    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3

    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 8

    .line 63
    sget-boolean p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1d

    .line 65
    :try_start_6
    const-class p0, Landroid/widget/PopupWindow;

    const-string v2, "setWindowLayoutType"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 67
    sget-object p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1b

    .line 71
    :catch_1b
    sput-boolean v1, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 74
    :cond_1d
    sget-object p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2e

    .line 76
    :try_start_21
    sget-object p0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    return-void
.end method

.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 6

    .line 45
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    .line 44
    invoke-static {p5, p0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p0

    and-int/lit8 p0, p0, 0x7

    const/4 p5, 0x5

    if-ne p0, p5, :cond_17

    .line 49
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p5

    sub-int/2addr p0, p5

    sub-int/2addr p3, p0

    .line 51
    :cond_17
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
