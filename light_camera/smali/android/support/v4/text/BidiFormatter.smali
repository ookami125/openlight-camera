.class public final Landroid/support/v4/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;,
        Landroid/support/v4/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field private static final DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat; = null

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 84
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/16 v0, 0x200e

    .line 114
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    const/16 v0, 0x200f

    .line 119
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 216
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    sget-object v1, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    .line 221
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    sget-object v1, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-void
.end method

.method private constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V
    .registers 4

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-boolean p1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    .line 263
    iput p2, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    .line 264
    iput-object p3, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method synthetic constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;Landroid/support/v4/text/BidiFormatter$1;)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Locale;)Z
    .registers 1

    .line 79
    invoke-static {p0}, Landroid/support/v4/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .registers 1

    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-object v0
.end method

.method static synthetic access$200()Landroid/support/v4/text/BidiFormatter;
    .registers 1

    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$300()Landroid/support/v4/text/BidiFormatter;
    .registers 1

    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method private static getEntryDir(Ljava/lang/CharSequence;)I
    .registers 3

    .line 557
    new-instance v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result p0

    return p0
.end method

.method private static getExitDir(Ljava/lang/CharSequence;)I
    .registers 3

    .line 540
    new-instance v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result p0

    return p0
.end method

.method public static getInstance()Landroid/support/v4/text/BidiFormatter;
    .registers 1

    .line 235
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/support/v4/text/BidiFormatter;
    .registers 2

    .line 253
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Z)Landroid/support/v4/text/BidiFormatter;
    .registers 2

    .line 244
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static isRtlLocale(Ljava/util/Locale;)Z
    .registers 2

    .line 515
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private markAfter(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 5

    .line 299
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 301
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v0, :cond_19

    if-nez p2, :cond_16

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 302
    :cond_16
    sget-object p0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    return-object p0

    .line 304
    :cond_19
    iget-boolean p0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz p0, :cond_29

    if-eqz p2, :cond_26

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_29

    .line 305
    :cond_26
    sget-object p0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    return-object p0

    :cond_29
    const-string p0, ""

    return-object p0
.end method

.method private markBefore(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 5

    .line 327
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 329
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v0, :cond_19

    if-nez p2, :cond_16

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 330
    :cond_16
    sget-object p0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    return-object p0

    .line 332
    :cond_19
    iget-boolean p0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz p0, :cond_29

    if-eqz p2, :cond_26

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_29

    .line 333
    :cond_26
    sget-object p0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    return-object p0

    :cond_29
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getStereoReset()Z
    .registers 1

    .line 279
    iget p0, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isRtl(Ljava/lang/CharSequence;)Z
    .registers 4

    .line 357
    iget-object p0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public isRtl(Ljava/lang/String;)Z
    .registers 2

    .line 346
    invoke-virtual {p0, p1}, Landroid/support/v4/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isRtlContext()Z
    .registers 1

    .line 271
    iget-boolean p0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    return p0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 505
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x1

    .line 455
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 411
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 412
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 413
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter;->getStereoReset()Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz p3, :cond_28

    if-eqz p2, :cond_1f

    .line 414
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_21

    :cond_1f
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_21
    invoke-direct {p0, p1, v1}, Landroid/support/v4/text/BidiFormatter;->markBefore(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 417
    :cond_28
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eq p2, v1, :cond_3f

    if-eqz p2, :cond_31

    const/16 v1, 0x202b

    goto :goto_33

    :cond_31
    const/16 v1, 0x202a

    .line 418
    :goto_33
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 419
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    .line 420
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_42

    .line 422
    :cond_3f
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_42
    if-eqz p3, :cond_52

    if-eqz p2, :cond_49

    .line 425
    sget-object p2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_4b

    :cond_49
    sget-object p2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_4b
    invoke-direct {p0, p1, p2}, Landroid/support/v4/text/BidiFormatter;->markAfter(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_52
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 4

    .line 482
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 493
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 391
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 468
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
