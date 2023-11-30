.class public Lopenlight/co/camera/utils/UsbMgr;
.super Ljava/lang/Object;
.source "UsbMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/UsbMgr$OnUsbConnectedListener;
    }
.end annotation


# static fields
.field private static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field private static final EXTRA_CONNECTED:Ljava/lang/String; = "connected"

.field private static final TAG:Ljava/lang/String; = "UsbMgr"

.field private static sInstance:Lopenlight/co/camera/utils/UsbMgr;


# instance fields
.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lopenlight/co/camera/utils/UsbMgr$OnUsbConnectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/utils/UsbMgr;->mListeners:Ljava/util/HashSet;

    .line 90
    new-instance v0, Lopenlight/co/camera/utils/UsbMgr$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/utils/UsbMgr$1;-><init>(Lopenlight/co/camera/utils/UsbMgr;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/utils/UsbMgr;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lopenlight/co/camera/utils/UsbMgr;->mUsbConnected:Z

    return p0
.end method

.method static synthetic access$002(Lopenlight/co/camera/utils/UsbMgr;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lopenlight/co/camera/utils/UsbMgr;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$100(Lopenlight/co/camera/utils/UsbMgr;)Ljava/util/HashSet;
    .locals 0

    .line 17
    iget-object p0, p0, Lopenlight/co/camera/utils/UsbMgr;->mListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lopenlight/co/camera/utils/UsbMgr;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static get()Lopenlight/co/camera/utils/UsbMgr;
    .locals 1

    .line 46
    sget-object v0, Lopenlight/co/camera/utils/UsbMgr;->sInstance:Lopenlight/co/camera/utils/UsbMgr;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 85
    new-instance v0, Lopenlight/co/camera/utils/UsbMgr;

    invoke-direct {v0, p0}, Lopenlight/co/camera/utils/UsbMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lopenlight/co/camera/utils/UsbMgr;->sInstance:Lopenlight/co/camera/utils/UsbMgr;

    return-void
.end method


# virtual methods
.method public addOnUsbStateChangeListener(Lopenlight/co/camera/utils/UsbMgr$OnUsbConnectedListener;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    iget-object p0, p0, Lopenlight/co/camera/utils/UsbMgr;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isUsbConnected()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lopenlight/co/camera/utils/UsbMgr;->mUsbConnected:Z

    return p0
.end method

.method public removeOnUsbStateChangeListener(Lopenlight/co/camera/utils/UsbMgr$OnUsbConnectedListener;)Z
    .locals 0

    .line 77
    iget-object p0, p0, Lopenlight/co/camera/utils/UsbMgr;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
