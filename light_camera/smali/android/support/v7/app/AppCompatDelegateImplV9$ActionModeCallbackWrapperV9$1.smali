.class Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;)V
    .registers 2

    .line 1816
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 1819
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1820
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1d

    .line 1821
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_3a

    .line 1822
    :cond_1d
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_3a

    .line 1823
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1825
    :cond_3a
    :goto_3a
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 1826
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1827
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method
