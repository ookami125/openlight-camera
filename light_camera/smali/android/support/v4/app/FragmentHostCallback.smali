.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 68
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 71
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    .line 58
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4

    .line 63
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    return-void

    .line 285
    :cond_5
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    return-void
.end method

.method doLoaderRetain()V
    .registers 2

    .line 275
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    return-void

    .line 278
    :cond_5
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    return-void
.end method

.method doLoaderStart()V
    .registers 5

    .line 237
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 242
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_12

    .line 243
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_30

    .line 244
    :cond_12
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_30

    const-string v1, "(root)"

    .line 245
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 247
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_30

    .line 248
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 251
    :cond_30
    :goto_30
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    return-void
.end method

.method doLoaderStop(Z)V
    .registers 3

    .line 256
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 258
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    return-void

    .line 262
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz p1, :cond_17

    .line 268
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_1c

    .line 270
    :cond_17
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    :goto_1c
    return-void
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 361
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 363
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_41

    .line 364
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    .line 366
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .registers 1

    .line 194
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .registers 1

    .line 198
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .registers 1

    .line 206
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 1

    .line 202
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .registers 5

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_b

    .line 305
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 307
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_22

    if-eqz p3, :cond_22

    .line 309
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    .line 310
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_22
    if-eqz p2, :cond_2d

    if-eqz v0, :cond_2d

    .line 311
    iget-boolean p0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez p0, :cond_2d

    .line 312
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
    .registers 4

    .line 210
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_7

    .line 211
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    return-object p0

    :cond_7
    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    const-string v1, "(root)"

    .line 214
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 215
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    return-object p0
.end method

.method getRetainLoaders()Z
    .registers 1

    .line 233
    iget-boolean p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    return p0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .registers 4

    .line 220
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_1a

    .line 221
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1a

    .line 222
    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1a

    .line 223
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 224
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 98
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public onGetWindowAnimations()I
    .registers 1

    .line 179
    iget p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return p0
.end method

.method public onHasView()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onHasWindowAnimations()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, -0x1

    if-ne p3, p1, :cond_9

    .line 134
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 131
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .param p4    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_14

    move-object v0, p0

    .line 148
    iget-object v1, v0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 145
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 1

    return-void
.end method

.method reportLoaderStart()V
    .registers 5

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_2b

    .line 290
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .line 291
    new-array v1, v0, [Landroid/support/v4/app/LoaderManagerImpl;

    add-int/lit8 v2, v0, -0x1

    :goto_e
    if-ltz v2, :cond_1d

    .line 293
    iget-object v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    if-ge p0, v0, :cond_2b

    .line 296
    aget-object v2, v1, p0

    .line 297
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 298
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e

    :cond_2b
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_15

    .line 354
    invoke-virtual {p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 357
    :cond_15
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 322
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .line 323
    new-array v2, v0, [Landroid/support/v4/app/LoaderManagerImpl;

    add-int/lit8 v3, v0, -0x1

    :goto_f
    if-ltz v3, :cond_1e

    .line 325
    iget-object v4, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 327
    :cond_1e
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v3

    move v4, v1

    :goto_23
    if-ge v1, v0, :cond_4a

    .line 329
    aget-object v5, v2, v1

    .line 330
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_37

    if-eqz v3, :cond_37

    .line 331
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_34

    .line 332
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 334
    :cond_34
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 336
    :cond_37
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3d

    const/4 v4, 0x1

    goto :goto_47

    .line 339
    :cond_3d
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 340
    iget-object v6, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v5, v5, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_4a
    move v1, v4

    :cond_4b
    if-eqz v1, :cond_50

    .line 346
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    return-object p0

    :cond_50
    const/4 p0, 0x0

    return-object p0
.end method
