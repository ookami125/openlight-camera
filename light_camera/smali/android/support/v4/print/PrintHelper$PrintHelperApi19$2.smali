.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 9

    .line 463
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$attributes:Landroid/print/PrintAttributes;

    iput p6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fittingMode:I

    iput-object p7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 463
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .registers 10

    .line 467
    :try_start_0
    iget-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return-object v0

    .line 471
    :cond_a
    new-instance p1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {p1, v1, v2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 474
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    .line 475
    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    .line 474
    # invokes: Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->access$100(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 477
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_ea

    if-eqz v2, :cond_2c

    return-object v0

    :cond_2c
    const/4 v2, 0x1

    .line 482
    :try_start_2d
    invoke-virtual {p1, v2}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 485
    iget-object v4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v4, v4, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v4, :cond_45

    .line 486
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto :goto_68

    .line 490
    :cond_45
    new-instance v4, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v5, v5, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v4, v5, v6}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 492
    invoke-virtual {v4, v2}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 493
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 494
    invoke-virtual {v4, v2}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 495
    invoke-virtual {v4}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    move-object v2, v5

    .line 499
    :goto_68
    iget-object v4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    .line 500
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fittingMode:I

    .line 499
    # invokes: Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    invoke-static {v4, v5, v6, v2, v7}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->access$200(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v4

    .line 503
    iget-object v5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v5, v5, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v5, :cond_7f

    goto :goto_8d

    .line 507
    :cond_7f
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 510
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 514
    :goto_8d
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 517
    invoke-virtual {p1, v3}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 519
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2
    :try_end_9d
    .catchall {:try_start_2d .. :try_end_9d} :catchall_d5

    if-eqz v2, :cond_b3

    .line 528
    :try_start_9f
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 530
    iget-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a4} :catch_ea

    if-eqz p1, :cond_ab

    .line 532
    :try_start_a6
    iget-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ab} :catch_ab
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_ab} :catch_ea

    .line 538
    :catch_ab
    :cond_ab
    :try_start_ab
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v1, p0, :cond_b2

    .line 539
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b2} :catch_ea

    :cond_b2
    return-object v0

    .line 524
    :cond_b3
    :try_start_b3
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 525
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 524
    invoke-virtual {p1, v2}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_c1
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_d5

    .line 528
    :try_start_c1
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 530
    iget-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c6} :catch_ea

    if-eqz p1, :cond_cd

    .line 532
    :try_start_c8
    iget-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cd} :catch_cd
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cd} :catch_ea

    .line 538
    :catch_cd
    :cond_cd
    :try_start_cd
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v1, p0, :cond_d4

    .line 539
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d4
    return-object v0

    :catchall_d5
    move-exception v0

    .line 528
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 530
    iget-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_db} :catch_ea

    if-eqz p1, :cond_e2

    .line 532
    :try_start_dd
    iget-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e2} :catch_e2
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e2} :catch_ea

    .line 538
    :catch_e2
    :cond_e2
    :try_start_e2
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v1, p0, :cond_e9

    .line 539
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e9
    throw v0
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_ea} :catch_ea

    :catch_ea
    move-exception p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 463
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .registers 4

    .line 549
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 551
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    goto :goto_2b

    :cond_e
    if-nez p1, :cond_1e

    .line 554
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/print/PageRange;

    const/4 v0, 0x0

    sget-object v1, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_2b

    :cond_1e
    const-string v0, "PrintHelperApi19"

    const-string v1, "Error writing printed content"

    .line 558
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    :goto_2b
    return-void
.end method
