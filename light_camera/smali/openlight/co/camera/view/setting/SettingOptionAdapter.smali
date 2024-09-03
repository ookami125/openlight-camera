.class Lopenlight/co/camera/view/setting/SettingOptionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SettingOptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;,
        Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MARGIN_FACTOR:I = 0x18

.field private static final TAG:Ljava/lang/String; = "SettingOptionAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentSelected:Ljava/lang/String;

.field private mHighlightSelected:Z

.field private mMarginValue:I

.field private mSelectedListener:Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;

.field private mSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lopenlight/co/camera/view/setting/SettingModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 6

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mHighlightSelected:Z

    .line 49
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    if-nez v0, :cond_18

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    .line 52
    :cond_18
    iput-object p3, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mCurrentSelected:Ljava/lang/String;

    .line 53
    iput-boolean p4, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mHighlightSelected:Z

    .line 54
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_23

    .line 56
    invoke-direct {p0, p2}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->updateData(I)V

    :cond_23
    return-void
.end method

.method private createSettingModel(ILjava/lang/String;)Lopenlight/co/camera/view/setting/SettingModel;
    .registers 5

    const/4 p0, 0x0

    const v0, 0x7f030003

    if-eq p1, v0, :cond_7

    goto :goto_19

    .line 97
    :cond_7
    invoke-static {p2}, Lopenlight/co/camera/enums/MeteringMode;->forTag(Ljava/lang/String;)Lopenlight/co/camera/enums/MeteringMode;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 99
    invoke-virtual {p1}, Lopenlight/co/camera/enums/MeteringMode;->getMeteringSelectedIcon()I

    move-result p0

    .line 100
    invoke-virtual {p1}, Lopenlight/co/camera/enums/MeteringMode;->getMeteringIcon()I

    move-result p1

    move v1, p1

    move p1, p0

    move p0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move p1, p0

    :goto_1a
    const/4 v0, 0x0

    .line 106
    invoke-static {p2, v0, p0, p1}, Lopenlight/co/camera/view/setting/SettingModel;->newModel(Ljava/lang/String;Ljava/lang/String;II)Lopenlight/co/camera/view/setting/SettingModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lopenlight/co/camera/view/setting/SettingOptionAdapter;Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;Landroid/view/View;)V
    .registers 3

    .line 144
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/view/setting/SettingModel;

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mCurrentSelected:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSelectedListener:Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;

    if-eqz p1, :cond_1d

    .line 146
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSelectedListener:Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;

    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mCurrentSelected:Ljava/lang/String;

    invoke-interface {p1, p2}, Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;->onOptionItemSelected(Ljava/lang/String;)V

    .line 148
    :cond_1d
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private populateList(I[Ljava/lang/String;)V
    .registers 7

    .line 77
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    array-length v0, p2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    aget-object v2, p2, v1

    .line 79
    invoke-direct {p0, p1, v2}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->createSettingModel(ILjava/lang/String;)Lopenlight/co/camera/view/setting/SettingModel;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method private setIcon(Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;I)V
    .registers 3

    if-eqz p2, :cond_e

    .line 160
    iget-object p0, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object p0, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    .line 163
    :cond_e
    iget-object p0, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_15
    return-void
.end method

.method private updateData(I)V
    .registers 3

    .line 61
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_19

    .line 62
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->populateList(I[Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->notifyDataSetChanged()V

    :cond_19
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 169
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 20
    check-cast p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->onBindViewHolder(Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;I)V
    .registers 7

    .line 123
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/setting/SettingModel;

    if-nez p2, :cond_b

    return-void

    .line 125
    :cond_b
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemView:Landroid/widget/RelativeLayout;

    .line 126
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    iget v1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mMarginValue:I

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 128
    iget v1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mMarginValue:I

    add-int/lit8 v1, v1, -0x18

    iget v2, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mMarginValue:I

    add-int/lit8 v2, v2, -0x18

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 129
    iget-object v1, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :cond_2a
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-boolean v1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mHighlightSelected:Z

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mCurrentSelected:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mCurrentSelected:Ljava/lang/String;

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 136
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getSelectedIconId()I

    move-result p2

    goto :goto_64

    .line 139
    :cond_5a
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getIconId()I

    move-result p2

    .line 142
    :goto_64
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->setIcon(Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;I)V

    .line 143
    iget-object p2, p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemView:Landroid/widget/RelativeLayout;

    new-instance v0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingOptionAdapter$tWJDrBuV-OKPSDJYWRjI-Ud6TgI;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingOptionAdapter$tWJDrBuV-OKPSDJYWRjI-Ud6TgI;-><init>(Lopenlight/co/camera/view/setting/SettingOptionAdapter;Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 20
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;
    .registers 4

    .line 116
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0b0066

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 118
    new-instance p1, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method setMarginValue(I)V
    .registers 2

    .line 110
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mMarginValue:I

    .line 111
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setSelectedListener(Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->mSelectedListener:Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;

    return-void
.end method
