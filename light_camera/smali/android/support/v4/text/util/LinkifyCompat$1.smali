.class final Landroid/support/v4/text/util/LinkifyCompat$1;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/util/LinkifyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;)I
    .registers 6

    .line 60
    iget p0, p1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v0, p2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    const/4 v1, -0x1

    if-ge p0, v0, :cond_8

    return v1

    .line 64
    :cond_8
    iget p0, p1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v0, p2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    const/4 v2, 0x1

    if-le p0, v0, :cond_10

    return v2

    .line 68
    :cond_10
    iget p0, p1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v0, p2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    if-ge p0, v0, :cond_17

    return v2

    .line 72
    :cond_17
    iget p0, p1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget p1, p2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    if-le p0, p1, :cond_1e

    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 57
    check-cast p1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    check-cast p2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/text/util/LinkifyCompat$1;->compare(Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;)I

    move-result p0

    return p0
.end method
