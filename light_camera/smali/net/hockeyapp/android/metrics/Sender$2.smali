.class Lnet/hockeyapp/android/metrics/Sender$2;
.super Landroid/os/AsyncTask;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/metrics/Sender;->triggerSendingForTesting(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V
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

.field final synthetic val$connection:Ljava/net/HttpURLConnection;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$persistedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/metrics/Sender;Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 104
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Sender$2;->this$0:Lnet/hockeyapp/android/metrics/Sender;

    iput-object p2, p0, Lnet/hockeyapp/android/metrics/Sender$2;->val$connection:Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lnet/hockeyapp/android/metrics/Sender$2;->val$file:Ljava/io/File;

    iput-object p4, p0, Lnet/hockeyapp/android/metrics/Sender$2;->val$persistedData:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 104
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Sender$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 108
    iget-object p1, p0, Lnet/hockeyapp/android/metrics/Sender$2;->this$0:Lnet/hockeyapp/android/metrics/Sender;

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender$2;->val$connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Sender$2;->val$file:Ljava/io/File;

    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Sender$2;->val$persistedData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lnet/hockeyapp/android/metrics/Sender;->send(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
