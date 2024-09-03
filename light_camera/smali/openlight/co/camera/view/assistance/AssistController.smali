.class public Lopenlight/co/camera/view/assistance/AssistController;
.super Ljava/lang/Object;
.source "AssistController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/assistance/AssistController$AssistType;
    }
.end annotation


# static fields
.field private static final HIDE_HANDSHAKE_ASSIST_DELAY_MS:I = 0x3e8


# instance fields
.field private mHandShakeAssistView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mHideHandshakeAssist:Ljava/lang/Runnable;

.field private final mLowLightAssistView:Landroid/view/View;

.field private final mTripodAssistView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lopenlight/co/camera/view/assistance/-$$Lambda$AssistController$Ij-aoe96on0C9XWkx7QvphqqKrU;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/assistance/-$$Lambda$AssistController$Ij-aoe96on0C9XWkx7QvphqqKrU;-><init>(Lopenlight/co/camera/view/assistance/AssistController;)V

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHideHandshakeAssist:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0070

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0900f1

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mLowLightAssistView:Landroid/view/View;

    const v1, 0x7f090183

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mTripodAssistView:Landroid/view/View;

    const v1, 0x7f0900b3

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandShakeAssistView:Landroid/view/View;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lopenlight/co/camera/view/assistance/AssistController;)V
    .registers 2

    .line 26
    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandShakeAssistView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 27
    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandShakeAssistView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private showAssistWarning(Landroid/view/View;)V
    .registers 2

    .line 105
    check-cast p1, Lopenlight/co/camera/view/assistance/AssistScreen;

    invoke-virtual {p1}, Lopenlight/co/camera/view/assistance/AssistScreen;->displayAssist()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 96
    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public show(ZLopenlight/co/camera/view/assistance/AssistController$AssistType;)V
    .registers 5

    const/16 v0, 0x8

    if-eqz p1, :cond_50

    .line 57
    sget-object p1, Lopenlight/co/camera/view/assistance/AssistController$1;->$SwitchMap$light$co$camera$view$assistance$AssistController$AssistType:[I

    invoke-virtual {p2}, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_6e

    goto :goto_6d

    .line 72
    :pswitch_11
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mTripodAssistView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_6d

    .line 74
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandShakeAssistView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandShakeAssistView:Landroid/view/View;

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/assistance/AssistController;->showAssistWarning(Landroid/view/View;)V

    goto :goto_6d

    .line 63
    :pswitch_24
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mTripodAssistView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mTripodAssistView:Landroid/view/View;

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/assistance/AssistController;->showAssistWarning(Landroid/view/View;)V

    .line 65
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mLowLightAssistView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandShakeAssistView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6d

    .line 67
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHideHandshakeAssist:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6d

    .line 59
    :pswitch_45
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mLowLightAssistView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistController;->mLowLightAssistView:Landroid/view/View;

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/assistance/AssistController;->showAssistWarning(Landroid/view/View;)V

    goto :goto_6d

    .line 80
    :cond_50
    sget-object p1, Lopenlight/co/camera/view/assistance/AssistController$1;->$SwitchMap$light$co$camera$view$assistance$AssistController$AssistType:[I

    invoke-virtual {p2}, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_78

    goto :goto_6d

    .line 88
    :pswitch_5c
    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mHandShakeAssistView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    .line 85
    :pswitch_62
    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mTripodAssistView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    .line 82
    :pswitch_68
    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistController;->mLowLightAssistView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6d
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_24
        :pswitch_11
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_68
        :pswitch_62
        :pswitch_5c
    .end packed-switch
.end method
