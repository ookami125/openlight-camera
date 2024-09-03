.class final Landroid/support/design/internal/BottomNavigationPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/design/internal/BottomNavigationPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    .registers 2

    .line 143
    new-instance p0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {p0, p1}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    .registers 2

    .line 148
    new-array p0, p1, [Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState$1;->newArray(I)[Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    move-result-object p0

    return-object p0
.end method
