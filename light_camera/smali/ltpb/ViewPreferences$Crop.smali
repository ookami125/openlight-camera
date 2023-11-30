.class public final Lltpb/ViewPreferences$Crop;
.super Lcom/squareup/wire/Message;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Crop"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$Crop$ProtoAdapter_Crop;,
        Lltpb/ViewPreferences$Crop$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lltpb/ViewPreferences$Crop;",
        "Lltpb/ViewPreferences$Crop$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences$Crop;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field public final size:Lltpb/Point2F;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.Point2F#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x2
    .end annotation
.end field

.field public final start:Lltpb/Point2F;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.Point2F#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 828
    new-instance v0, Lltpb/ViewPreferences$Crop$ProtoAdapter_Crop;

    invoke-direct {v0}, Lltpb/ViewPreferences$Crop$ProtoAdapter_Crop;-><init>()V

    sput-object v0, Lltpb/ViewPreferences$Crop;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Lltpb/Point2F;Lltpb/Point2F;)V
    .locals 1

    .line 853
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lltpb/ViewPreferences$Crop;-><init>(Lltpb/Point2F;Lltpb/Point2F;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lltpb/Point2F;Lltpb/Point2F;Lokio/ByteString;)V
    .locals 1

    .line 857
    sget-object v0, Lltpb/ViewPreferences$Crop;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 858
    iput-object p1, p0, Lltpb/ViewPreferences$Crop;->start:Lltpb/Point2F;

    .line 859
    iput-object p2, p0, Lltpb/ViewPreferences$Crop;->size:Lltpb/Point2F;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 874
    :cond_0
    instance-of v1, p1, Lltpb/ViewPreferences$Crop;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 875
    :cond_1
    check-cast p1, Lltpb/ViewPreferences$Crop;

    .line 876
    invoke-virtual {p0}, Lltpb/ViewPreferences$Crop;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lltpb/ViewPreferences$Crop;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences$Crop;->start:Lltpb/Point2F;

    iget-object v3, p1, Lltpb/ViewPreferences$Crop;->start:Lltpb/Point2F;

    .line 877
    invoke-virtual {v1, v3}, Lltpb/Point2F;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lltpb/ViewPreferences$Crop;->size:Lltpb/Point2F;

    iget-object p1, p1, Lltpb/ViewPreferences$Crop;->size:Lltpb/Point2F;

    .line 878
    invoke-virtual {p0, p1}, Lltpb/Point2F;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 883
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lltpb/ViewPreferences$Crop;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 886
    iget-object v1, p0, Lltpb/ViewPreferences$Crop;->start:Lltpb/Point2F;

    invoke-virtual {v1}, Lltpb/Point2F;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 887
    iget-object v1, p0, Lltpb/ViewPreferences$Crop;->size:Lltpb/Point2F;

    invoke-virtual {v1}, Lltpb/Point2F;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 888
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 0

    .line 827
    invoke-virtual {p0}, Lltpb/ViewPreferences$Crop;->newBuilder()Lltpb/ViewPreferences$Crop$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilder()Lltpb/ViewPreferences$Crop$Builder;
    .locals 2

    .line 864
    new-instance v0, Lltpb/ViewPreferences$Crop$Builder;

    invoke-direct {v0}, Lltpb/ViewPreferences$Crop$Builder;-><init>()V

    .line 865
    iget-object v1, p0, Lltpb/ViewPreferences$Crop;->start:Lltpb/Point2F;

    iput-object v1, v0, Lltpb/ViewPreferences$Crop$Builder;->start:Lltpb/Point2F;

    .line 866
    iget-object v1, p0, Lltpb/ViewPreferences$Crop;->size:Lltpb/Point2F;

    iput-object v1, v0, Lltpb/ViewPreferences$Crop$Builder;->size:Lltpb/Point2F;

    .line 867
    invoke-virtual {p0}, Lltpb/ViewPreferences$Crop;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lltpb/ViewPreferences$Crop$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", start="

    .line 896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences$Crop;->start:Lltpb/Point2F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lltpb/ViewPreferences$Crop;->size:Lltpb/Point2F;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "Crop{"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 898
    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
