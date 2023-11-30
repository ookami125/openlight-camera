.class public abstract Lopenlight/co/lib/view/LightFragment;
.super Landroid/app/Fragment;
.source "LightFragment.java"

# interfaces
.implements Lopenlight/co/lib/view/OnOrientationChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMethodIsStateSaved:Ljava/lang/reflect/Method;


# instance fields
.field private mIsStateSaved:Z

.field private mOnOrientationChange:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const-class v0, Lopenlight/co/lib/view/LightFragment;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/view/LightFragment;->TAG:Ljava/lang/String;

    .line 40
    :try_start_0
    const-class v0, Landroid/app/Fragment;

    const-string v1, "isStateSaved"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/view/LightFragment;->sMethodIsStateSaved:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    sget-object v0, Lopenlight/co/lib/view/LightFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running on Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". No isStateSaved()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public checkStateSaved()Z
    .locals 3

    .line 186
    sget-object v0, Lopenlight/co/lib/view/LightFragment;->sMethodIsStateSaved:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    sget-object v0, Lopenlight/co/lib/view/LightFragment;->sMethodIsStateSaved:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lopenlight/co/lib/view/LightFragment;->TAG:Ljava/lang/String;

    const-string v2, "Tried to call isStateSaved() via reflection, but didn\'t work"

    invoke-static {v1, v2, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 194
    :cond_0
    iget-boolean p0, p0, Lopenlight/co/lib/view/LightFragment;->mIsStateSaved:Z

    return p0
.end method

.method protected doOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method protected forceLandscapeMode(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    invoke-virtual {p0}, Lopenlight/co/lib/view/LightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 225
    :goto_0
    invoke-virtual {p0}, Lopenlight/co/lib/view/LightFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 231
    :cond_1
    iput-object p1, p0, Lopenlight/co/lib/view/LightFragment;->mOnOrientationChange:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lopenlight/co/lib/view/LightFragment;->mIsStateSaved:Z

    .line 91
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object p1

    const-string v0, "onActivityCreated()"

    invoke-virtual {p1, p0, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object p1

    const-string v0, "onAttach()"

    invoke-virtual {p1, p0, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object p1

    const-string v0, "onCreate()"

    invoke-virtual {p1, p0, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lopenlight/co/lib/view/LightFragment;->mIsStateSaved:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 73
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onCreateView()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 161
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onDestroy()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 150
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 151
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onDestroyView()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lopenlight/co/lib/view/LightFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 153
    instance-of v1, v0, Lopenlight/co/lib/view/OrientationChangeSource;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Lopenlight/co/lib/view/OrientationChangeSource;

    invoke-interface {v0, p0}, Lopenlight/co/lib/view/OrientationChangeSource;->removeOnOrientationChangedListener(Lopenlight/co/lib/view/OnOrientationChangedListener;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 166
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 167
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onDetach()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 144
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onLowMemory()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public final onOrientationChanged(I)V
    .locals 3

    .line 172
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lopenlight/co/lib/view/LightFragment;->mOnOrientationChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lopenlight/co/lib/view/LightFragment;->mOnOrientationChange:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lopenlight/co/lib/view/LightFragment;->mOnOrientationChange:Ljava/lang/Runnable;

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lopenlight/co/lib/view/LightFragment;->doOrientationChanged(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 119
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onPause()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lopenlight/co/lib/view/LightFragment;->mIsStateSaved:Z

    .line 106
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onResume()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lopenlight/co/lib/view/LightFragment;->mIsStateSaved:Z

    .line 113
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object p1

    const-string v0, "onSaveInstanceState()"

    invoke-virtual {p1, p0, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lopenlight/co/lib/view/LightFragment;->mIsStateSaved:Z

    .line 99
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onStart()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lopenlight/co/lib/view/LightFragment;->mIsStateSaved:Z

    .line 126
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onStop()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lopenlight/co/lib/view/LightFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object p1

    const-string p2, "onViewCreated()"

    invoke-virtual {p1, p0, p2}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lopenlight/co/lib/view/LightFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 82
    instance-of p2, p1, Lopenlight/co/lib/view/OrientationChangeSource;

    if-eqz p2, :cond_0

    .line 83
    check-cast p1, Lopenlight/co/lib/view/OrientationChangeSource;

    invoke-interface {p1, p0}, Lopenlight/co/lib/view/OrientationChangeSource;->addOnOrientationChangedListener(Lopenlight/co/lib/view/OnOrientationChangedListener;)V

    :cond_0
    return-void
.end method

.method protected popBackStack(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 250
    invoke-virtual {p0}, Lopenlight/co/lib/view/LightFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-nez p1, :cond_0

    .line 252
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 253
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 259
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 260
    invoke-virtual {p0}, Lopenlight/co/lib/view/LightFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    return-void
.end method

.method protected removeFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/lib/view/LightFragment;->popBackStack(Ljava/lang/String;)V

    return-void
.end method

.method protected showFragment(ILandroid/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-virtual {p0}, Lopenlight/co/lib/view/LightFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 211
    invoke-virtual {p0, p3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 212
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final tag()Ljava/lang/String;
    .locals 1

    .line 203
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/lib/utils/Utils;->tagFor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
