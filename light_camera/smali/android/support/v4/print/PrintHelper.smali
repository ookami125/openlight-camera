.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$PrintHelperApi24;,
        Landroid/support/v4/print/PrintHelper$PrintHelperApi23;,
        Landroid/support/v4/print/PrintHelper$PrintHelperApi20;,
        Landroid/support/v4/print/PrintHelper$PrintHelperApi19;,
        Landroid/support/v4/print/PrintHelper$PrintHelperStub;,
        Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;,
        Landroid/support/v4/print/PrintHelper$Orientation;,
        Landroid/support/v4/print/PrintHelper$ColorMode;,
        Landroid/support/v4/print/PrintHelper$ScaleMode;,
        Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field private final mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_11

    .line 890
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi24;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi24;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_43

    .line 891
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1f

    .line 892
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi23;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi23;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_43

    .line 893
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2d

    .line 894
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi20;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi20;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_43

    .line 895
    :cond_2d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3b

    .line 896
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_43

    .line 899
    :cond_3b
    new-instance p1, Landroid/support/v4/print/PrintHelper$PrintHelperStub;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperStub;-><init>(Landroid/support/v4/print/PrintHelper$1;)V

    iput-object p1, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    :goto_43
    return-void
.end method

.method public static systemSupportsPrint()Z
    .registers 2

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public getColorMode()I
    .registers 1

    .line 947
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getColorMode()I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 968
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getOrientation()I

    move-result p0

    return p0
.end method

.method public getScaleMode()I
    .registers 1

    .line 924
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getScaleMode()I

    move-result p0

    return p0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 979
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 4

    .line 990
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1003
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1018
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    return-void
.end method

.method public setColorMode(I)V
    .registers 2

    .line 936
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setColorMode(I)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 958
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setOrientation(I)V

    return-void
.end method

.method public setScaleMode(I)V
    .registers 2

    .line 913
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setScaleMode(I)V

    return-void
.end method
