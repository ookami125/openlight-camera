.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 54
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    goto :goto_15

    .line 56
    :cond_e
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    :goto_15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .registers 2

    .line 44
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .registers 2

    .line 66
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object p0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isHardwareDetected()Z
    .registers 2

    .line 75
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    iget-object p0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->isHardwareDetected(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
