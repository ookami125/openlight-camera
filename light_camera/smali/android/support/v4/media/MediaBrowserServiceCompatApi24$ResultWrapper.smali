.class Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultWrapper"
.end annotation


# instance fields
.field mResultObj:Landroid/service/media/MediaBrowserService$Result;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$Result;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 1

    .line 78
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    return-void
.end method

.method parcelListToItemList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    sget-object v1, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_d

    :cond_2a
    return-object p0
.end method

.method public sendResult(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;I)V"
        }
    .end annotation

    .line 70
    :try_start_0
    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;
    invoke-static {}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->access$000()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception p2

    const-string v0, "MBSCompatApi24"

    .line 72
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_10
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->parcelListToItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
