.class Landroid/support/design/widget/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .registers 2

    .line 2185
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .line 2190
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .registers 1

    .line 2195
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method
