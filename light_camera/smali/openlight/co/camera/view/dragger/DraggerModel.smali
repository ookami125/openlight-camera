.class public abstract Lopenlight/co/camera/view/dragger/DraggerModel;
.super Ljava/lang/Object;
.source "DraggerModel.java"


# static fields
.field protected static final MSG_EXPOSURE_PREF_UPDATE:I = 0x2

.field protected static final MSG_EXP_COMP_PREF_UPDATE:I = 0x0

.field protected static final MSG_ISO_PREF_UPDATE:I = 0x1

.field protected static final MSG_MODE_PREF_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DraggerModel"

.field private static final THRESHOLD_MSG_PROCESSING_TIME:I = 0x10

.field private static final mCamPrefs:Lopenlight/co/lib/content/Prefs;


# instance fields
.field public mAngleBetweenItemsInDegrees:I

.field protected final mCameraManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDelayHandler:Landroid/os/Handler;

.field public mDownIcon:I

.field protected mIsWheelReverseScroll:Z

.field public mItemsLabel:[Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPositionFromDrag:F

.field public mPositionFromSubject:F

.field protected mPreviousCalculatedIndex:I

.field public mUpIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mCamPrefs:Lopenlight/co/lib/content/Prefs;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mPositionFromDrag:F

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mUpIcon:I

    .line 56
    iput v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mDownIcon:I

    const/16 v1, 0xc

    .line 61
    iput v1, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mAngleBetweenItemsInDegrees:I

    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mPreviousCalculatedIndex:I

    .line 69
    iput-boolean v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mIsWheelReverseScroll:Z

    .line 79
    sget-object v0, Lopenlight/co/camera/view/dragger/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/view/dragger/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    iput-object v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 94
    new-instance v0, Lopenlight/co/camera/view/dragger/DraggerModel$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/view/dragger/DraggerModel$1;-><init>(Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mDelayHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lopenlight/co/lib/content/Prefs;
    .locals 1

    .line 25
    sget-object v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mCamPrefs:Lopenlight/co/lib/content/Prefs;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lopenlight/co/camera/view/dragger/DraggerModel;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract indexOfSelectedItem()I
.end method

.method public abstract initialPositionFromSubject()F
.end method

.method public abstract positionFromSubject()F
.end method

.method public abstract release()V
.end method

.method protected sendMessageDelayed(II)V
    .locals 1

    .line 168
    iget-object v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 171
    iput p2, v0, Landroid/os/Message;->what:I

    .line 173
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 174
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mDelayHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x10

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setOnControlCompleteListener(Lopenlight/co/camera/listener/ControlCompleteListener;)V
    .locals 0

    return-void
.end method

.method public abstract updateHudInfoInPreview()V
.end method

.method protected updatePositionFromSubject()V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;->positionFromSubject()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel;->mPositionFromSubject:F

    return-void
.end method

.method public abstract updateSubject(F)V
.end method
