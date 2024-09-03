.class abstract Landroid/support/v7/app/AppCompatDelegateImplBase;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;,
        Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final SHOULD_INSTALL_EXCEPTION_HANDLER:Z

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Landroid/support/v7/app/ActionBar;

.field final mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field final mContext:Landroid/content/Context;

.field private mEatKeyUpEvent:Z

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mIsStarted:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    .line 51
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    if-nez v0, :cond_23

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 55
    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplBase$1;

    invoke-direct {v3, v0}, Landroid/support/v7/app/AppCompatDelegateImplBase$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    sput-boolean v2, Landroid/support/v7/app/AppCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    .line 84
    :cond_23
    new-array v0, v2, [I

    const v2, 0x1010054

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 4

    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    .line 115
    iput-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    .line 117
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 118
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of p2, p2, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    if-nez p2, :cond_3d

    .line 122
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p0, p2}, Landroid/support/v7/app/AppCompatDelegateImplBase;->wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 124
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    iget-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    const/4 p2, 0x0

    .line 126
    sget-object p3, Landroid/support/v7/app/AppCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    invoke-static {p1, p2, p3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 128
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 130
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_39
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void

    .line 119
    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AppCompat has already installed itself into the Window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public applyDayNight()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .registers 2

    .line 187
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 189
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_10

    .line 193
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    :cond_10
    return-object v0
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .registers 2

    .line 180
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 156
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1b

    .line 157
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 158
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 159
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_16

    :cond_14
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    :goto_16
    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 161
    :cond_1b
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 1

    .line 145
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 146
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object p0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 302
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 305
    :cond_f
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .registers 1

    .line 283
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    return-object p0
.end method

.method abstract initWindowDecorActionBar()V
.end method

.method final isDestroyed()Z
    .registers 1

    .line 275
    iget-boolean p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    return p0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method final isStarted()Z
    .registers 1

    .line 279
    iget-boolean p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    return p0
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 2

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    return-void
.end method

.method public onStop()V
    .registers 2

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    return-void
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 1

    .line 150
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object p0
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setLocalNightMode(I)V
    .registers 2

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 288
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    .line 289
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method abstract startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    .line 138
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-object v0
.end method
