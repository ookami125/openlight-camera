.class Landroid/support/v4/view/PagerTabStrip$2;
.super Ljava/lang/Object;
.source "PagerTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/PagerTabStrip;


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerTabStrip;)V
    .registers 2

    .line 115
    iput-object p1, p0, Landroid/support/v4/view/PagerTabStrip$2;->this$0:Landroid/support/v4/view/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 118
    iget-object p1, p0, Landroid/support/v4/view/PagerTabStrip$2;->this$0:Landroid/support/v4/view/PagerTabStrip;

    iget-object p1, p1, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object p0, p0, Landroid/support/v4/view/PagerTabStrip$2;->this$0:Landroid/support/v4/view/PagerTabStrip;

    iget-object p0, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
