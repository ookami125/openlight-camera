.class public final Lltpb/ViewPreferences$Crop$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lltpb/ViewPreferences$Crop;",
        "Lltpb/ViewPreferences$Crop$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public size:Lltpb/Point2F;

.field public start:Lltpb/Point2F;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 906
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 0

    .line 901
    invoke-virtual {p0}, Lltpb/ViewPreferences$Crop$Builder;->build()Lltpb/ViewPreferences$Crop;

    move-result-object p0

    return-object p0
.end method

.method public build()Lltpb/ViewPreferences$Crop;
    .locals 3

    .line 927
    iget-object v0, p0, Lltpb/ViewPreferences$Crop$Builder;->start:Lltpb/Point2F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltpb/ViewPreferences$Crop$Builder;->size:Lltpb/Point2F;

    if-eqz v0, :cond_0

    .line 932
    new-instance v0, Lltpb/ViewPreferences$Crop;

    iget-object v1, p0, Lltpb/ViewPreferences$Crop$Builder;->start:Lltpb/Point2F;

    iget-object v2, p0, Lltpb/ViewPreferences$Crop$Builder;->size:Lltpb/Point2F;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lltpb/ViewPreferences$Crop;-><init>(Lltpb/Point2F;Lltpb/Point2F;Lokio/ByteString;)V

    return-object v0

    :cond_0
    const/4 v0, 0x4

    .line 929
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lltpb/ViewPreferences$Crop$Builder;->start:Lltpb/Point2F;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lltpb/ViewPreferences$Crop$Builder;->size:Lltpb/Point2F;

    aput-object p0, v0, v1

    const/4 p0, 0x3

    const-string v1, "size"

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public size(Lltpb/Point2F;)Lltpb/ViewPreferences$Crop$Builder;
    .locals 0

    .line 921
    iput-object p1, p0, Lltpb/ViewPreferences$Crop$Builder;->size:Lltpb/Point2F;

    return-object p0
.end method

.method public start(Lltpb/Point2F;)Lltpb/ViewPreferences$Crop$Builder;
    .locals 0

    .line 913
    iput-object p1, p0, Lltpb/ViewPreferences$Crop$Builder;->start:Lltpb/Point2F;

    return-object p0
.end method
