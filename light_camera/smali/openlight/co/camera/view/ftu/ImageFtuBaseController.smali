.class public abstract Lopenlight/co/camera/view/ftu/ImageFtuBaseController;
.super Ljava/lang/Object;
.source "ImageFtuBaseController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lopenlight/co/camera/view/ftu/OnFtuActionListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;,
        Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;,
        Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;
    }
.end annotation


# static fields
.field protected static final DISPLAY_POST_USER_INTERACTION_DELAY:I = 0x7d0

.field protected static final MSG_INCORRECT_USER_RESPONSE:I = 0xc9

.field protected static final MSG_NO_RESPONSE_ON_IMAGE_FTU:I = 0xcb

.field protected static final MSG_USER_INPUT_COMPLETE:I = 0xca

.field protected static final NO_RESPONSE_DURATION:I = 0x1388


# instance fields
.field protected mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

.field protected mCurrentType:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

.field protected mCurrentView:Lopenlight/co/camera/enums/FtuView;

.field protected mIsShown:Z

.field private mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

.field protected final mMainLooperHandler:Landroid/os/Handler;

.field protected mPreviousView:Lopenlight/co/camera/enums/FtuView;

.field protected mRootContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->IDLE:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mIsShown:Z

    .line 78
    new-instance v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;-><init>(Lopenlight/co/camera/view/ftu/ImageFtuBaseController;Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mMainLooperHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/ftu/ImageFtuBaseController;)Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;
    .registers 1

    .line 20
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    return-object p0
.end method

.method private isSingleRun()Z
    .registers 2

    .line 220
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentType:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method protected abstract displayFtuScreen()V
.end method

.method protected abstract getViewForFtu(Lopenlight/co/camera/enums/FtuView;)Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.end method

.method protected isPlayAll()Z
    .registers 2

    .line 229
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentType:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->PLAY_ALL:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onButtonClicked()V
    .registers 3

    .line 134
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$2;->$SwitchMap$light$co$camera$enums$FtuView:[I

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {v1}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    goto :goto_6a

    .line 169
    :pswitch_e
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    if-eqz v0, :cond_6a

    .line 170
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    sget-object v0, Lopenlight/co/camera/enums/FtuView;->FOCUS_FAILED:Lopenlight/co/camera/enums/FtuView;

    invoke-interface {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;->onSingleRunComplete(Lopenlight/co/camera/enums/FtuView;)V

    goto :goto_6a

    .line 163
    :pswitch_1a
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->isSingleRun()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    if-eqz v0, :cond_6a

    .line 164
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->IDLE:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    .line 165
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-interface {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;->onSingleRunComplete(Lopenlight/co/camera/enums/FtuView;)V

    goto :goto_6a

    .line 155
    :pswitch_30
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->isSingleRun()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 156
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->PAUSED:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    .line 157
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->displayFtuScreen()V

    goto :goto_6a

    .line 146
    :pswitch_3e
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    if-eqz v0, :cond_6a

    .line 147
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->IDLE:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    .line 148
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    invoke-interface {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;->onPlayAllComplete()V

    goto :goto_6a

    .line 137
    :pswitch_4c
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->isPlayAll()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 138
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->displayFtuScreen()V

    .line 140
    :cond_55
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->isSingleRun()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    if-eqz v0, :cond_6a

    .line 141
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->IDLE:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    .line 142
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-interface {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;->onSingleRunComplete(Lopenlight/co/camera/enums/FtuView;)V

    :cond_6a
    :goto_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4c
        :pswitch_3e
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_e
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected abstract onIncorrectResponseInPrime()V
.end method

.method public onScreenScrolled()V
    .registers 4

    const/4 v0, 0x0

    .line 178
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->setOnAnimationPlaying(Z)V

    .line 179
    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    if-eqz v1, :cond_f

    .line 180
    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-interface {v1, v2}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;->onUserActionRequired(Lopenlight/co/camera/enums/FtuView;)V

    .line 182
    :cond_f
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->show(Z)V

    .line 185
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->PAUSED:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method protected setFtuActionListener(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    return-void
.end method

.method protected setViewVisibility(Landroid/view/View;Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_7

    const/4 p0, 0x0

    goto :goto_9

    :cond_7
    const/16 p0, 0x8

    .line 205
    :goto_9
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected abstract show(Z)V
.end method

.method protected updateCurrentView()V
    .registers 2

    .line 209
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    if-eqz v0, :cond_b

    .line 210
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-interface {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;->onCurrentViewChanged(Lopenlight/co/camera/enums/FtuView;)V

    :cond_b
    return-void
.end method

.method protected abstract updateVisibilityOfView(Z)V
.end method
