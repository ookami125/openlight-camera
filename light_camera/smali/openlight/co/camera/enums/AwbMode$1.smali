.class final enum Lopenlight/co/camera/enums/AwbMode$1;
.super Lopenlight/co/camera/enums/AwbMode;
.source "AwbMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/enums/AwbMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 15
    invoke-direct/range {v0 .. v8}, Lopenlight/co/camera/enums/AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILopenlight/co/camera/enums/AwbMode$1;)V

    return-void
.end method


# virtual methods
.method public isAuto()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
