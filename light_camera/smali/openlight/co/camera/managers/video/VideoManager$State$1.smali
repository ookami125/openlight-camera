.class final enum Lopenlight/co/camera/managers/video/VideoManager$State$1;
.super Lopenlight/co/camera/managers/video/VideoManager$State;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/video/VideoManager$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/managers/video/VideoManager$State;-><init>(Ljava/lang/String;ILopenlight/co/camera/managers/video/VideoManager$1;)V

    return-void
.end method


# virtual methods
.method public isRecording()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
