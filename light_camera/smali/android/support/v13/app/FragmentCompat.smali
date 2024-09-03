.class public Landroid/support/v13/app/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    .line 110
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 111
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    .line 112
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 113
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2a

    .line 114
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 116
    :cond_2a
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    :goto_31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3

    .line 159
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .registers 3
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
