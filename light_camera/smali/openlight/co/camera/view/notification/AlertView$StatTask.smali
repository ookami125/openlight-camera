.class Lopenlight/co/camera/view/notification/AlertView$StatTask;
.super Landroid/os/AsyncTask;
.source "AlertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/notification/AlertView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field private volatile mAvailableStorageSpace:F

.field final synthetic this$0:Lopenlight/co/camera/view/notification/AlertView;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/notification/AlertView;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lopenlight/co/camera/view/notification/AlertView$StatTask;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/notification/AlertView;Lopenlight/co/camera/view/notification/AlertView$1;)V
    .registers 3

    .line 199
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/notification/AlertView$StatTask;-><init>(Lopenlight/co/camera/view/notification/AlertView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 199
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/notification/AlertView$StatTask;->doInBackground([Ljava/lang/Boolean;)[I

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[I
    .registers 11

    .line 202
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    .line 204
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 205
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v5

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x1f400000

    sub-long/2addr v3, v5

    const-wide/16 v7, 0x0

    .line 204
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long/2addr v1, v5

    .line 207
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v2, v0

    long-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    .line 208
    iput v2, p0, Lopenlight/co/camera/view/notification/AlertView$StatTask;->mAvailableStorageSpace:F

    const-wide/32 v2, 0xb400000

    .line 210
    div-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_43

    const v0, 0x7f080150

    goto :goto_46

    :cond_43
    const v0, 0x7f080151

    :goto_46
    const/4 v1, 0x3

    .line 217
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p0, v1, v0

    const/4 p0, 0x2

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput p1, v1, p0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 199
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/notification/AlertView$StatTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .registers 6

    .line 221
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView$StatTask;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    # getter for: Lopenlight/co/camera/view/notification/AlertView;->mStorageIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lopenlight/co/camera/view/notification/AlertView;->access$400(Lopenlight/co/camera/view/notification/AlertView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 222
    aget v1, p1, v0

    .line 223
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    iget-object v3, p0, Lopenlight/co/camera/view/notification/AlertView$StatTask;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    # getter for: Lopenlight/co/camera/view/notification/AlertView;->mRemainingImageCount:Landroid/widget/TextView;
    invoke-static {v3}, Lopenlight/co/camera/view/notification/AlertView;->access$500(Lopenlight/co/camera/view/notification/AlertView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    .line 226
    aget p1, p1, v2

    if-ne p1, v0, :cond_29

    .line 227
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView$StatTask;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    int-to-long v0, v1

    iget p0, p0, Lopenlight/co/camera/view/notification/AlertView$StatTask;->mAvailableStorageSpace:F

    # invokes: Lopenlight/co/camera/view/notification/AlertView;->displayNotificationAlert(JF)V
    invoke-static {p1, v0, v1, p0}, Lopenlight/co/camera/view/notification/AlertView;->access$600(Lopenlight/co/camera/view/notification/AlertView;JF)V

    :cond_29
    return-void
.end method
