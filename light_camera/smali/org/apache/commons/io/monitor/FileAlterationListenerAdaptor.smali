.class public Lorg/apache/commons/io/monitor/FileAlterationListenerAdaptor;
.super Ljava/lang/Object;
.source "FileAlterationListenerAdaptor.java"

# interfaces
.implements Lorg/apache/commons/io/monitor/FileAlterationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectoryChange(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public onDirectoryCreate(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public onDirectoryDelete(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public onFileChange(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public onFileCreate(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public onFileDelete(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public onStart(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .registers 2

    return-void
.end method

.method public onStop(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .registers 2

    return-void
.end method
