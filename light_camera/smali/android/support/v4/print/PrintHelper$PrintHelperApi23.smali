.class Landroid/support/v4/print/PrintHelper$PrintHelperApi23;
.super Landroid/support/v4/print/PrintHelper$PrintHelperApi20;
.source "PrintHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperApi23"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 864
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi20;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 866
    iput-boolean p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi23;->mIsMinMarginsHandlingCorrect:Z

    return-void
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 3

    .line 854
    invoke-super {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi20;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object p0

    .line 856
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v0

    if-eqz v0, :cond_11

    .line 857
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    :cond_11
    return-object p0
.end method
