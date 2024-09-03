.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_1b

    const-string p0, "android.media.browse.extra.PAGE"

    .line 33
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_19

    const-string p0, "android.media.browse.extra.PAGE_SIZE"

    .line 34
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    if-nez p1, :cond_30

    const-string p1, "android.media.browse.extra.PAGE"

    .line 36
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2e

    const-string p1, "android.media.browse.extra.PAGE_SIZE"

    .line 37
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    :cond_30
    const-string v3, "android.media.browse.extra.PAGE"

    .line 39
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE"

    .line 40
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_4d

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 41
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 42
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p0, p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    :goto_4e
    return v0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_b

    :cond_5
    const-string v1, "android.media.browse.extra.PAGE"

    .line 47
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_b
    if-nez p1, :cond_f

    move v2, v0

    goto :goto_15

    :cond_f
    const-string v2, "android.media.browse.extra.PAGE"

    .line 48
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_15
    if-nez p0, :cond_19

    move p0, v0

    goto :goto_1f

    :cond_19
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 50
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_1f
    if-nez p1, :cond_23

    move p1, v0

    goto :goto_29

    :cond_23
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 52
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_29
    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v0, :cond_37

    if-ne p0, v0, :cond_33

    goto :goto_37

    :cond_33
    mul-int/2addr v1, p0

    add-int/2addr p0, v1

    sub-int/2addr p0, v5

    goto :goto_39

    :cond_37
    :goto_37
    move p0, v3

    move v1, v4

    :goto_39
    if-eq v2, v0, :cond_44

    if-ne p1, v0, :cond_3e

    goto :goto_44

    :cond_3e
    mul-int v0, p1, v2

    add-int/2addr p1, v0

    add-int/lit8 v3, p1, -0x1

    goto :goto_45

    :cond_44
    :goto_44
    move v0, v4

    :goto_45
    if-gt v1, v0, :cond_4a

    if-gt v0, p0, :cond_4a

    return v5

    :cond_4a
    if-gt v1, v3, :cond_4f

    if-gt v3, p0, :cond_4f

    return v5

    :cond_4f
    return v4
.end method
