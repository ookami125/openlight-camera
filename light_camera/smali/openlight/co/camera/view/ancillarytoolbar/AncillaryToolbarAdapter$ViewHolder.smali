.class public Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AncillaryToolbarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mConfirmationResId:I

.field final mImageView:Landroid/widget/ImageView;

.field private mItemPosition:I

.field final mItemView:Landroid/view/View;

.field private mKey:Ljava/lang/String;

.field final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 126
    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mItemView:Landroid/view/View;

    const v0, 0x7f0900ec

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0900ed

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$002(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 113
    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;I)I
    .registers 2

    .line 113
    iput p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mConfirmationResId:I

    return p1
.end method

.method static synthetic access$202(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;I)I
    .registers 2

    .line 113
    iput p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mItemPosition:I

    return p1
.end method


# virtual methods
.method public getConfirmationResId()I
    .registers 1

    .line 141
    iget p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mConfirmationResId:I

    return p0
.end method

.method public getItemPosition()I
    .registers 1

    .line 137
    iget p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mItemPosition:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 133
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->mKey:Ljava/lang/String;

    return-object p0
.end method
