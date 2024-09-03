.class final Lnet/hockeyapp/android/CrashManager$5;
.super Ljava/lang/Thread;
.source "CrashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$crashMetaData:Lnet/hockeyapp/android/objects/CrashMetaData;

.field final synthetic val$listener:Lnet/hockeyapp/android/CrashManagerListener;

.field final synthetic val$weakContext:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Lnet/hockeyapp/android/objects/CrashMetaData;)V
    .registers 4

    .line 584
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$5;->val$weakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$5;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iput-object p3, p0, Lnet/hockeyapp/android/CrashManager$5;->val$crashMetaData:Lnet/hockeyapp/android/objects/CrashMetaData;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 587
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$5;->val$weakContext:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/CrashManager$5;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iget-object p0, p0, Lnet/hockeyapp/android/CrashManager$5;->val$crashMetaData:Lnet/hockeyapp/android/objects/CrashMetaData;

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/CrashManager;->submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Lnet/hockeyapp/android/objects/CrashMetaData;)V

    const/4 p0, 0x0

    .line 588
    # setter for: Lnet/hockeyapp/android/CrashManager;->submitting:Z
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->access$002(Z)Z

    return-void
.end method
