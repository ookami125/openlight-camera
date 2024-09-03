.class final Landroid/support/v7/widget/RecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/v7/widget/RecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/RecyclerView$SavedState;
    .registers 3

    .line 11623
    new-instance p0, Landroid/support/v7/widget/RecyclerView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/widget/RecyclerView$SavedState;
    .registers 3

    .line 11618
    new-instance p0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 11615
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/RecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 11615
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/widget/RecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/support/v7/widget/RecyclerView$SavedState;
    .registers 2

    .line 11628
    new-array p0, p1, [Landroid/support/v7/widget/RecyclerView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 11615
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$SavedState$1;->newArray(I)[Landroid/support/v7/widget/RecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method
