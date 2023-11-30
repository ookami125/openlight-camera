.class Lopenlight/co/camera/ImageReaderManager$2;
.super Ljava/lang/Object;
.source "ImageReaderManager.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/ImageReaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/ImageReaderManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/ImageReaderManager;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lopenlight/co/camera/ImageReaderManager$2;->this$0:Lopenlight/co/camera/ImageReaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$2;->this$0:Lopenlight/co/camera/ImageReaderManager;

    invoke-static {v0}, Lopenlight/co/camera/ImageReaderManager;->access$500(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$2;->this$0:Lopenlight/co/camera/ImageReaderManager;

    invoke-static {p0}, Lopenlight/co/camera/ImageReaderManager;->access$500(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;->onYuvImageAvailable(Landroid/media/ImageReader;)V

    :cond_0
    return-void
.end method
