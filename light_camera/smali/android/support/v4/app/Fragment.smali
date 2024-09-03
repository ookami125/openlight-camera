.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$AnimationInfo;,
        Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;,
        Landroid/support/v4/app/Fragment$InstantiationException;,
        Landroid/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mParentFragment:Landroid/support/v4/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 189
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, -0x1

    .line 208
    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 220
    iput v0, p0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 315
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/app/Fragment;)V
    .registers 1

    .line 188
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method private callStartTransitionListener()V
    .registers 4

    .line 2181
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_14

    .line 2184
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2185
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    .line 2186
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iput-object v1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    :goto_14
    if-eqz v0, :cond_19

    .line 2189
    invoke-interface {v0}, Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    :cond_19
    return-void
.end method

.method private ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;
    .registers 2

    .line 2634
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_b

    .line 2635
    new-instance v0, Landroid/support/v4/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2637
    :cond_b
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    const/4 v0, 0x0

    .line 419
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 438
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_17

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 442
    sget-object p0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const/4 p0, 0x0

    .line 444
    new-array v1, p0, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_36

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 447
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_36} :catch_b5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_36} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_36} :catch_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_36} :catch_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_36} :catch_37

    :cond_36
    return-object p0

    :catch_37
    move-exception p0

    .line 466
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_54
    move-exception p0

    .line 463
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_71
    move-exception p0

    .line 459
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_93
    move-exception p0

    .line 455
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_b5
    move-exception p0

    .line 451
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 481
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_17

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 485
    sget-object p0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_17
    const-class p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 2203
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 2205
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 2207
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    .line 2209
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 2210
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 2211
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 2213
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 2214
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 2215
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 2217
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 2218
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 2219
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2220
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    .line 2221
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 2222
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2223
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_dc

    .line 2224
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2225
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2227
    :cond_dc
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_ed

    .line 2228
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2231
    :cond_ed
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_fe

    .line 2232
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2235
    :cond_fe
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_10f

    .line 2236
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2238
    :cond_10f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_120

    .line 2239
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2242
    :cond_120
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_131

    .line 2243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2246
    :cond_131
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_14c

    .line 2247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    .line 2248
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2251
    :cond_14c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_161

    .line 2252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2254
    :cond_161
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_172

    .line 2255
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2257
    :cond_172
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_183

    .line 2258
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2260
    :cond_183
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_194

    .line 2261
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2263
    :cond_194
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 2264
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 2265
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2267
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    .line 2268
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2271
    :cond_1b8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1da

    .line 2272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2275
    :cond_1da
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_212

    .line 2276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_212
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 523
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    .line 2282
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 2285
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_14

    .line 2286
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    .line 684
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    :goto_e
    return-object p0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 2088
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$600(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2089
    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$600(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 2113
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$700(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2114
    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$700(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method getAnimatingAway()Landroid/view/View;
    .registers 2

    .line 2692
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2695
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-object p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-object p0
.end method

.method getAnimator()Landroid/animation/Animator;
    .registers 2

    .line 2707
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2710
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-object p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 1

    .line 588
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 3

    .line 757
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v0, :cond_32

    .line 758
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 759
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_12

    .line 760
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    goto :goto_32

    .line 761
    :cond_12
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1d

    .line 762
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_32

    .line 763
    :cond_1d
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_28

    .line 764
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_32

    .line 765
    :cond_28
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_32

    .line 766
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 769
    :cond_32
    :goto_32
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .registers 2

    .line 1884
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1887
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$000(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
    .registers 2

    .line 2678
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2681
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-object p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    return-object p0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .registers 2

    .line 1958
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1961
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$200(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
    .registers 2

    .line 2685
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2688
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-object p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    return-object p0
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 1

    .line 749
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method public final getHost()Ljava/lang/Object;
    .registers 2

    .line 692
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public final getId()I
    .registers 1

    .line 559
    iget p0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    return p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1201
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1202
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    .line 1204
    :cond_a
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1233
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz p1, :cond_17

    .line 1237
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1238
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    .line 1239
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 1234
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 5

    .line 967
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_7

    .line 968
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    return-object p0

    .line 970
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 974
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 975
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    return-object p0

    .line 971
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNextAnim()I
    .registers 2

    .line 2641
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2644
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextAnim:I

    return p0
.end method

.method getNextTransition()I
    .registers 2

    .line 2655
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2658
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextTransition:I

    return p0
.end method

.method getNextTransitionStyle()I
    .registers 2

    .line 2671
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2674
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return p0
.end method

.method public final getParentFragment()Landroid/support/v4/app/Fragment;
    .registers 1

    .line 785
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .registers 3

    .line 1994
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1997
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$300(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1b

    :cond_15
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 1998
    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$300(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_1b
    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 4

    .line 699
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_f

    .line 702
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 700
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRetainInstance()Z
    .registers 1

    .line 893
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    return p0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .registers 3

    .line 1921
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1924
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$100(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1b

    :cond_15
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 1925
    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$100(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_1b
    return-object p0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .registers 2

    .line 2024
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2027
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$400(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .registers 3

    .line 2059
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2062
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$500(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_15

    .line 2063
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1b

    :cond_15
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2064
    # getter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$500(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_1b
    return-object p0
.end method

.method getStateAfterAnimating()I
    .registers 2

    .line 2714
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2717
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return p0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 722
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 735
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 1

    .line 566
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .registers 1

    .line 661
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public final getTargetRequestCode()I
    .registers 1

    .line 668
    iget p0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    return p0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 712
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUserVisibleHint()Z
    .registers 1

    .line 960
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    return p0
.end method

.method public getView()Landroid/view/View;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1484
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final hasOptionsMenu()Z
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 856
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    return p0
.end method

.method public final hashCode()I
    .registers 1

    .line 530
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method initState()V
    .registers 3

    const/4 v0, -0x1

    .line 1664
    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v0, 0x0

    .line 1665
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1666
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1667
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1668
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 1669
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1670
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 1671
    iput v1, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1672
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1673
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1674
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1675
    iput v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 1676
    iput v1, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1677
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 1678
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1679
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1680
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1681
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1682
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1683
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .registers 4

    .line 2292
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_18

    .line 2295
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2296
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    new-instance v2, Landroid/support/v4/app/Fragment$2;

    invoke-direct {v2, p0}, Landroid/support/v4/app/Fragment$2;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    return-void

    .line 2293
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment has not been attached yet."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAdded()Z
    .registers 2

    .line 792
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isDetached()Z
    .registers 1

    .line 801
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    return p0
.end method

.method public final isHidden()Z
    .registers 1

    .line 850
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    return p0
.end method

.method isHideReplaced()Z
    .registers 2

    .line 2732
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2735
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-boolean p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return p0
.end method

.method final isInBackStack()Z
    .registers 1

    .line 516
    iget p0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isInLayout()Z
    .registers 1

    .line 821
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    return p0
.end method

.method public final isMenuVisible()Z
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 862
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    return p0
.end method

.method isPostponed()Z
    .registers 2

    .line 2725
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2728
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-boolean p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return p0
.end method

.method public final isRemoving()Z
    .registers 1

    .line 810
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    return p0
.end method

.method public final isResumed()Z
    .registers 2

    .line 829
    iget p0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x5

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isStateSaved()Z
    .registers 2

    .line 600
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 603
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->isStateSaved()Z

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .registers 2

    .line 838
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method noteStateNotSaved()V
    .registers 2

    .line 2395
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2396
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_9
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1502
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1342
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1325
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1326
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :goto_f
    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 1328
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1329
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :cond_17
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1596
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1403
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1404
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1405
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p1, :cond_17

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1406
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result p1

    if-nez p1, :cond_17

    .line 1407
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_17
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    .line 1789
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1645
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1648
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_16

    .line 1649
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1650
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1652
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1f

    .line 1653
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    :cond_1f
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 1

    return-void
.end method

.method public onDestroyView()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1636
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1692
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    .line 1186
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1304
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1287
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1288
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :goto_f
    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 1290
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1291
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_17
    return-void
.end method

.method public onLowMemory()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1622
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1606
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResume()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1549
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1528
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1530
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-nez v1, :cond_26

    .line 1531
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1532
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_1d

    .line 1533
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1534
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_26

    .line 1535
    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_26

    .line 1536
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    :cond_26
    :goto_26
    return-void
.end method

.method public onStop()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1616
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1518
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method peekChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 1

    .line 777
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 2341
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2342
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_9
    const/4 v0, 0x2

    .line 2344
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2345
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2346
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2347
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_20

    .line 2351
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p1, :cond_1f

    .line 2352
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    :cond_1f
    return-void

    .line 2348
    :cond_20
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 2415
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2416
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2417
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_c
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 2482
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_19

    .line 2483
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 2486
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_19

    .line 2487
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 2319
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2320
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_9
    const/4 v0, 0x1

    .line 2322
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2323
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2324
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2325
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_17

    return-void

    .line 2326
    :cond_17
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onCreate()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    .line 2439
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 2440
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 2442
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2444
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1c

    .line 2445
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1c
    return v1
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 2333
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2334
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_9
    const/4 v0, 0x1

    .line 2336
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    .line 2337
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method performDestroy()V
    .registers 4

    .line 2581
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2582
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    :cond_9
    const/4 v0, 0x0

    .line 2584
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2585
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2586
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2587
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 2591
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-void

    .line 2588
    :cond_19
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroy()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .registers 4

    .line 2564
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2565
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    :cond_9
    const/4 v0, 0x1

    .line 2567
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2568
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2569
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 2570
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_22

    .line 2574
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_1f

    .line 2575
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportNextStart()V

    .line 2577
    :cond_1f
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    return-void

    .line 2571
    :cond_22
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDetach()V
    .registers 4

    const/4 v0, 0x0

    .line 2595
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2596
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2597
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2598
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_3f

    .line 2606
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_3e

    .line 2607
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-eqz v1, :cond_1d

    .line 2611
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2612
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto :goto_3e

    .line 2608
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was not "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    :goto_3e
    return-void

    .line 2599
    :cond_3f
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDetach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    .line 1216
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1217
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1218
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method performLowMemory()V
    .registers 2

    .line 2422
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 2423
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2424
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    :cond_c
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .registers 3

    .line 2401
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2402
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2403
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    :cond_c
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 2466
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_21

    .line 2467
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_14

    .line 2468
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 2472
    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_21

    .line 2473
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    .line 2496
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_18

    .line 2497
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_f

    .line 2498
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2500
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_18

    .line 2501
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_18
    return-void
.end method

.method performPause()V
    .registers 4

    .line 2517
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2518
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    :cond_9
    const/4 v0, 0x4

    .line 2520
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2521
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2522
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2523
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_17

    return-void

    .line 2524
    :cond_17
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onPause()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .registers 3

    .line 2408
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2409
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2410
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    :cond_c
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 2453
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 2454
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 2456
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2458
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1c

    .line 2459
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1c
    return v1
.end method

.method performReallyStop()V
    .registers 5

    .line 2543
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2544
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    :cond_9
    const/4 v0, 0x2

    .line 2546
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2547
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    .line 2548
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 2549
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_26

    const/4 v1, 0x1

    .line 2550
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 2551
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 2553
    :cond_26
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_3d

    .line 2554
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2555
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_3d

    .line 2557
    :cond_38
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method performResume()V
    .registers 4

    .line 2377
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_e

    .line 2378
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2379
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_e
    const/4 v0, 0x5

    .line 2381
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2382
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2383
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2384
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2a

    .line 2388
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_29

    .line 2389
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 2390
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_29
    return-void

    .line 2385
    :cond_2a
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onResume()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 2507
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2508
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_14

    .line 2509
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v0, "android:support:fragments"

    .line 2511
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_14
    return-void
.end method

.method performStart()V
    .registers 4

    .line 2357
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_e

    .line 2358
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2359
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_e
    const/4 v0, 0x4

    .line 2361
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2362
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2363
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 2364
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2e

    .line 2368
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_24

    .line 2369
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 2371
    :cond_24
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_2d

    .line 2372
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    :cond_2d
    return-void

    .line 2365
    :cond_2e
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStart()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performStop()V
    .registers 4

    .line 2530
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2531
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    :cond_9
    const/4 v0, 0x3

    .line 2533
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2534
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2535
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 2536
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_17

    return-void

    .line 2537
    :cond_17
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStop()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postponeEnterTransition()V
    .registers 2

    .line 2148
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    .line 1803
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 4
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1121
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    .line 1124
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void

    .line 1122
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_20

    const-string v0, "android:support:fragments"

    .line 1425
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1428
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v0, :cond_11

    .line 1429
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 1431
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    const/4 p1, 0x0

    .line 1432
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 1433
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_20
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .registers 4

    .line 494
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_e
    const/4 v0, 0x0

    .line 498
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 499
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 500
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_19

    return-void

    .line 501
    :cond_19
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 2

    .line 2076
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    # setter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$602(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 2

    .line 2101
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    # setter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$702(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .registers 2

    .line 2699
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .registers 2

    .line 2703
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 3

    .line 577
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 578
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already active and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 580
    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2

    .line 1846
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .registers 2

    .line 1871
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    # setter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$002(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2

    .line 1857
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .registers 2

    .line 1942
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    # setter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$202(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    .line 904
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_17

    .line 905
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    .line 906
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_17

    .line 907
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_17
    return-void
.end method

.method setHideReplaced(Z)V
    .registers 2

    .line 2739
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method final setIndex(ILandroid/support/v4/app/Fragment;)V
    .registers 3

    .line 507
    iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-eqz p2, :cond_1f

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_34

    .line 511
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:fragment:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    :goto_34
    return-void
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .registers 3

    .line 615
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_11

    if-eqz p1, :cond_d

    .line 618
    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    iget-object p1, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    .line 616
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already active"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    .line 922
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_1b

    .line 923
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 924
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 925
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_1b
    return-void
.end method

.method setNextAnim(I)V
    .registers 3

    .line 2648
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    .line 2651
    :cond_7
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextAnim:I

    return-void
.end method

.method setNextTransition(II)V
    .registers 4

    .line 2662
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    return-void

    .line 2665
    :cond_9
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2666
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iput p1, v0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 2667
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iput p2, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return-void
.end method

.method setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 4

    .line 2617
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2618
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_2a

    .line 2621
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    if-nez v0, :cond_13

    goto :goto_2a

    .line 2622
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2625
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_34

    .line 2626
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    :cond_34
    if-eqz p1, :cond_39

    .line 2629
    invoke-interface {p1}, Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    :cond_39
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .registers 2

    .line 1978
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    # setter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$302(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 2

    .line 889
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .registers 2

    .line 1905
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    # setter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$102(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .registers 2

    .line 2011
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    # setter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$402(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .registers 2

    .line 2043
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    # setter for: Landroid/support/v4/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$502(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setStateAfterAnimating(I)V
    .registers 2

    .line 2721
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .registers 5

    .line 639
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz p1, :cond_b

    .line 640
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    if-ne v0, v1, :cond_13

    goto :goto_2f

    .line 642
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    move-object v0, p1

    :goto_30
    if-eqz v0, :cond_5d

    if-eq v0, p0, :cond_39

    .line 647
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_30

    .line 649
    :cond_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " would create a target cycle"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 653
    :cond_5d
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 654
    iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 4

    .line 947
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    const/4 v1, 0x4

    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1a

    .line 948
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 949
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 951
    :cond_1a
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 952
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v1, :cond_24

    if-nez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1170
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_b

    .line 1171
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    .line 983
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 991
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_b

    .line 994
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 992
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1002
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1010
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    .line 1013
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1011
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v1, p0

    .line 1023
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_14

    .line 1026
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 1024
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached to Activity"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .registers 3

    .line 2162
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_b

    goto :goto_32

    .line 2164
    :cond_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 2165
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/Fragment$1;

    invoke-direct {v1, p0}, Landroid/support/v4/app/Fragment$1;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 2172
    :cond_2e
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->callStartTransitionListener()V

    goto :goto_39

    .line 2163
    :cond_32
    :goto_32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    :goto_39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 537
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v1, :cond_18

    const-string v1, " #"

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_2a

    const-string v1, " id=0x"

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_38

    const-string v1, " "

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const/16 p0, 0x7d

    .line 549
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 2

    const/4 p0, 0x0

    .line 1814
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
