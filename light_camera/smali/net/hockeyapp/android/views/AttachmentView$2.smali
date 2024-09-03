.class Lnet/hockeyapp/android/views/AttachmentView$2;
.super Ljava/lang/Object;
.source "AttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/AttachmentView;->initializeView(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/views/AttachmentView;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/AttachmentView;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView$2;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 228
    iget-object p0, p0, Lnet/hockeyapp/android/views/AttachmentView$2;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->remove()V

    return-void
.end method
