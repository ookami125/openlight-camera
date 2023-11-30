.class Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/setting/SettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingHolder"
.end annotation


# instance fields
.field final itemIcon:Landroid/widget/ImageView;

.field final optionText:Landroid/widget/TextView;

.field final parentItem:Landroid/view/ViewGroup;

.field final subtitleItem:Landroid/widget/TextView;

.field final switchButton:Landroid/widget/Switch;

.field final titleItem:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 480
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090135

    .line 481
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->parentItem:Landroid/view/ViewGroup;

    const v0, 0x7f090136

    .line 482
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->itemIcon:Landroid/widget/ImageView;

    const v0, 0x7f090185

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    const v0, 0x7f0900d4

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->titleItem:Landroid/widget/TextView;

    const v0, 0x7f0900d3

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->subtitleItem:Landroid/widget/TextView;

    const v0, 0x7f090184

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->optionText:Landroid/widget/TextView;

    return-void
.end method
