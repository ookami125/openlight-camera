.class public interface abstract Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;
.super Ljava/lang/Object;
.source "ImageFtuBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ftu/ImageFtuBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FtuActionListener"
.end annotation


# virtual methods
.method public abstract onCurrentViewChanged(Lopenlight/co/camera/enums/FtuView;)V
.end method

.method public abstract onIncorrectUserResponse(Lopenlight/co/camera/enums/FtuView;)V
.end method

.method public abstract onPlayAllComplete()V
.end method

.method public abstract onSingleRunComplete(Lopenlight/co/camera/enums/FtuView;)V
.end method

.method public abstract onUserActionRequired(Lopenlight/co/camera/enums/FtuView;)V
.end method
