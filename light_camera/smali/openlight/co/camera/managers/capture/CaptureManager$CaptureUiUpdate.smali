.class public interface abstract Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;
.super Ljava/lang/Object;
.source "CaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureUiUpdate"
.end annotation


# virtual methods
.method public abstract onCaptureComplete()V
.end method

.method public abstract onCaptureFailure()V
.end method

.method public abstract onStartAnimationForBurstCapture()V
.end method

.method public abstract onStartAnimationForSingleCapture()V
.end method

.method public abstract onStartTimerForCapture(Ljava/lang/String;)V
.end method

.method public abstract onUpdateCaptureImageVisiblity(I)V
.end method

.method public abstract onUpdateUiForCapture()V
.end method
