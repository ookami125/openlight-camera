.class final Landroid/support/v4/print/PrintHelper$PrintHelperStub;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperStub"
.end annotation


# instance fields
.field mColorMode:I

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 149
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mScaleMode:I

    .line 150
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mColorMode:I

    const/4 v0, 0x1

    .line 151
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/print/PrintHelper$1;)V
    .registers 2

    .line 148
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorMode()I
    .registers 1

    .line 167
    iget p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mColorMode:I

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 183
    iget p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mOrientation:I

    return p0
.end method

.method public getScaleMode()I
    .registers 1

    .line 161
    iget p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mScaleMode:I

    return p0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 4

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 4

    return-void
.end method

.method public setColorMode(I)V
    .registers 2

    .line 172
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mColorMode:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 177
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mOrientation:I

    return-void
.end method

.method public setScaleMode(I)V
    .registers 2

    .line 155
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStub;->mScaleMode:I

    return-void
.end method
