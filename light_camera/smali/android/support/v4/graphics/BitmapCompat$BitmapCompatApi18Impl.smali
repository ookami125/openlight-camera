.class Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;
.super Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;
.source "BitmapCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapCompatApi18Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 2

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result p0

    return p0
.end method

.method public setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 3

    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    return-void
.end method
