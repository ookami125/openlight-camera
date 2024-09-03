.class Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .line 74
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p1
.end method
