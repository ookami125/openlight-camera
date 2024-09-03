.class public abstract Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;
.super Ljava/lang/Object;
.source "LensObstructionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/LensObstructionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnObstructionEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onInPocket()V
.end method

.method public abstract onNoObstruction()V
.end method

.method public abstract onObstruction(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onOutOfPocket()V
.end method
