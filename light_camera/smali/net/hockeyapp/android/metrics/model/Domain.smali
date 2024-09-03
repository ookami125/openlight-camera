.class public Lnet/hockeyapp/android/metrics/model/Domain;
.super Ljava/lang/Object;
.source "Domain.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;


# instance fields
.field public Attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public QualifiedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/Domain;->Attributes:Ljava/util/LinkedHashMap;

    .line 25
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Domain;->InitializeFields()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .registers 1

    return-void
.end method

.method public serialize(Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_10

    const/16 v0, 0x7b

    .line 40
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 41
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Domain;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 p0, 0x7d

    .line 42
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 37
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "writer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, ""

    return-object p0
.end method
