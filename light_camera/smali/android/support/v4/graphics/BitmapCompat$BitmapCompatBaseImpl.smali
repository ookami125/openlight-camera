.class Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method

.method public hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 3

    return-void
.end method
