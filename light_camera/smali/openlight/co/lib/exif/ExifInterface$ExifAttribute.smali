.class Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lib/exif/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    .line 557
    iput p2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 558
    iput-object p3, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLopenlight/co/lib/exif/ExifInterface$1;)V
    .locals 0

    .line 550
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$700(Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 0

    .line 550
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createByte(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 5

    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

    .line 606
    new-array v2, v1, [B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v2, v0

    .line 607
    new-instance p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length v0, v2

    invoke-direct {p0, v1, v0, v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p0

    .line 609
    :cond_0
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 610
    new-instance v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 659
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 5

    .line 650
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$000()[I

    move-result-object v0

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 649
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 651
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 652
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    .line 653
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    :cond_0
    new-instance p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 600
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 4

    .line 591
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$000()[I

    move-result-object v0

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 590
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 592
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 593
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    .line 594
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 596
    :cond_0
    new-instance p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSRational(Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 645
    new-array v0, v0, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createSRational([Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSRational([Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 6

    .line 635
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$000()[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 634
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 636
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 637
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 638
    iget-wide v4, v3, Lopenlight/co/lib/exif/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 639
    iget-wide v3, v3, Lopenlight/co/lib/exif/ExifInterface$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 641
    :cond_0
    new-instance p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createString(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 3

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 615
    new-instance v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 586
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 5

    .line 577
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$000()[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 576
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 578
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 579
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v3, v3

    .line 580
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    :cond_0
    new-instance p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createURational(Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 630
    new-array v0, v0, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createURational([Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createURational([Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 6

    .line 620
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$000()[I

    move-result-object v0

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 619
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 622
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 623
    iget-wide v4, v3, Lopenlight/co/lib/exif/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 624
    iget-wide v3, v3, Lopenlight/co/lib/exif/ExifInterface$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    :cond_0
    new-instance p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 572
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .locals 4

    .line 563
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$000()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 562
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 564
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 565
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-short v3, v3

    .line 566
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    :cond_0
    new-instance p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    .line 669
    :try_start_0
    new-instance v1, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, v2}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 671
    invoke-virtual {v1, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 672
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 766
    :pswitch_0
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 767
    :goto_0
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_0

    .line 768
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 759
    :pswitch_1
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 760
    :goto_1
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_1

    .line 761
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v2

    float-to-double v4, v2

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 750
    :pswitch_2
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    .line 751
    :goto_2
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_2

    .line 752
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v5, v2

    .line 753
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v7, v2

    .line 754
    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$Rational;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lopenlight/co/lib/exif/ExifInterface$Rational;-><init>(JJLopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object p1

    .line 743
    :pswitch_3
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 744
    :goto_3
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_3

    .line 745
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-object p1

    .line 736
    :pswitch_4
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 737
    :goto_4
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_4

    .line 738
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-object p1

    .line 727
    :pswitch_5
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    .line 728
    :goto_5
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_5

    .line 729
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v5

    .line 730
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v7

    .line 731
    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$Rational;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lopenlight/co/lib/exif/ExifInterface$Rational;-><init>(JJLopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    return-object p1

    .line 720
    :pswitch_6
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [J

    .line 721
    :goto_6
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_6

    .line 722
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    return-object p1

    .line 713
    :pswitch_7
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 714
    :goto_7
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_7

    .line 715
    invoke-virtual {v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    return-object p1

    .line 684
    :pswitch_8
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$300()[B

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_a

    move p1, v3

    .line 686
    :goto_8
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$300()[B

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_9

    .line 687
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v1, v1, p1

    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$300()[B

    move-result-object v4

    aget-byte v4, v4, p1

    if-eq v1, v4, :cond_8

    move v2, v3

    goto :goto_9

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    .line 693
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$300()[B

    move-result-object p1

    array-length v3, p1

    .line 697
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    :goto_a
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v1, :cond_d

    .line 699
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v1, v1, v3

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    const/16 v2, 0x20

    if-lt v1, v2, :cond_c

    int-to-char v1, v1

    .line 704
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_c
    const/16 v1, 0x3f

    .line 706
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 710
    :cond_d
    :goto_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 676
    :pswitch_9
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    array-length p1, p1

    if-ne p1, v2, :cond_e

    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte p1, p1, v3

    if-ltz p1, :cond_e

    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte p1, p1, v3

    if-gt p1, v2, :cond_e

    .line 677
    new-instance p1, Ljava/lang/String;

    new-array v1, v2, [C

    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte p0, p0, v3

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    aput-char p0, v1, v3

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 679
    :cond_e
    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "ExifInterface"

    const-string v1, "IOException occurred during reading a value"

    .line 776
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 2

    .line 782
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 786
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 787
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 789
    :cond_0
    instance-of p1, p0, [J

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 790
    check-cast p0, [J

    .line 791
    array-length p1, p0

    if-ne p1, v1, :cond_1

    .line 792
    aget-wide v0, p0, v0

    long-to-double p0, v0

    return-wide p0

    .line 794
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "There are more than one component"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 796
    :cond_2
    instance-of p1, p0, [I

    if-eqz p1, :cond_4

    .line 797
    check-cast p0, [I

    .line 798
    array-length p1, p0

    if-ne p1, v1, :cond_3

    .line 799
    aget p0, p0, v0

    int-to-double p0, p0

    return-wide p0

    .line 801
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "There are more than one component"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 803
    :cond_4
    instance-of p1, p0, [D

    if-eqz p1, :cond_6

    .line 804
    check-cast p0, [D

    .line 805
    array-length p1, p0

    if-ne p1, v1, :cond_5

    .line 806
    aget-wide v0, p0, v0

    return-wide v0

    .line 808
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "There are more than one component"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 810
    :cond_6
    instance-of p1, p0, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    if-eqz p1, :cond_8

    .line 811
    check-cast p0, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    .line 812
    array-length p1, p0

    if-ne p1, v1, :cond_7

    .line 813
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lopenlight/co/lib/exif/ExifInterface$Rational;->calculate()D

    move-result-wide p0

    return-wide p0

    .line 815
    :cond_7
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "There are more than one component"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 817
    :cond_8
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Couldn\'t find a double value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 784
    :cond_9
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "NULL can\'t be converted to a double value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 2

    .line 821
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 825
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 826
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 828
    :cond_0
    instance-of p1, p0, [J

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 829
    check-cast p0, [J

    .line 830
    array-length p1, p0

    if-ne p1, v1, :cond_1

    .line 831
    aget-wide v0, p0, v0

    long-to-int p0, v0

    return p0

    .line 833
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "There are more than one component"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 835
    :cond_2
    instance-of p1, p0, [I

    if-eqz p1, :cond_4

    .line 836
    check-cast p0, [I

    .line 837
    array-length p1, p0

    if-ne p1, v1, :cond_3

    .line 838
    aget p0, p0, v0

    return p0

    .line 840
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "There are more than one component"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 842
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Couldn\'t find a integer value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 823
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "NULL can\'t be converted to a integer value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 5

    .line 846
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 850
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 851
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 854
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    instance-of v1, p0, [J

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 856
    check-cast p0, [J

    .line 857
    :cond_2
    :goto_0
    array-length p1, p0

    if-ge v2, p1, :cond_3

    .line 858
    aget-wide v3, p0, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 859
    array-length p1, p0

    if-eq v2, p1, :cond_2

    const-string p1, ","

    .line 860
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 863
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 865
    :cond_4
    instance-of v1, p0, [I

    if-eqz v1, :cond_7

    .line 866
    check-cast p0, [I

    .line 867
    :cond_5
    :goto_1
    array-length p1, p0

    if-ge v2, p1, :cond_6

    .line 868
    aget p1, p0, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 869
    array-length p1, p0

    if-eq v2, p1, :cond_5

    const-string p1, ","

    .line 870
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 873
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 875
    :cond_7
    instance-of v1, p0, [D

    if-eqz v1, :cond_a

    .line 876
    check-cast p0, [D

    .line 877
    :cond_8
    :goto_2
    array-length p1, p0

    if-ge v2, p1, :cond_9

    .line 878
    aget-wide v3, p0, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 879
    array-length p1, p0

    if-eq v2, p1, :cond_8

    const-string p1, ","

    .line 880
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 883
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 885
    :cond_a
    instance-of v1, p0, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    if-eqz v1, :cond_d

    .line 886
    check-cast p0, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    .line 887
    :cond_b
    :goto_3
    array-length p1, p0

    if-ge v2, p1, :cond_c

    .line 888
    aget-object p1, p0, v2

    iget-wide v3, p1, Lopenlight/co/lib/exif/ExifInterface$Rational;->numerator:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    .line 889
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    aget-object p1, p0, v2

    iget-wide v3, p1, Lopenlight/co/lib/exif/ExifInterface$Rational;->denominator:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 891
    array-length p1, p0

    if-eq v2, p1, :cond_b

    const-string p1, ","

    .line 892
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 895
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object p1
.end method

.method public size()I
    .locals 2

    .line 901
    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$000()[I

    move-result-object v0

    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget p0, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lopenlight/co/lib/exif/ExifInterface;->access$200()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
