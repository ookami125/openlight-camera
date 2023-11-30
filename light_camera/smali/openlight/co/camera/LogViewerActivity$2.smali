.class Lopenlight/co/camera/LogViewerActivity$2;
.super Ljava/lang/Object;
.source "LogViewerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/LogViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/LogViewerActivity;


# direct methods
.method constructor <init>(Lopenlight/co/camera/LogViewerActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lopenlight/co/camera/LogViewerActivity$2;->this$0:Lopenlight/co/camera/LogViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lopenlight/co/camera/LogViewerActivity$2;->this$0:Lopenlight/co/camera/LogViewerActivity;

    invoke-virtual {p0}, Lopenlight/co/camera/LogViewerActivity;->onFilterChanged()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
