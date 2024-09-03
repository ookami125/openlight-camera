.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatApi16Impl"
.end annotation


# instance fields
.field protected final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .registers 2

    .line 255
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 256
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 1

    .line 261
    iget-object p0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .registers 3

    .line 266
    instance-of v0, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;

    if-eqz v0, :cond_d

    .line 267
    check-cast p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;

    .line 269
    iget-object p0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object p1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    :cond_d
    return-void
.end method
