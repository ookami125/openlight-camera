.class public Lopenlight/co/camera/view/ftu/FtuHelper;
.super Ljava/lang/Object;
.source "FtuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FtuHelper"

.field private static final sInstance:Lopenlight/co/camera/view/ftu/FtuHelper;


# instance fields
.field protected final mCameraPref:Lopenlight/co/lib/content/Prefs;

.field private mFtuActionListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

.field private mFtuAlertController:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;

.field private mFtuController:Lopenlight/co/lib/overlays/FtuController;

.field private mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

.field private mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-direct {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;-><init>()V

    sput-object v0, Lopenlight/co/camera/view/ftu/FtuHelper;->sInstance:Lopenlight/co/camera/view/ftu/FtuHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    .line 70
    new-instance v0, Lopenlight/co/camera/view/ftu/FtuHelper$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/ftu/FtuHelper$1;-><init>(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuActionListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    return-object p0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/ImageFtuController;
    .registers 1

    .line 21
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->closeFtuController()V

    return-void
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->updateDraggerModel()V

    return-void
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->updateFtuPlayAllPreference()V

    return-void
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->updateFtuAlertPreference()V

    return-void
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->closeFtuAlertController()V

    return-void
.end method

.method static synthetic access$700(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->updateVideoFtuVideoPreference()V

    return-void
.end method

.method static synthetic access$800(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->closeQualityFtu()V

    return-void
.end method

.method private closeFtuAlertController()V
    .registers 3

    .line 357
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuAlertController:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;

    if-eqz v0, :cond_d

    .line 358
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuAlertController:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->show(Z)V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuAlertController:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;

    :cond_d
    return-void
.end method

.method private closeFtuController()V
    .registers 3

    .line 347
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    if-eqz v0, :cond_d

    .line 348
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->show(Z)V

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    :cond_d
    return-void
.end method

.method private closeQualityFtu()V
    .registers 3

    .line 337
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuController:Lopenlight/co/lib/overlays/FtuController;

    if-eqz v0, :cond_d

    .line 338
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuController:Lopenlight/co/lib/overlays/FtuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/lib/overlays/FtuController;->show(Z)V

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuController:Lopenlight/co/lib/overlays/FtuController;

    :cond_d
    return-void
.end method

.method public static get()Lopenlight/co/camera/view/ftu/FtuHelper;
    .registers 1

    .line 26
    sget-object v0, Lopenlight/co/camera/view/ftu/FtuHelper;->sInstance:Lopenlight/co/camera/view/ftu/FtuHelper;

    return-object v0
.end method

.method private isFirstTimeFocusFailed()Z
    .registers 2

    .line 370
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "ftu_user_focus_failed"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getBooleanValue(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateDraggerModel()V
    .registers 2

    .line 328
    new-instance p0, Lopenlight/co/camera/models/DraggerModelHelper;

    .line 329
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/models/DraggerModelHelper;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {p0}, Lopenlight/co/camera/models/DraggerModelHelper;->resetValues()V

    return-void
.end method

.method private updateFtuAlertPreference()V
    .registers 3

    .line 320
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "ftu_user_focus_failed"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateFtuPlayAllPreference()V
    .registers 3

    .line 306
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "ftu_user_play_all"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateVideoFtuVideoPreference()V
    .registers 3

    .line 313
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "ftu_video_user"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public closeFtu()V
    .registers 1

    .line 242
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->closeFtuController()V

    .line 243
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->closeQualityFtu()V

    return-void
.end method

.method public isFirstTimeUser()Z
    .registers 2

    .line 146
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "ftu_user_play_all"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFirstTimeVideoUser()Z
    .registers 2

    .line 156
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "ftu_video_user"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFtuPlaying()Z
    .registers 2

    .line 165
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    if-nez v0, :cond_b

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuController:Lopenlight/co/lib/overlays/FtuController;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public onUserActionComplete(Lopenlight/co/camera/enums/FtuView;)V
    .registers 3

    .line 281
    sget-object v0, Lopenlight/co/camera/view/ftu/FtuHelper$3;->$SwitchMap$light$co$camera$enums$FtuView:[I

    invoke-virtual {p1}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_34

    goto :goto_33

    .line 295
    :pswitch_c
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    if-eqz p1, :cond_33

    .line 296
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->onWheelScrollComplete()V

    goto :goto_33

    .line 289
    :pswitch_16
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    if-eqz p1, :cond_33

    .line 290
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    invoke-interface {p1}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuRemoveZoomView()V

    .line 291
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->onFlickToPrimeComplete()V

    goto :goto_33

    .line 283
    :pswitch_25
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    if-eqz p1, :cond_33

    .line 284
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    invoke-interface {p1}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuRemoveZoomView()V

    .line 285
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->onScrollToZoomComplete()V

    :cond_33
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_25
        :pswitch_16
        :pswitch_c
    .end packed-switch
.end method

.method public onWaitingUserAction(Lopenlight/co/camera/enums/FtuView;)V
    .registers 3

    .line 261
    sget-object v0, Lopenlight/co/camera/view/ftu/FtuHelper$3;->$SwitchMap$light$co$camera$enums$FtuView:[I

    invoke-virtual {p1}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_22

    goto :goto_21

    .line 268
    :pswitch_c
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    if-eqz p1, :cond_21

    .line 269
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setDelayIncorrectUserResponse()V

    goto :goto_21

    .line 264
    :pswitch_16
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->show(Z)V

    .line 265
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setDelayIncorrectUserResponse()V

    :cond_21
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_c
    .end packed-switch
.end method

.method public setFtuHelperListener(Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    return-void
.end method

.method public showEditFtu(Landroid/view/ViewGroup;I)V
    .registers 4

    .line 196
    new-instance p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 197
    invoke-virtual {p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->addView()V

    return-void
.end method

.method public showFtuAlert(Landroid/view/ViewGroup;Lopenlight/co/camera/enums/FtuView;)V
    .registers 5

    .line 231
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFirstTimeFocusFailed()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 232
    :cond_d
    new-instance v0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;

    const v1, 0x7f0b0047

    invoke-direct {v0, p1, v1, p2}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;-><init>(Landroid/view/ViewGroup;ILopenlight/co/camera/enums/FtuView;)V

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuAlertController:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;

    .line 234
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuAlertController:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;

    iget-object p2, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuActionListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->setFtuActionListener(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;)V

    .line 235
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuAlertController:Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuAlertController;->show(Z)V

    return-void

    :cond_25
    :goto_25
    return-void
.end method

.method public showImageFtu(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lopenlight/co/camera/enums/FtuView;Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V
    .registers 14

    .line 180
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    if-nez v0, :cond_14

    .line 181
    new-instance v0, Lopenlight/co/camera/view/ftu/ImageFtuController;

    const v5, 0x7f0b0048

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/view/ftu/ImageFtuController;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;ILopenlight/co/camera/enums/FtuView;Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    .line 184
    :cond_14
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    iget-object p2, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuActionListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setFtuActionListener(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;)V

    .line 185
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->show(Z)V

    return-void
.end method

.method public showQualityFtu(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 6

    .line 206
    new-instance v0, Lopenlight/co/lib/overlays/FtuController;

    const v1, 0x7f0b005f

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lopenlight/co/lib/overlays/FtuController;-><init>(Landroid/view/ViewGroup;Landroid/view/View;II)V

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuController:Lopenlight/co/lib/overlays/FtuController;

    .line 208
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuController:Lopenlight/co/lib/overlays/FtuController;

    new-instance p2, Lopenlight/co/camera/view/ftu/FtuHelper$2;

    invoke-direct {p2, p0}, Lopenlight/co/camera/view/ftu/FtuHelper$2;-><init>(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    invoke-virtual {p1, p2}, Lopenlight/co/lib/overlays/FtuController;->setOnScreenChangedListener(Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;)V

    .line 221
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper;->mFtuController:Lopenlight/co/lib/overlays/FtuController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lopenlight/co/lib/overlays/FtuController;->show(Z)V

    return-void
.end method
