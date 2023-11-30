.class public final Lltpb/ViewPreferences$ChannelGain$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$ChannelGain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lltpb/ViewPreferences$ChannelGain;",
        "Lltpb/ViewPreferences$ChannelGain$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Float;

.field public g_b:Ljava/lang/Float;

.field public g_r:Ljava/lang/Float;

.field public r:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1094
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Float;)Lltpb/ViewPreferences$ChannelGain$Builder;
    .locals 0

    .line 1113
    iput-object p1, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->b:Ljava/lang/Float;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 0

    .line 1085
    invoke-virtual {p0}, Lltpb/ViewPreferences$ChannelGain$Builder;->build()Lltpb/ViewPreferences$ChannelGain;

    move-result-object p0

    return-object p0
.end method

.method public build()Lltpb/ViewPreferences$ChannelGain;
    .locals 7

    .line 1119
    iget-object v0, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->r:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_r:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_b:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->b:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 1128
    new-instance v0, Lltpb/ViewPreferences$ChannelGain;

    iget-object v2, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->r:Ljava/lang/Float;

    iget-object v3, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_r:Ljava/lang/Float;

    iget-object v4, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_b:Ljava/lang/Float;

    iget-object v5, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->b:Ljava/lang/Float;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lltpb/ViewPreferences$ChannelGain;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v0

    :cond_0
    const/16 v0, 0x8

    .line 1123
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->r:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "r"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_r:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "g_r"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_b:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "g_b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object p0, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->b:Ljava/lang/Float;

    aput-object p0, v0, v1

    const/4 p0, 0x7

    const-string v1, "b"

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public g_b(Ljava/lang/Float;)Lltpb/ViewPreferences$ChannelGain$Builder;
    .locals 0

    .line 1108
    iput-object p1, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_b:Ljava/lang/Float;

    return-object p0
.end method

.method public g_r(Ljava/lang/Float;)Lltpb/ViewPreferences$ChannelGain$Builder;
    .locals 0

    .line 1103
    iput-object p1, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_r:Ljava/lang/Float;

    return-object p0
.end method

.method public r(Ljava/lang/Float;)Lltpb/ViewPreferences$ChannelGain$Builder;
    .locals 0

    .line 1098
    iput-object p1, p0, Lltpb/ViewPreferences$ChannelGain$Builder;->r:Ljava/lang/Float;

    return-object p0
.end method
