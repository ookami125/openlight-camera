.class public interface abstract Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;
.super Ljava/lang/Object;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/video/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStatusListener"
.end annotation


# virtual methods
.method public abstract onError(Lopenlight/co/camera/managers/video/VideoManager$ErrorType;)V
.end method

.method public abstract onMediaSaveComplete(Ljava/lang/String;)V
.end method

.method public abstract onRecordStatusChange(Lopenlight/co/camera/managers/video/VideoManager$State;)V
.end method

.method public abstract onStopRecording()V
.end method
