.class final Lcom/squareup/wire/ProtoAdapter$6;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Long;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->readVarint64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$6;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Long;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoWriter;->writeVarint64(J)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$6;->encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Long;)V

    return-void
.end method

.method public encodedSize(Ljava/lang/Long;)I
    .registers 2

    .line 288
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/squareup/wire/ProtoWriter;->varint64Size(J)I

    move-result p0

    return p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    .line 286
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$6;->encodedSize(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method
