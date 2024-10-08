.class public Landroid/support/v4/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAAObject:Ljava/lang/Object;

.field private mContentType:I

.field private mFlags:I

.field private mLegacyStream:Ljava/lang/Integer;

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 398
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 399
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/AudioAttributesCompat;)V
    .registers 3

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 398
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 399
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 420
    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 421
    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 422
    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 423
    iget-object v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    .line 424
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mAAObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/AudioAttributesCompat;
    .registers 4

    .line 434
    # getter for: Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z
    invoke-static {}, Landroid/support/v4/media/AudioAttributesCompat;->access$000()Z

    move-result v0

    if-nez v0, :cond_44

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_44

    .line 436
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mAAObject:Ljava/lang/Object;

    if-eqz v0, :cond_17

    .line 438
    iget-object p0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mAAObject:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object p0

    return-object p0

    .line 441
    :cond_17
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 443
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 444
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 445
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 446
    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v1, :cond_3b

    .line 448
    iget-object p0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 450
    :cond_3b
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object p0

    return-object p0

    .line 454
    :cond_44
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;-><init>(Landroid/support/v4/media/AudioAttributesCompat$1;)V

    .line 455
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    .line 456
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    .line 457
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    .line 458
    iget-object p0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    iput-object p0, v0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    .line 459
    # setter for: Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    invoke-static {v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->access$202(Landroid/support/v4/media/AudioAttributesCompat;Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    return-object v0
.end method

.method public setContentType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 2

    packed-switch p1, :pswitch_data_a

    const/4 p1, 0x0

    .line 541
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_9

    .line 538
    :pswitch_7
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    :goto_9
    return-object p0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public setFlags(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 3

    and-int/lit16 p1, p1, 0x3ff

    .line 557
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    return-object p0
.end method

.method public setLegacyStreamType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_11

    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    .line 575
    # invokes: Landroid/support/v4/media/AudioAttributesCompat;->usageForStreamType(I)I
    invoke-static {p1}, Landroid/support/v4/media/AudioAttributesCompat;->access$300(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    return-object p0

    .line 570
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUsage(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 4

    packed-switch p1, :pswitch_data_1e

    const/4 p1, 0x0

    .line 514
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_1d

    .line 507
    :pswitch_7
    # getter for: Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z
    invoke-static {}, Landroid/support/v4/media/AudioAttributesCompat;->access$000()Z

    move-result v0

    if-nez v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_16

    .line 508
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_1d

    :cond_16
    const/16 p1, 0xc

    .line 510
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_1d

    .line 504
    :pswitch_1b
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    :goto_1d
    return-object p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_7
    .end packed-switch
.end method
