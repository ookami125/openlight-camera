.class final Landroid/support/v4/app/FragmentTransition$1;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransition;->replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exitingViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 263
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransition$1;->val$exitingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 266
    iget-object p0, p0, Landroid/support/v4/app/FragmentTransition$1;->val$exitingViews:Ljava/util/ArrayList;

    const/4 v0, 0x4

    # invokes: Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransition;->access$000(Ljava/util/ArrayList;I)V

    return-void
.end method
