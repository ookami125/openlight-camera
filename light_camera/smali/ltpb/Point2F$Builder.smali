.class public final Lltpb/Point2F$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Point2F.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/Point2F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lltpb/Point2F;",
        "Lltpb/Point2F$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public x:Ljava/lang/Float;

.field public y:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .registers 1

    .line 92
    invoke-virtual {p0}, Lltpb/Point2F$Builder;->build()Lltpb/Point2F;

    move-result-object p0

    return-object p0
.end method

.method public build()Lltpb/Point2F;
    .registers 4

    .line 112
    iget-object v0, p0, Lltpb/Point2F$Builder;->x:Ljava/lang/Float;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lltpb/Point2F$Builder;->y:Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 117
    new-instance v0, Lltpb/Point2F;

    iget-object v1, p0, Lltpb/Point2F$Builder;->x:Ljava/lang/Float;

    iget-object v2, p0, Lltpb/Point2F$Builder;->y:Ljava/lang/Float;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lltpb/Point2F;-><init>(Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v0

    :cond_16
    const/4 v0, 0x4

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lltpb/Point2F$Builder;->x:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lltpb/Point2F$Builder;->y:Ljava/lang/Float;

    aput-object p0, v0, v1

    const/4 p0, 0x3

    const-string v1, "y"

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public x(Ljava/lang/Float;)Lltpb/Point2F$Builder;
    .registers 2

    .line 101
    iput-object p1, p0, Lltpb/Point2F$Builder;->x:Ljava/lang/Float;

    return-object p0
.end method

.method public y(Ljava/lang/Float;)Lltpb/Point2F$Builder;
    .registers 2

    .line 106
    iput-object p1, p0, Lltpb/Point2F$Builder;->y:Ljava/lang/Float;

    return-object p0
.end method
