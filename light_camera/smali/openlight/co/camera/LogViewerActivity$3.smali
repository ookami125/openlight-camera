.class Lopenlight/co/camera/LogViewerActivity$3;
.super Landroid/widget/ArrayAdapter;
.source "LogViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/LogViewerActivity;->createAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lopenlight/co/lib/utils/LogUtil$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/LogViewerActivity;


# direct methods
.method constructor <init>(Lopenlight/co/camera/LogViewerActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lopenlight/co/camera/LogViewerActivity$3;->this$0:Lopenlight/co/camera/LogViewerActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lopenlight/co/camera/LogViewerActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/lib/utils/LogUtil$Entry;

    iget p0, p0, Lopenlight/co/lib/utils/LogUtil$Entry;->id:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 126
    iget-object p2, p0, Lopenlight/co/camera/LogViewerActivity$3;->this$0:Lopenlight/co/camera/LogViewerActivity;

    .line 127
    invoke-virtual {p2}, Lopenlight/co/camera/LogViewerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b004c

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    check-cast p2, Lopenlight/co/camera/view/logviewer/LogViewerEntry;

    .line 130
    invoke-virtual {p0, p1}, Lopenlight/co/camera/LogViewerActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/lib/utils/LogUtil$Entry;

    invoke-virtual {p2, p1, p0}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->bind(ILopenlight/co/lib/utils/LogUtil$Entry;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
