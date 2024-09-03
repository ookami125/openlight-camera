.class Lnet/hockeyapp/android/UpdateFragment$1;
.super Lnet/hockeyapp/android/listeners/DownloadFileListener;
.source "UpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateFragment;

.field final synthetic val$fileDate:Ljava/lang/String;

.field final synthetic val$versionLabel:Landroid/widget/TextView;

.field final synthetic val$versionString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 138
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateFragment$1;->this$0:Lnet/hockeyapp/android/UpdateFragment;

    iput-object p2, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$versionLabel:Landroid/widget/TextView;

    iput-object p3, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$versionString:Ljava/lang/String;

    iput-object p4, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$fileDate:Ljava/lang/String;

    invoke-direct {p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .registers 9

    .line 141
    instance-of v0, p1, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    if-eqz v0, :cond_4c

    .line 142
    check-cast p1, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    invoke-virtual {p1}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->getSize()J

    move-result-wide v0

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    long-to-float v0, v0

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$versionLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateFragment$1;->this$0:Lnet/hockeyapp/android/UpdateFragment;

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_update_version_details_label:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$versionString:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object p0, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$fileDate:Ljava/lang/String;

    aput-object p0, v5, v4

    const/4 p0, 0x2

    aput-object p1, v5, p0

    invoke-virtual {v2, v3, v5}, Lnet/hockeyapp/android/UpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4c
    return-void
.end method
