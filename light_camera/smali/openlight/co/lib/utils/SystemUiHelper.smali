.class public Lopenlight/co/lib/utils/SystemUiHelper;
.super Ljava/lang/Object;
.source "SystemUiHelper.java"


# instance fields
.field private mDelayToHide:I

.field private mExtraFlags:I

.field private final mIsActivity:Z

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/utils/SystemUiHelper;-><init>(Landroid/view/Window;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/utils/SystemUiHelper;-><init>(Landroid/view/Window;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/view/Window;Z)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mWindow:Landroid/view/Window;

    .line 69
    iput-boolean p2, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mIsActivity:Z

    .line 70
    iget-object p1, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lopenlight/co/lib/utils/-$$Lambda$SystemUiHelper$ixUU2dK-11-2j1T6g8OCLmxFw9w;

    invoke-direct {p2, p0}, Lopenlight/co/lib/utils/-$$Lambda$SystemUiHelper$ixUU2dK-11-2j1T6g8OCLmxFw9w;-><init>(Lopenlight/co/lib/utils/SystemUiHelper;)V

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private hideSystemUI()V
    .locals 2

    .line 43
    iget v0, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mExtraFlags:I

    iget-boolean v1, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mIsActivity:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x400

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    or-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 49
    iget-boolean v0, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mIsActivity:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object p0, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$9YGHZ_E6NkhiP_XOD34ENT-PesA(Lopenlight/co/lib/utils/SystemUiHelper;)V
    .locals 0

    invoke-direct {p0}, Lopenlight/co/lib/utils/SystemUiHelper;->hideSystemUI()V

    return-void
.end method

.method public static synthetic lambda$ixUU2dK-11-2j1T6g8OCLmxFw9w(Lopenlight/co/lib/utils/SystemUiHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lopenlight/co/lib/utils/SystemUiHelper;->onSystemUiVisibilityChange(I)V

    return-void
.end method

.method private onSystemUiVisibilityChange(I)V
    .locals 3

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lopenlight/co/lib/utils/-$$Lambda$SystemUiHelper$9YGHZ_E6NkhiP_XOD34ENT-PesA;

    invoke-direct {v0, p0}, Lopenlight/co/lib/utils/-$$Lambda$SystemUiHelper$9YGHZ_E6NkhiP_XOD34ENT-PesA;-><init>(Lopenlight/co/lib/utils/SystemUiHelper;)V

    iget p0, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mDelayToHide:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public delayToHide(I)Lopenlight/co/lib/utils/SystemUiHelper;
    .locals 0

    .line 28
    iput p1, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mDelayToHide:I

    return-object p0
.end method

.method public extraFlags(I)Lopenlight/co/lib/utils/SystemUiHelper;
    .locals 0

    .line 33
    iput p1, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mExtraFlags:I

    return-object p0
.end method

.method public release()V
    .locals 1

    .line 58
    iget-object p0, p0, Lopenlight/co/lib/utils/SystemUiHelper;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public start()Lopenlight/co/lib/utils/SystemUiHelper;
    .locals 0

    .line 38
    invoke-direct {p0}, Lopenlight/co/lib/utils/SystemUiHelper;->hideSystemUI()V

    return-object p0
.end method
