.class public final Lltpb/ViewPreferences$ChannelGain;
.super Lcom/squareup/wire/Message;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelGain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$ChannelGain$ProtoAdapter_ChannelGain;,
        Lltpb/ViewPreferences$ChannelGain$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lltpb/ViewPreferences$ChannelGain;",
        "Lltpb/ViewPreferences$ChannelGain$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences$ChannelGain;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_B:Ljava/lang/Float;

.field public static final DEFAULT_G_B:Ljava/lang/Float;

.field public static final DEFAULT_G_R:Ljava/lang/Float;

.field public static final DEFAULT_R:Ljava/lang/Float;

.field private static final serialVersionUID:J


# instance fields
.field public final b:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x4
    .end annotation
.end field

.field public final g_b:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x3
    .end annotation
.end field

.field public final g_r:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x2
    .end annotation
.end field

.field public final r:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 986
    new-instance v0, Lltpb/ViewPreferences$ChannelGain$ProtoAdapter_ChannelGain;

    invoke-direct {v0}, Lltpb/ViewPreferences$ChannelGain$ProtoAdapter_ChannelGain;-><init>()V

    sput-object v0, Lltpb/ViewPreferences$ChannelGain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x0

    .line 990
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lltpb/ViewPreferences$ChannelGain;->DEFAULT_R:Ljava/lang/Float;

    .line 992
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lltpb/ViewPreferences$ChannelGain;->DEFAULT_G_R:Ljava/lang/Float;

    .line 994
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lltpb/ViewPreferences$ChannelGain;->DEFAULT_G_B:Ljava/lang/Float;

    .line 996
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lltpb/ViewPreferences$ChannelGain;->DEFAULT_B:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 6

    .line 1027
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lltpb/ViewPreferences$ChannelGain;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V
    .locals 1

    .line 1031
    sget-object v0, Lltpb/ViewPreferences$ChannelGain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1032
    iput-object p1, p0, Lltpb/ViewPreferences$ChannelGain;->r:Ljava/lang/Float;

    .line 1033
    iput-object p2, p0, Lltpb/ViewPreferences$ChannelGain;->g_r:Ljava/lang/Float;

    .line 1034
    iput-object p3, p0, Lltpb/ViewPreferences$ChannelGain;->g_b:Ljava/lang/Float;

    .line 1035
    iput-object p4, p0, Lltpb/ViewPreferences$ChannelGain;->b:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1052
    :cond_0
    instance-of v1, p1, Lltpb/ViewPreferences$ChannelGain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1053
    :cond_1
    check-cast p1, Lltpb/ViewPreferences$ChannelGain;

    .line 1054
    invoke-virtual {p0}, Lltpb/ViewPreferences$ChannelGain;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lltpb/ViewPreferences$ChannelGain;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->r:Ljava/lang/Float;

    iget-object v3, p1, Lltpb/ViewPreferences$ChannelGain;->r:Ljava/lang/Float;

    .line 1055
    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->g_r:Ljava/lang/Float;

    iget-object v3, p1, Lltpb/ViewPreferences$ChannelGain;->g_r:Ljava/lang/Float;

    .line 1056
    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->g_b:Ljava/lang/Float;

    iget-object v3, p1, Lltpb/ViewPreferences$ChannelGain;->g_b:Ljava/lang/Float;

    .line 1057
    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lltpb/ViewPreferences$ChannelGain;->b:Ljava/lang/Float;

    iget-object p1, p1, Lltpb/ViewPreferences$ChannelGain;->b:Ljava/lang/Float;

    .line 1058
    invoke-virtual {p0, p1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

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

    .line 1063
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lltpb/ViewPreferences$ChannelGain;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1066
    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->r:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1067
    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->g_r:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1068
    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->g_b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1069
    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1070
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 0

    .line 985
    invoke-virtual {p0}, Lltpb/ViewPreferences$ChannelGain;->newBuilder()Lltpb/ViewPreferences$ChannelGain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilder()Lltpb/ViewPreferences$ChannelGain$Builder;
    .locals 2

    .line 1040
    new-instance v0, Lltpb/ViewPreferences$ChannelGain$Builder;

    invoke-direct {v0}, Lltpb/ViewPreferences$ChannelGain$Builder;-><init>()V

    .line 1041
    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->r:Ljava/lang/Float;

    iput-object v1, v0, Lltpb/ViewPreferences$ChannelGain$Builder;->r:Ljava/lang/Float;

    .line 1042
    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->g_r:Ljava/lang/Float;

    iput-object v1, v0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_r:Ljava/lang/Float;

    .line 1043
    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->g_b:Ljava/lang/Float;

    iput-object v1, v0, Lltpb/ViewPreferences$ChannelGain$Builder;->g_b:Ljava/lang/Float;

    .line 1044
    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->b:Ljava/lang/Float;

    iput-object v1, v0, Lltpb/ViewPreferences$ChannelGain$Builder;->b:Ljava/lang/Float;

    .line 1045
    invoke-virtual {p0}, Lltpb/ViewPreferences$ChannelGain;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lltpb/ViewPreferences$ChannelGain$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", r="

    .line 1078
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->r:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", g_r="

    .line 1079
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->g_r:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", g_b="

    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences$ChannelGain;->g_b:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    .line 1081
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lltpb/ViewPreferences$ChannelGain;->b:Ljava/lang/Float;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "ChannelGain{"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1082
    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
