.class public Lopenlight/co/camera/view/statusbar/StatusBar;
.super Lopenlight/co/camera/managers/controls/ControlManager;
.source "StatusBar.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar"


# instance fields
.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private final mContext:Landroid/content/Context;

.field private final mImageFragmentView:Landroid/view/ViewGroup;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private final mPrefsListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

.field private mStatusBarView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Lopenlight/co/camera/managers/controls/ControlManager;-><init>()V

    .line 45
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 158
    new-instance v0, Lopenlight/co/camera/view/statusbar/StatusBar$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/statusbar/StatusBar$1;-><init>(Lopenlight/co/camera/view/statusbar/StatusBar;)V

    iput-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mPrefsListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    .line 54
    iput-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mImageFragmentView:Landroid/view/ViewGroup;

    .line 56
    iget-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    if-nez p2, :cond_2a

    const p2, 0x7f0b0063

    .line 58
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mImageFragmentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    .line 61
    :cond_2a
    iget-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    if-eqz p1, :cond_35

    .line 62
    iget-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_35
    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/statusbar/StatusBar;)Lopenlight/co/camera/view/statusbar/StatusAdapter;
    .registers 1

    .line 40
    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    return-object p0
.end method

.method public static synthetic lambda$initChildView$0(Lopenlight/co/camera/view/statusbar/StatusBar;ILjava/lang/String;)V
    .registers 3

    .line 84
    invoke-virtual {p0, p2}, Lopenlight/co/camera/view/statusbar/StatusBar;->onOpenOptionSetting(Ljava/lang/String;)V

    return-void
.end method

.method private updateInitialOrientation()V
    .registers 2

    .line 177
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v0

    .line 178
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/statusbar/StatusBar;->updateListRotation(I)V

    return-void
.end method

.method private updateListRotation(I)V
    .registers 5

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 183
    :goto_6
    iget-object v2, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 184
    iget-object v2, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    const/16 p0, 0xa

    .line 186
    invoke-static {v0, p1, p0}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Ljava/util/List;II)V

    return-void
.end method


# virtual methods
.method public addViewToFragment()V
    .registers 4

    .line 68
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 70
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 71
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 72
    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 74
    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusBar;->initChildView()V

    return-void
.end method

.method public closeAll()V
    .registers 3

    .line 130
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mImageFragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 131
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusBar;->getListenerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mPrefsListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->unregisterChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V

    .line 133
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    :cond_20
    return-void
.end method

.method public disableStatusBar()V
    .registers 4

    const/4 v0, 0x0

    .line 99
    :goto_1
    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 100
    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    .line 101
    invoke-static {}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->values()[Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    move-result-object v2

    aget-object v2, v2, v0

    .line 100
    invoke-virtual {v1, v2}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->createModel(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;)Lopenlight/co/camera/view/statusbar/StatusModel;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    .line 102
    invoke-virtual {v1, v2}, Lopenlight/co/camera/view/statusbar/StatusModel;->setAlpha(F)V

    .line 103
    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    invoke-virtual {v1}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->updateBadge()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public enableStatusBar()V
    .registers 4

    const/4 v0, 0x0

    .line 108
    :goto_1
    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 109
    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    .line 110
    invoke-static {}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->values()[Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    move-result-object v2

    aget-object v2, v2, v0

    .line 109
    invoke-virtual {v1, v2}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->createModel(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;)Lopenlight/co/camera/view/statusbar/StatusModel;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {v1, v2}, Lopenlight/co/camera/view/statusbar/StatusModel;->setAlpha(F)V

    .line 112
    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    invoke-virtual {v1}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->updateBadge()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 151
    const-class p0, Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initChildView()V
    .registers 4

    .line 79
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 80
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 81
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 82
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance v0, Lopenlight/co/camera/view/statusbar/StatusAdapter;

    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lopenlight/co/camera/view/statusbar/StatusAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    .line 84
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    new-instance v1, Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusBar$D6E-9ZbZ9H4SEmIhxtG9kPUYb4A;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusBar$D6E-9ZbZ9H4SEmIhxtG9kPUYb4A;-><init>(Lopenlight/co/camera/view/statusbar/StatusBar;)V

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->setStatusOnClickListener(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusOnClickListener;)V

    .line 85
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 86
    invoke-direct {p0}, Lopenlight/co/camera/view/statusbar/StatusBar;->updateInitialOrientation()V

    .line 87
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mPrefsListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    invoke-interface {v0, p0}, Lopenlight/co/lib/content/Prefs;->registerChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onOpenOptionSetting(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 2

    .line 145
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    .line 146
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/statusbar/StatusBar;->updateListRotation(I)V

    return-void
.end method

.method public openLayoutAnimation()V
    .registers 5

    .line 117
    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 118
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public removeModeSelection()V
    .registers 1

    return-void
.end method

.method public setVisibility(Z)V
    .registers 2

    .line 140
    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusBarView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
