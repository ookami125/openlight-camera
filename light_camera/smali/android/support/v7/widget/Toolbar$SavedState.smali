.class public Landroid/support/v7/widget/Toolbar$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v7/widget/Toolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedMenuItemId:I

.field isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2285
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    .line 2265
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 2269
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 2271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 2275
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2280
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2281
    iget p2, p0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2282
    iget-boolean p0, p0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
