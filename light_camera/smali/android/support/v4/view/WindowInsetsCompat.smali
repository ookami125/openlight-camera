.class public Landroid/support/v4/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# instance fields
.field private final mInsets:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/WindowInsetsCompat;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_19

    if-nez p1, :cond_d

    goto :goto_16

    .line 45
    :cond_d
    new-instance v1, Landroid/view/WindowInsets;

    iget-object p1, p1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsets;

    invoke-direct {v1, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    :goto_16
    iput-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    goto :goto_1b

    .line 47
    :cond_19
    iput-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    :goto_1b
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    return-void
.end method

.method static unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    .line 368
    :cond_4
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    :goto_6
    return-object p0
.end method

.method static wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 364
    :cond_4
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method


# virtual methods
.method public consumeStableInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 340
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    .line 195
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 354
    :cond_12
    check-cast p1, Landroid/support/v4/view/WindowInsetsCompat;

    .line 355
    iget-object v2, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v2, :cond_1f

    iget-object p0, p1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez p0, :cond_1d

    goto :goto_27

    :cond_1d
    move v0, v1

    goto :goto_27

    :cond_1f
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    iget-object p1, p1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_27
    return v0

    :cond_28
    :goto_28
    return v1
.end method

.method public getStableInsetBottom()I
    .registers 3

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 308
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getStableInsetLeft()I
    .registers 3

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 269
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getStableInsetRight()I
    .registers 3

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 288
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getStableInsetTop()I
    .registers 3

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 250
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getSystemWindowInsetBottom()I
    .registers 3

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 113
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getSystemWindowInsetLeft()I
    .registers 3

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 62
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getSystemWindowInsetRight()I
    .registers 3

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 96
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getSystemWindowInsetTop()I
    .registers 3

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 79
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hasInsets()Z
    .registers 3

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 143
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasInsets()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hasStableInsets()Z
    .registers 3

    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 327
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hasSystemWindowInsets()Z
    .registers 3

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 130
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_c
    return p0
.end method

.method public isConsumed()Z
    .registers 3

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 164
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isRound()Z
    .registers 3

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 182
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 7

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    .line 213
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    .line 214
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 230
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    .line 231
    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method
