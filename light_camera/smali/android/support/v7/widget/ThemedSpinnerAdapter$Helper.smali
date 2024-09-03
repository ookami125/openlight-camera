.class public final Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;
.super Ljava/lang/Object;
.source "ThemedSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ThemedSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getDropDownViewInflater()Landroid/view/LayoutInflater;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    :goto_9
    return-object p0
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_10

    :cond_6
    iget-object p0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_20

    .line 125
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_13

    .line 126
    iget-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_20

    .line 128
    :cond_13
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 129
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    :goto_20
    return-void
.end method
