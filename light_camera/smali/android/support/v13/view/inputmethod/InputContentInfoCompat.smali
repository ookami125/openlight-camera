.class public final Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;,
        Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;,
        Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ClipDescription;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_11

    .line 170
    new-instance v0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    goto :goto_18

    .line 172
    :cond_11
    new-instance v0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    :goto_18
    return-void
.end method

.method private constructor <init>(Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V
    .registers 2
    .param p1    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .registers 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 221
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_b

    return-object v0

    .line 224
    :cond_b
    new-instance v0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    new-instance v1, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;

    invoke-direct {v1, p0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V

    return-object v0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 185
    iget-object p0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {p0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 195
    iget-object p0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {p0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    return-object p0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 203
    iget-object p0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {p0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getLinkUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public releasePermission()V
    .registers 1

    .line 255
    iget-object p0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {p0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->releasePermission()V

    return-void
.end method

.method public requestPermission()V
    .registers 1

    .line 246
    iget-object p0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {p0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->requestPermission()V

    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 237
    iget-object p0, p0, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->mImpl:Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {p0}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getInputContentInfo()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
