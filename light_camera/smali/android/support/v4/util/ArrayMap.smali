.class public Landroid/support/v4/util/ArrayMap;
.super Landroid/support/v4/util/SimpleArrayMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/SimpleArrayMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mCollections:Landroid/support/v4/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    return-void
.end method

.method private getCollection()Landroid/support/v4/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap;->mCollections:Landroid/support/v4/util/MapCollections;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Landroid/support/v4/util/ArrayMap$1;

    invoke-direct {v0, p0}, Landroid/support/v4/util/ArrayMap$1;-><init>(Landroid/support/v4/util/ArrayMap;)V

    iput-object v0, p0, Landroid/support/v4/util/ArrayMap;->mCollections:Landroid/support/v4/util/MapCollections;

    .line 120
    :cond_b
    iget-object p0, p0, Landroid/support/v4/util/ArrayMap;->mCollections:Landroid/support/v4/util/MapCollections;

    return-object p0
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 130
    invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;->getCollection()Landroid/support/v4/util/MapCollections;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;->getCollection()Landroid/support/v4/util/MapCollections;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 139
    iget v0, p0, Landroid/support/v4/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->ensureCapacity(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 161
    invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public values()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;->getCollection()Landroid/support/v4/util/MapCollections;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
