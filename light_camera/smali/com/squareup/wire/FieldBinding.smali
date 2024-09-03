.class final Lcom/squareup/wire/FieldBinding;
.super Ljava/lang/Object;
.source "FieldBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterString:Ljava/lang/String;

.field private final builderField:Ljava/lang/reflect/Field;

.field private final builderMethod:Ljava/lang/reflect/Method;

.field private keyAdapter:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final keyAdapterString:Ljava/lang/String;

.field public final label:Lcom/squareup/wire/WireField$Label;

.field private final messageField:Ljava/lang/reflect/Field;

.field public final name:Ljava/lang/String;

.field public final redacted:Z

.field private singleAdapter:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field public final tag:I


# direct methods
.method constructor <init>(Lcom/squareup/wire/WireField;Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireField;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TB;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->label()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/FieldBinding;->label:Lcom/squareup/wire/WireField$Label;

    .line 63
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/FieldBinding;->name:Ljava/lang/String;

    .line 64
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->tag()I

    move-result v0

    iput v0, p0, Lcom/squareup/wire/FieldBinding;->tag:I

    .line 65
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->keyAdapter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/FieldBinding;->keyAdapterString:Ljava/lang/String;

    .line 66
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->adapter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/FieldBinding;->adapterString:Ljava/lang/String;

    .line 67
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->redacted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/squareup/wire/FieldBinding;->redacted:Z

    .line 68
    iput-object p2, p0, Lcom/squareup/wire/FieldBinding;->messageField:Ljava/lang/reflect/Field;

    .line 69
    iget-object p1, p0, Lcom/squareup/wire/FieldBinding;->name:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/squareup/wire/FieldBinding;->getBuilderField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/wire/FieldBinding;->builderField:Ljava/lang/reflect/Field;

    .line 70
    iget-object p1, p0, Lcom/squareup/wire/FieldBinding;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/squareup/wire/FieldBinding;->getBuilderMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/wire/FieldBinding;->builderMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static getBuilderField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 33
    :catch_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No builder field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static getBuilderMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 39
    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v0

    .line 41
    :catch_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No builder method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method adapter()Lcom/squareup/wire/ProtoAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/squareup/wire/FieldBinding;->adapter:Lcom/squareup/wire/ProtoAdapter;

    if-eqz v0, :cond_5

    return-object v0

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/squareup/wire/FieldBinding;->isMap()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 93
    invoke-virtual {p0}, Lcom/squareup/wire/FieldBinding;->keyAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/squareup/wire/FieldBinding;->singleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->newMapAdapter(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/FieldBinding;->adapter:Lcom/squareup/wire/ProtoAdapter;

    return-object v0

    .line 99
    :cond_1a
    invoke-virtual {p0}, Lcom/squareup/wire/FieldBinding;->singleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/wire/FieldBinding;->label:Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->withLabel(Lcom/squareup/wire/WireField$Label;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/FieldBinding;->adapter:Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method get(Lcom/squareup/wire/Message;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/squareup/wire/FieldBinding;->messageField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 134
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method getFromBuilder(Lcom/squareup/wire/Message$Builder;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 140
    :try_start_0
    iget-object p0, p0, Lcom/squareup/wire/FieldBinding;->builderField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 142
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method isMap()Z
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/squareup/wire/FieldBinding;->keyAdapterString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method keyAdapter()Lcom/squareup/wire/ProtoAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/squareup/wire/FieldBinding;->keyAdapter:Lcom/squareup/wire/ProtoAdapter;

    if-eqz v0, :cond_5

    return-object v0

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/squareup/wire/FieldBinding;->keyAdapterString:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/wire/ProtoAdapter;->get(Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/FieldBinding;->keyAdapter:Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method set(Lcom/squareup/wire/Message$Builder;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/FieldBinding;->label:Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v0}, Lcom/squareup/wire/WireField$Label;->isOneOf()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 121
    iget-object p0, p0, Lcom/squareup/wire/FieldBinding;->builderMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 123
    :cond_14
    iget-object p0, p0, Lcom/squareup/wire/FieldBinding;->builderField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception p0

    .line 126
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method singleAdapter()Lcom/squareup/wire/ProtoAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/squareup/wire/FieldBinding;->singleAdapter:Lcom/squareup/wire/ProtoAdapter;

    if-eqz v0, :cond_5

    return-object v0

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/squareup/wire/FieldBinding;->adapterString:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/wire/ProtoAdapter;->get(Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/FieldBinding;->singleAdapter:Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method

.method value(Lcom/squareup/wire/Message$Builder;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/squareup/wire/FieldBinding;->label:Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v0}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 105
    invoke-virtual {p0, p1}, Lcom/squareup/wire/FieldBinding;->getFromBuilder(Lcom/squareup/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 106
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 107
    :cond_12
    iget-object v0, p0, Lcom/squareup/wire/FieldBinding;->keyAdapterString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 108
    invoke-virtual {p0, p1}, Lcom/squareup/wire/FieldBinding;->getFromBuilder(Lcom/squareup/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 109
    check-cast p2, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_29

    .line 111
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/FieldBinding;->set(Lcom/squareup/wire/Message$Builder;Ljava/lang/Object;)V

    :goto_29
    return-void
.end method
