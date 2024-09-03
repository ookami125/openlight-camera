.class public Lnet/hockeyapp/android/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
    }
.end annotation


# static fields
.field private static final BROADCAST_ACTION:Ljava/lang/String; = "net.hockeyapp.android.SCREENSHOT"

.field private static final BROADCAST_REQUEST_CODE:I = 0x1

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x1

.field private static currentActivity:Landroid/app/Activity; = null

.field private static identifier:Ljava/lang/String; = null

.field private static lastListener:Lnet/hockeyapp/android/FeedbackManagerListener; = null

.field private static notificationActive:Z = false

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field private static requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field private static urlString:Ljava/lang/String;

.field private static userEmail:Ljava/lang/String;

.field private static userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    sget-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    .line 89
    sget-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 39
    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkForAnswersAndNotify(Landroid/content/Context;)V
    .registers 15

    .line 210
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b

    return-void

    :cond_b
    const-string v0, "net.hockeyapp.android.feedback"

    const/4 v12, 0x0

    .line 215
    invoke-virtual {p0, v0, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "idLastMessageSend"

    const/4 v2, -0x1

    .line 216
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 218
    new-instance v13, Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v10, Lnet/hockeyapp/android/FeedbackManager$1;

    invoke-direct {v10, p0}, Lnet/hockeyapp/android/FeedbackManager$1;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    move-object v1, v13

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 231
    invoke-virtual {v13, v12}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->setShowProgressDialog(Z)V

    .line 232
    invoke-virtual {v13, v0}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->setLastMessageId(I)V

    .line 233
    invoke-static {v13}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    return-void
.end method

.method private static endNotification()V
    .registers 2

    const/4 v0, 0x0

    .line 419
    sput-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    .line 421
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    .line 423
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static getLastListener()Lnet/hockeyapp/android/FeedbackManagerListener;
    .registers 1

    .line 242
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-object v0
.end method

.method public static getRequireUserEmail()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
    .registers 1

    .line 279
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-object v0
.end method

.method public static getRequireUserName()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
    .registers 1

    .line 261
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-object v0
.end method

.method private static getURLString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "api/2/apps/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/feedback/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static register(Landroid/content/Context;)V
    .registers 3

    .line 107
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 111
    invoke-static {p0, v0}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V
    .registers 4

    if-eqz p0, :cond_f

    .line 145
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    .line 146
    sput-object p1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    .line 147
    sput-object p3, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    .line 149
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    :cond_f
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V
    .registers 4

    const-string v0, "https://sdk.hockeyapp.net/"

    .line 132
    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V

    return-void
.end method

.method public static setActivityForScreenshot(Landroid/app/Activity;)V
    .registers 1

    .line 316
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    .line 318
    sget-boolean p0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    if-nez p0, :cond_9

    .line 319
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->startNotification()V

    :cond_9
    return-void
.end method

.method public static setRequireUserEmail(Lnet/hockeyapp/android/objects/FeedbackUserDataElement;)V
    .registers 1

    .line 288
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-void
.end method

.method public static setRequireUserName(Lnet/hockeyapp/android/objects/FeedbackUserDataElement;)V
    .registers 1

    .line 270
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .registers 1

    .line 306
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->userEmail:Ljava/lang/String;

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .registers 1

    .line 297
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->userName:Ljava/lang/String;

    return-void
.end method

.method public static varargs showFeedbackActivity(Landroid/content/Context;Landroid/os/Bundle;[Landroid/net/Uri;)V
    .registers 7

    if-eqz p0, :cond_5c

    const/4 v0, 0x0

    .line 180
    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    if-eqz v1, :cond_d

    .line 181
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    invoke-virtual {v0}, Lnet/hockeyapp/android/FeedbackManagerListener;->getFeedbackActivityClass()Ljava/lang/Class;

    move-result-object v0

    :cond_d
    if-nez v0, :cond_11

    .line 184
    const-class v0, Lnet/hockeyapp/android/FeedbackActivity;

    .line 186
    :cond_11
    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    if-eqz v1, :cond_1f

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    invoke-virtual {v1}, Lnet/hockeyapp/android/FeedbackManagerListener;->shouldCreateNewFeedbackThread()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 188
    :goto_20
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_30

    .line 189
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    .line 190
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_30
    const/high16 p1, 0x10000000

    .line 192
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p1, "url"

    .line 194
    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "forceNewThread"

    .line 195
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "initialUserName"

    .line 196
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->userName:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "initialUserEmail"

    .line 197
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->userEmail:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "initialAttachments"

    .line 198
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5c
    return-void
.end method

.method public static varargs showFeedbackActivity(Landroid/content/Context;[Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, v0, p1}, Lnet/hockeyapp/android/FeedbackManager;->showFeedbackActivity(Landroid/content/Context;Landroid/os/Bundle;[Landroid/net/Uri;)V

    return-void
.end method

.method private static startNotification()V
    .registers 7

    const/4 v0, 0x1

    .line 392
    sput-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    .line 394
    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 396
    sget-object v2, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ic_menu_camera"

    const-string v4, "drawable"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 398
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "net.hockeyapp.android.SCREENSHOT"

    .line 399
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    sget-object v4, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v0, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 402
    sget-object v4, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string v5, "HockeyApp Feedback"

    const-string v6, "Take a screenshot for your feedback."

    invoke-static {v4, v3, v5, v6, v2}, Lnet/hockeyapp/android/utils/Util;->createNotification(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v2

    .line 404
    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 406
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_47

    .line 407
    new-instance v0, Lnet/hockeyapp/android/FeedbackManager$3;

    invoke-direct {v0}, Lnet/hockeyapp/android/FeedbackManager$3;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 414
    :cond_47
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "net.hockeyapp.android.SCREENSHOT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static takeScreenshot(Landroid/content/Context;)V
    .registers 9

    .line 344
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    sget-object v2, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v3

    .line 350
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v5, v1

    .line 352
    :goto_33
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 353
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/2addr v5, v1

    goto :goto_33

    .line 357
    :cond_59
    new-instance v2, Lnet/hockeyapp/android/FeedbackManager$2;

    invoke-direct {v2, v0, p0}, Lnet/hockeyapp/android/FeedbackManager$2;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    new-array v0, v1, [Ljava/io/File;

    const/4 v3, 0x0

    aput-object v4, v0, v3

    .line 378
    invoke-virtual {v2, v0}, Lnet/hockeyapp/android/FeedbackManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 381
    new-instance v0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;-><init>(Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManager$1;)V

    .line 382
    new-instance v2, Landroid/media/MediaScannerConnection;

    sget-object v3, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 383
    invoke-virtual {v0, v2}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->setConnection(Landroid/media/MediaScannerConnection;)V

    .line 384
    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->connect()V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screenshot \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is available in gallery."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static unregister()V
    .registers 1

    const/4 v0, 0x0

    .line 157
    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-void
.end method

.method public static unsetCurrentActivityForScreenshot(Landroid/app/Activity;)V
    .registers 2

    .line 329
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    if-eq v0, p0, :cond_9

    goto :goto_10

    .line 333
    :cond_9
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->endNotification()V

    const/4 p0, 0x0

    .line 334
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    return-void

    :cond_10
    :goto_10
    return-void
.end method
