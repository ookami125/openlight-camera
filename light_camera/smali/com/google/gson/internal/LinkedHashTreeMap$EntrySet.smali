.class final Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
    .registers 2

    .line 794
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 825
    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedHashTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 808
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 800
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 812
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 816
    :cond_6
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p1

    if-nez p1, :cond_11

    return v1

    .line 820
    :cond_11
    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    return v0
.end method

.method public size()I
    .registers 1

    .line 796
    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    return p0
.end method
