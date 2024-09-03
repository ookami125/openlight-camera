.class Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 193
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 5

    add-int/2addr p3, p2

    const/4 p0, 0x2

    move v0, p0

    :goto_3
    if-ge p2, p3, :cond_16

    if-ne v0, p0, :cond_16

    .line 185
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    invoke-static {v0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_16
    return v0
.end method
