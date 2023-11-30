.class public Lopenlight/co/TheaterMode/TheaterModeSettings;
.super Ljava/lang/Object;
.source "TheaterModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;
    }
.end annotation


# static fields
.field private static final ACTION_THEATER_MODE_CHANGED:Ljava/lang/String; = "openlight.co.action.THEATER_MODE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "TheaterModeSettings"

.field private static final THEATER_MODE_AUTHORITY:Ljava/lang/String; = "openlight.co.theatermode.provider"

.field private static final THEATER_MODE_TABLE_NAME:Ljava/lang/String; = "settings"

.field private static final THEATER_MODE_URI:Landroid/net/Uri;

.field private static sAudioEnabled:Z

.field private static sFlashLightEnabled:Z

.field private static sHapticFeedbackEnabled:Z

.field private static sInstance:Lopenlight/co/TheaterMode/TheaterModeSettings;

.field private static sLensBlockedAlertEnabled:Z

.field private static final sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lopenlight/co/TheaterMode/TheaterModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sPocketDetectionEnabled:Z

.field private static sTheaterModeEnabled:Z


# instance fields
.field private final mTheaterModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://openlight.co.theatermode.provider/settings"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->THEATER_MODE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sTheaterModeEnabled:Z

    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sHapticFeedbackEnabled:Z

    .line 36
    sput-boolean v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sPocketDetectionEnabled:Z

    .line 37
    sput-boolean v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sLensBlockedAlertEnabled:Z

    .line 38
    sput-boolean v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sAudioEnabled:Z

    .line 39
    sput-boolean v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sFlashLightEnabled:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lopenlight/co/TheaterMode/TheaterModeSettings$1;

    invoke-direct {v0, p0}, Lopenlight/co/TheaterMode/TheaterModeSettings$1;-><init>(Lopenlight/co/TheaterMode/TheaterModeSettings;)V

    iput-object v0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->mTheaterModeReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    invoke-direct {p0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->readSettings()V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "openlight.co.action.THEATER_MODE_CHANGED"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->getApp()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->mTheaterModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/TheaterMode/TheaterModeSettings;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->readSettings()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .line 21
    sget-object v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->THEATER_MODE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 21
    sget-boolean v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sTheaterModeEnabled:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sTheaterModeEnabled:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sHapticFeedbackEnabled:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sAudioEnabled:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sPocketDetectionEnabled:Z

    return p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sLensBlockedAlertEnabled:Z

    return p0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sFlashLightEnabled:Z

    return p0
.end method

.method public static get()Lopenlight/co/TheaterMode/TheaterModeSettings;
    .locals 1

    .line 67
    sget-object v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sInstance:Lopenlight/co/TheaterMode/TheaterModeSettings;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 57
    sget-object v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sInstance:Lopenlight/co/TheaterMode/TheaterModeSettings;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lopenlight/co/TheaterMode/TheaterModeSettings;

    invoke-direct {v0}, Lopenlight/co/TheaterMode/TheaterModeSettings;-><init>()V

    sput-object v0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sInstance:Lopenlight/co/TheaterMode/TheaterModeSettings;

    :cond_0
    return-void
.end method

.method private readSettings()V
    .locals 1

    .line 122
    new-instance p0, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;-><init>(Lopenlight/co/TheaterMode/TheaterModeSettings$1;)V

    const/4 v0, 0x0

    .line 123
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public addListener(Lopenlight/co/TheaterMode/TheaterModeListener;)V
    .locals 0

    .line 71
    sget-object p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isAudioDisabled()Z
    .locals 0

    .line 107
    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sTheaterModeEnabled:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sAudioEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFlashLightDisabled()Z
    .locals 0

    .line 115
    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sTheaterModeEnabled:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sFlashLightEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHapticFeedbackDisabled()Z
    .locals 0

    .line 83
    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sTheaterModeEnabled:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sHapticFeedbackEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLensBlockedAlertDisabled()Z
    .locals 0

    .line 99
    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sTheaterModeEnabled:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sLensBlockedAlertEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPocketDetectionDisabled()Z
    .locals 0

    .line 91
    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sTheaterModeEnabled:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sPocketDetectionEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeListener(Lopenlight/co/TheaterMode/TheaterModeListener;)V
    .locals 0

    .line 75
    sget-object p0, Lopenlight/co/TheaterMode/TheaterModeSettings;->sListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
