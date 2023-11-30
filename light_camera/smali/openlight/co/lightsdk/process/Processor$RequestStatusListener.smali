.class public interface abstract Lopenlight/co/lightsdk/process/Processor$RequestStatusListener;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lightsdk/process/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestStatusListener"
.end annotation


# virtual methods
.method public abstract onError(Lco/openlight/lightprocessingservice/ProcessRequest;)V
.end method

.method public abstract onSuccess(Lco/openlight/lightprocessingservice/ProcessRequest;)V
.end method
