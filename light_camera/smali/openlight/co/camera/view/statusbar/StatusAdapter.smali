.class public Lopenlight/co/camera/view/statusbar/StatusAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;,
        Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;,
        Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_SETTINGS:I = 0x0

.field private static final TYPE_TOOLBAR:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusOnClickListener;

.field private final mStatusBadgeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lopenlight/co/camera/view/statusbar/StatusModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 155
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mStatusBadgeList:Ljava/util/List;

    .line 156
    iput-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->updateBadge()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .registers 1

    .line 31
    invoke-static {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->getMeteringIcon(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .registers 1

    .line 31
    invoke-static {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->getBurstIcon(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)I
    .registers 1

    .line 31
    invoke-static {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->getCafIcon(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;)I
    .registers 1

    .line 31
    invoke-static {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->getTimerIcon(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getBurstIcon(Ljava/lang/String;)I
    .registers 2

    .line 229
    invoke-static {p0}, Lopenlight/co/camera/enums/BurstMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/BurstMode;

    move-result-object p0

    .line 230
    sget-object v0, Lopenlight/co/camera/enums/BurstMode;->OFF:Lopenlight/co/camera/enums/BurstMode;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Lopenlight/co/camera/enums/BurstMode;->getFirstLevelResId()I

    move-result p0

    :goto_e
    return p0
.end method

.method private static getCafIcon(Ljava/lang/String;)I
    .registers 1

    .line 239
    invoke-static {p0}, Lopenlight/co/camera/enums/CafMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/CafMode;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/enums/CafMode;->getStatusBarId()I

    move-result p0

    return p0
.end method

.method private static getMeteringIcon(Ljava/lang/String;)I
    .registers 2

    .line 224
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    goto :goto_14

    .line 225
    :cond_10
    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->getMeteringIcon(Ljava/lang/String;)I

    move-result p0

    :goto_14
    return p0
.end method

.method private static getTimerIcon(Ljava/lang/String;)I
    .registers 2

    .line 234
    invoke-static {p0}, Lopenlight/co/camera/enums/TimerMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/TimerMode;

    move-result-object p0

    .line 235
    sget-object v0, Lopenlight/co/camera/enums/TimerMode;->OFF:Lopenlight/co/camera/enums/TimerMode;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Lopenlight/co/camera/enums/TimerMode;->getFirstLevelResId()I

    move-result p0

    :goto_e
    return p0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lopenlight/co/camera/view/statusbar/StatusAdapter;Lopenlight/co/camera/view/statusbar/StatusModel;Landroid/view/View;)V
    .registers 3

    .line 196
    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mListener:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusOnClickListener;

    invoke-virtual {p1}, Lopenlight/co/camera/view/statusbar/StatusModel;->getType()I

    move-result p2

    .line 197
    invoke-virtual {p1}, Lopenlight/co/camera/view/statusbar/StatusModel;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-interface {p0, p2, p1}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusOnClickListener;->onStatusClicked(ILjava/lang/String;)V

    return-void
.end method

.method private populateList()V
    .registers 6

    .line 168
    invoke-static {}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->values()[Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 169
    invoke-virtual {p0, v3}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->createModel(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;)Lopenlight/co/camera/view/statusbar/StatusModel;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 170
    invoke-virtual {v3}, Lopenlight/co/camera/view/statusbar/StatusModel;->getIconId()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 171
    iget-object v4, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mStatusBadgeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 174
    :cond_1e
    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method createModel(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;)Lopenlight/co/camera/view/statusbar/StatusModel;
    .registers 2

    .line 178
    invoke-virtual {p1}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->isDisplayed()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lopenlight/co/camera/view/statusbar/StatusModel;

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/statusbar/StatusModel;-><init>(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;)V

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    .line 207
    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mStatusBadgeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 31
    check-cast p1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->onBindViewHolder(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;I)V
    .registers 5

    .line 191
    iget-object p2, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mStatusBadgeList:Ljava/util/List;

    invoke-virtual {p1}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/statusbar/StatusModel;

    .line 192
    invoke-virtual {p2}, Lopenlight/co/camera/view/statusbar/StatusModel;->getIconId()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 193
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lopenlight/co/camera/view/statusbar/StatusModel;->getIconId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 195
    :cond_2f
    iget-object v0, p1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lopenlight/co/camera/view/statusbar/StatusModel;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 196
    iget-object p1, p1, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;->img:Landroid/widget/ImageView;

    new-instance v0, Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusAdapter$1GMsY1uQEVLRzxUyqY1mg3_TO6E;

    invoke-direct {v0, p0, p2}, Lopenlight/co/camera/view/statusbar/-$$Lambda$StatusAdapter$1GMsY1uQEVLRzxUyqY1mg3_TO6E;-><init>(Lopenlight/co/camera/view/statusbar/StatusAdapter;Lopenlight/co/camera/view/statusbar/StatusModel;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;
    .registers 5

    .line 183
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0069

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 185
    new-instance p2, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusHolder;-><init>(Lopenlight/co/camera/view/statusbar/StatusAdapter;Landroid/view/View;Lopenlight/co/camera/view/statusbar/StatusAdapter$1;)V

    return-object p2
.end method

.method public setStatusOnClickListener(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusOnClickListener;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mListener:Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusOnClickListener;

    return-void
.end method

.method updateBadge()V
    .registers 2

    .line 161
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusAdapter;->mStatusBadgeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    invoke-direct {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->populateList()V

    :cond_c
    return-void
.end method
