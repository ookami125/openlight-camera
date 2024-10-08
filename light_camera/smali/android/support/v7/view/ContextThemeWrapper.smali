.class public Landroid/support/v7/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 70
    iput p2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object p2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    return-void
.end method

.method private getResourcesInternal()Landroid/content/res/Resources;
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_21

    .line 129
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_f

    .line 130
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    goto :goto_21

    .line 131
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_21

    .line 132
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 136
    :cond_21
    :goto_21
    iget-object p0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method private initializeTheme()V
    .registers 4

    .line 192
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_22

    .line 194
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 195
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 197
    iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 200
    :cond_22
    iget-object v1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v7/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_18

    .line 107
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_10

    .line 110
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-void

    .line 108
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Override configuration has already been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getResources() or getAssets() has already been called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 1

    .line 206
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    return-object p0
.end method

.method public getOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 119
    iget-object p0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 1

    .line 124
    invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResourcesInternal()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "layout_inflater"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 168
    iget-object p1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1a

    .line 169
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 171
    :cond_1a
    iget-object p0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    return-object p0

    .line 173
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_7

    .line 154
    iget-object p0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    return-object p0

    .line 157
    :cond_7
    iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    if-nez v0, :cond_f

    .line 158
    sget v0, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_Light:I

    iput v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 160
    :cond_f
    invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V

    .line 162
    iget-object p0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    return-object p0
.end method

.method public getThemeResId()I
    .registers 1

    .line 148
    iget p0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    return p0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 4

    const/4 p0, 0x1

    .line 188
    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public setTheme(I)V
    .registers 3

    .line 141
    iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    if-eq v0, p1, :cond_9

    .line 142
    iput p1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 143
    invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V

    :cond_9
    return-void
.end method
