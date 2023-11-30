.class public Lopenlight/co/camera/view/assistance/AssistScreen;
.super Landroid/widget/FrameLayout;
.source "AssistScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_REMOVE_ASSIST_TEXT:I = 0x1

.field private static final REMOVE_ASSIST_TEXT_DELAY:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "AssistScreen"


# instance fields
.field private mAssistFtuText:Landroid/widget/TextView;

.field private mAssistImage:Landroid/widget/ImageView;

.field private mAssistPrefsKey:Ljava/lang/String;

.field private mAssistText:Landroid/widget/TextView;

.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private mFtuAssistTextShown:Z

.field private final mMainLooperHandler:Landroid/os/Handler;

.field private mWarningFtuLayout:Landroid/view/ViewGroup;

.field private mWarningFtuText:Ljava/lang/String;

.field private mWarningImage:Landroid/graphics/drawable/Drawable;

.field private mWarningText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 56
    new-instance v0, Lopenlight/co/camera/view/assistance/AssistScreen$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/view/assistance/AssistScreen$1;-><init>(Lopenlight/co/camera/view/assistance/AssistScreen;Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/assistance/AssistScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 56
    new-instance v0, Lopenlight/co/camera/view/assistance/AssistScreen$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/view/assistance/AssistScreen$1;-><init>(Lopenlight/co/camera/view/assistance/AssistScreen;Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mMainLooperHandler:Landroid/os/Handler;

    .line 76
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/assistance/AssistScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object p3

    iput-object p3, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 56
    new-instance p3, Lopenlight/co/camera/view/assistance/AssistScreen$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lopenlight/co/camera/view/assistance/AssistScreen$1;-><init>(Lopenlight/co/camera/view/assistance/AssistScreen;Landroid/os/Looper;)V

    iput-object p3, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mMainLooperHandler:Landroid/os/Handler;

    .line 82
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/assistance/AssistScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lopenlight/co/camera/view/assistance/AssistScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/assistance/AssistScreen;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/assistance/AssistScreen;Landroid/view/View;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/assistance/AssistScreen;->setVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/R$styleable;->WarningView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 156
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningText:Ljava/lang/String;

    const/4 p2, 0x3

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningImage:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    .line 158
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningFtuText:Ljava/lang/String;

    .line 159
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistPrefsKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    throw p0

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lopenlight/co/camera/view/assistance/AssistScreen;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setFtuMessage()V
    .locals 2

    .line 174
    iget-boolean v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mFtuAssistTextShown:Z

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistPrefsKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistPrefsKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mFtuAssistTextShown:Z

    .line 180
    iget-boolean v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mFtuAssistTextShown:Z

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningFtuLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lopenlight/co/camera/view/assistance/AssistScreen;->setVisibility(Landroid/view/View;Z)V

    .line 182
    iput-boolean v1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mFtuAssistTextShown:Z

    :cond_1
    return-void
.end method

.method private setVisibility(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 194
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public displayAssist()V
    .locals 2

    .line 90
    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistImage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lopenlight/co/camera/view/assistance/AssistScreen;->setVisibility(Landroid/view/View;Z)V

    .line 92
    invoke-direct {p0}, Lopenlight/co/camera/view/assistance/AssistScreen;->setFtuMessage()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f090190

    if-ne v0, v3, :cond_0

    .line 104
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistPrefsKey:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 105
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistPrefsKey:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Z)V

    .line 106
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningFtuLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Lopenlight/co/camera/view/assistance/AssistScreen;->setVisibility(Landroid/view/View;Z)V

    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090192

    if-ne p1, v0, :cond_3

    .line 109
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 111
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lopenlight/co/camera/view/assistance/AssistScreen;->setVisibility(Landroid/view/View;Z)V

    .line 112
    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lopenlight/co/camera/view/assistance/AssistScreen;->setVisibility(Landroid/view/View;Z)V

    .line 115
    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 125
    invoke-virtual {p0}, Lopenlight/co/camera/view/assistance/AssistScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-static {v0, v1, p0}, Lopenlight/co/camera/view/assistance/AssistScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090192

    .line 128
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/assistance/AssistScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistImage:Landroid/widget/ImageView;

    const v0, 0x7f090194

    .line 129
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/assistance/AssistScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistText:Landroid/widget/TextView;

    const v0, 0x7f090191

    .line 130
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/assistance/AssistScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistFtuText:Landroid/widget/TextView;

    const v0, 0x7f09018f

    .line 131
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/assistance/AssistScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningFtuLayout:Landroid/view/ViewGroup;

    .line 134
    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistText:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistFtuText:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mWarningFtuText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090190

    .line 137
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/assistance/AssistScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lopenlight/co/camera/view/assistance/AssistScreen;->mAssistImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
