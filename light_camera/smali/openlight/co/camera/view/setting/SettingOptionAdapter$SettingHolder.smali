.class Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SettingOptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/setting/SettingOptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingHolder"
.end annotation


# instance fields
.field itemIcon:Landroid/widget/ImageView;

.field itemTitle:Landroid/widget/TextView;

.field itemView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 178
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090135

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900d2

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900d4

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingOptionAdapter$SettingHolder;->itemTitle:Landroid/widget/TextView;

    return-void
.end method
