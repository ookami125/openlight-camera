.class Landroid/support/v4/app/Fragment$2;
.super Landroid/support/v4/app/FragmentContainer;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 2

    .line 2296
    iput-object p1, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 4

    .line 2313
    iget-object p0, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2300
    iget-object v0, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2303
    iget-object p0, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 2301
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment does not have a view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHasView()Z
    .registers 1

    .line 2308
    iget-object p0, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
