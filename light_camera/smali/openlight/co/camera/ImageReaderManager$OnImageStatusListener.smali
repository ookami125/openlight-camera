.class public interface abstract Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;
.super Ljava/lang/Object;
.source "ImageReaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/ImageReaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageStatusListener"
.end annotation


# virtual methods
.method public abstract onImageSaved(ILjava/lang/String;I)V
.end method

.method public abstract onYuvImageAvailable(Landroid/media/ImageReader;)V
.end method
