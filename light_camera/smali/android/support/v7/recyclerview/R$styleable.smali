.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_font:I = 0x0

.field public static final FontFamilyFont_fontStyle:I = 0x1

.field public static final FontFamilyFont_fontWeight:I = 0x2

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    .line 157
    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->FontFamily:[I

    const/4 v0, 0x3

    .line 164
    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xb

    .line 168
    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    return-void

    :array_1a
    .array-data 4
        0x7f0400ae
        0x7f0400af
        0x7f0400b0
        0x7f0400b1
        0x7f0400b2
        0x7f0400b3
    .end array-data

    :array_2a
    .array-data 4
        0x7f0400ac
        0x7f0400b4
        0x7f0400b5
    .end array-data

    :array_34
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f04009a
        0x7f04009b
        0x7f04009c
        0x7f0400aa
        0x7f0400ab
        0x7f0400e4
        0x7f04014d
        0x7f040169
        0x7f04016f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
