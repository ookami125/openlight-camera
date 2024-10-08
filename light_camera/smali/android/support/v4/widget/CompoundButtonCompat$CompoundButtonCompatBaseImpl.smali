.class Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundButtonCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 82
    sget-boolean p0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableFieldFetched:Z

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    .line 84
    :try_start_5
    const-class v0, Landroid/widget/CompoundButton;

    const-string v1, "mButtonDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 85
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v1, "CompoundButtonCompat"

    const-string v2, "Failed to retrieve mButtonDrawable field"

    .line 87
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_1d
    sput-boolean p0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableFieldFetched:Z

    .line 92
    :cond_1f
    sget-object p0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    .line 94
    :try_start_24
    sget-object p0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    const-string p1, "CompoundButtonCompat"

    const-string v1, "Failed to get button drawable via reflection"

    .line 96
    invoke-static {p1, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    sput-object v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    :cond_37
    return-object v0
.end method

.method public getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 62
    instance-of p0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz p0, :cond_b

    .line 63
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p1}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 75
    instance-of p0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz p0, :cond_b

    .line 76
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p1}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 56
    instance-of p0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz p0, :cond_9

    .line 57
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 69
    instance-of p0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz p0, :cond_9

    .line 70
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method
