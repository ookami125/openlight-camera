.class Lopenlight/co/camera/CameraInfo$CompareSizesByArea;
.super Ljava/lang/Object;
.source "CameraInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/CameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareSizesByArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/CameraInfo$1;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lopenlight/co/camera/CameraInfo$CompareSizesByArea;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4

    .line 392
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    .line 393
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-long v2, p2

    mul-long/2addr p0, v2

    .line 392
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 389
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/CameraInfo$CompareSizesByArea;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method
