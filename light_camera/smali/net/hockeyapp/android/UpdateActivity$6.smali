.class Lnet/hockeyapp/android/UpdateActivity$6;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateActivity;->prepareDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$6;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 389
    iget-object p0, p0, Lnet/hockeyapp/android/UpdateActivity$6;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->showDialog(I)V

    return-void
.end method
