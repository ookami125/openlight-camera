.class public Lcom/bumptech/glide/load/resource/UnitTransformation;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/bumptech/glide/load/resource/UnitTransformation;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/UnitTransformation;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/UnitTransformation;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/UnitTransformation<",
            "TT;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/bumptech/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;

    check-cast v0, Lcom/bumptech/glide/load/resource/UnitTransformation;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method
