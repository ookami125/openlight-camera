.class public Lnet/hockeyapp/android/utils/UiThreadUtil;
.super Ljava/lang/Object;
.source "UiThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/UiThreadUtil$1;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/UiThreadUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/UiThreadUtil;
    .registers 1

    .line 25
    sget-object v0, Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;->INSTANCE:Lnet/hockeyapp/android/utils/UiThreadUtil;

    return-object v0
.end method


# virtual methods
.method public dismissLoading(Ljava/lang/ref/WeakReference;Landroid/app/ProgressDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 51
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_12

    .line 53
    new-instance v0, Lnet/hockeyapp/android/utils/UiThreadUtil$2;

    invoke-direct {v0, p0, p2}, Lnet/hockeyapp/android/utils/UiThreadUtil$2;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/ProgressDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public dismissLoadingDialogAndDisplayError(Ljava/lang/ref/WeakReference;Landroid/app/ProgressDialog;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/ProgressDialog;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 31
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_12

    .line 33
    new-instance v0, Lnet/hockeyapp/android/utils/UiThreadUtil$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lnet/hockeyapp/android/utils/UiThreadUtil$1;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/ProgressDialog;Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public displayToastMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 68
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_12

    .line 70
    new-instance v0, Lnet/hockeyapp/android/utils/UiThreadUtil$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/hockeyapp/android/utils/UiThreadUtil$3;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method
