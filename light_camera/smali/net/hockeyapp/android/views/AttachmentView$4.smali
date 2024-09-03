.class Lnet/hockeyapp/android/views/AttachmentView$4;
.super Ljava/lang/Object;
.source "AttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/views/AttachmentView;

.field final synthetic val$openOnClick:Z


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V
    .registers 3

    .line 283
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView$4;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    iput-boolean p2, p0, Lnet/hockeyapp/android/views/AttachmentView$4;->val$openOnClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 286
    iget-boolean p1, p0, Lnet/hockeyapp/android/views/AttachmentView$4;->val$openOnClick:Z

    if-nez p1, :cond_5

    return-void

    .line 290
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 291
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView$4;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # getter for: Lnet/hockeyapp/android/views/AttachmentView;->mAttachmentUri:Landroid/net/Uri;
    invoke-static {v0}, Lnet/hockeyapp/android/views/AttachmentView;->access$300(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object p0, p0, Lnet/hockeyapp/android/views/AttachmentView$4;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # getter for: Lnet/hockeyapp/android/views/AttachmentView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lnet/hockeyapp/android/views/AttachmentView;->access$400(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
