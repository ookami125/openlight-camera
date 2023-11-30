.class Lopenlight/co/lib/exif/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lib/exif/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 914
    iput p2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    .line 915
    iput p3, p0, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    const/4 p1, -0x1

    .line 916
    iput p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->secondaryFormat:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 921
    iput p2, p0, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    .line 922
    iput p3, p0, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    .line 923
    iput p4, p0, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->secondaryFormat:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V
    .locals 0

    .line 906
    invoke-direct {p0, p1, p2, p3, p4}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V
    .locals 0

    .line 906
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    return-void
.end method
