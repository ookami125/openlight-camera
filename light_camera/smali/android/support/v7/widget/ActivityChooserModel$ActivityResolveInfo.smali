.class public final Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .registers 2

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .registers 2

    .line 898
    iget p1, p1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iget p0, p0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 852
    check-cast p1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 886
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 889
    :cond_13
    check-cast p1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 890
    iget p0, p0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    iget p1, p1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eq p0, p1, :cond_24

    return v1

    :cond_24
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 875
    iget p0, p0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "resolveInfo:"

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; weight:"

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/math/BigDecimal;

    iget p0, p0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v2, p0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 907
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
