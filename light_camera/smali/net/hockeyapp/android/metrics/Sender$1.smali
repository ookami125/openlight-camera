.class Lnet/hockeyapp/android/metrics/Sender$1;
.super Landroid/os/AsyncTask;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/metrics/Sender;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Sender$1;->this$0:Lnet/hockeyapp/android/metrics/Sender;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Sender$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 86
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Sender$1;->this$0:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->sendAvailableFiles()V

    const/4 p0, 0x0

    return-object p0
.end method
