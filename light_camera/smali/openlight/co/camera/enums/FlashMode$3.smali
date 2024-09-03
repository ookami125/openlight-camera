.class final enum Lopenlight/co/camera/enums/FlashMode$3;
.super Lopenlight/co/camera/enums/FlashMode;
.source "FlashMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/enums/FlashMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIII)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 44
    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/enums/FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIILopenlight/co/camera/enums/FlashMode$1;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
