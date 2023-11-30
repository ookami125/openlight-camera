.class public Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AncillaryToolbarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mListItems:[Lopenlight/co/camera/models/AncillaryModel;

.field private final mUtils:Lopenlight/co/lib/utils/Utils;


# direct methods
.method constructor <init>([Lopenlight/co/camera/models/AncillaryModel;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # [Lopenlight/co/camera/models/AncillaryModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mUtils:Lopenlight/co/lib/utils/Utils;

    .line 31
    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mListItems:[Lopenlight/co/camera/models/AncillaryModel;

    .line 32
    iput-object p2, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 83
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mListItems:[Lopenlight/co/camera/models/AncillaryModel;

    array-length p0, p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->onBindViewHolder(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;I)V
    .locals 7

    .line 45
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mListItems:[Lopenlight/co/camera/models/AncillaryModel;

    aget-object v0, v0, p2

    .line 47
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel;->isSelected()Z

    move-result v1

    .line 48
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel;->isEnabled()Z

    move-result v2

    .line 49
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel;->getItemResId()I

    move-result v3

    .line 51
    iget-object v4, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mUtils:Lopenlight/co/lib/utils/Utils;

    invoke-virtual {v4, v3}, Lopenlight/co/lib/utils/Utils;->isStringResource(I)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 53
    iget-object v4, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v3, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mUtils:Lopenlight/co/lib/utils/Utils;

    if-eqz v1, :cond_0

    const v1, 0x7f06001a

    goto :goto_0

    :cond_0
    const v1, 0x7f06001c

    :goto_0
    invoke-virtual {v3, v1}, Lopenlight/co/lib/utils/Utils;->getColor(I)I

    move-result v1

    .line 56
    iget-object v3, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v1, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v1, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 61
    :cond_1
    iget-object v4, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel;->getSelectedResId()I

    move-result v3

    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v1, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v1, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :goto_1
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel;->getPreferencesKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->access$002(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel;->getConfirmationResId()I

    move-result v0

    invoke-static {p1, v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->access$102(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;I)I

    .line 68
    invoke-static {p1, p2}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->access$202(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;I)I

    if-eqz v2, :cond_3

    .line 70
    iget-object p2, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 71
    iget-object p2, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 72
    iget-object p2, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mItemView:Landroid/view/View;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 74
    :cond_3
    iget-object p0, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 75
    iget-object p0, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 76
    iget-object p0, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mItemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :goto_2
    iget-object p0, p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0b001f

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 39
    new-instance p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method updateListItems([Lopenlight/co/camera/models/AncillaryModel;)V
    .locals 0
    .param p1    # [Lopenlight/co/camera/models/AncillaryModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mListItems:[Lopenlight/co/camera/models/AncillaryModel;

    .line 92
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method updateSelectedItemAtPosition(I)V
    .locals 5

    .line 100
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mListItems:[Lopenlight/co/camera/models/AncillaryModel;

    array-length v0, v0

    if-gt p1, v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 104
    iget-object v3, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->mListItems:[Lopenlight/co/camera/models/AncillaryModel;

    aget-object v3, v3, v2

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lopenlight/co/camera/models/AncillaryModel;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
