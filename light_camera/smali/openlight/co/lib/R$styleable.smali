.class public final Lopenlight/co/lib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FtuScreen:[I

.field public static final FtuScreen_ftuBody:I = 0x0

.field public static final FtuScreen_ftuButton1:I = 0x1

.field public static final FtuScreen_ftuButton2:I = 0x2

.field public static final FtuScreen_ftuImage:I = 0x3

.field public static final FtuScreen_ftuSubTitle:I = 0x4

.field public static final FtuScreen_ftuTitle:I = 0x5

.field public static final HistogramView:[I

.field public static final HistogramView_borderColor:I = 0x0

.field public static final HistogramView_useIcon:I = 0x1

.field public static final PressSensitiveTextView:[I

.field public static final PressSensitiveTextView_scaleFactor:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    .line 159
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lopenlight/co/lib/R$styleable;->FtuScreen:[I

    const/4 v0, 0x2

    .line 166
    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lopenlight/co/lib/R$styleable;->HistogramView:[I

    const/4 v0, 0x1

    .line 169
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04015a

    aput v2, v0, v1

    sput-object v0, Lopenlight/co/lib/R$styleable;->PressSensitiveTextView:[I

    return-void

    :array_1c
    .array-data 4
        0x7f0400b7
        0x7f0400b8
        0x7f0400b9
        0x7f0400c7
        0x7f0400c8
        0x7f0400c9
    .end array-data

    :array_2c
    .array-data 4
        0x7f04003e
        0x7f0401cb
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
