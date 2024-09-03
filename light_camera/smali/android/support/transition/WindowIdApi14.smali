.class Landroid/support/transition/WindowIdApi14;
.super Ljava/lang/Object;
.source "WindowIdApi14.java"

# interfaces
.implements Landroid/support/transition/WindowIdImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 33
    instance-of v0, p1, Landroid/support/transition/WindowIdApi14;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/support/transition/WindowIdApi14;

    iget-object p1, p1, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 38
    iget-object p0, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
