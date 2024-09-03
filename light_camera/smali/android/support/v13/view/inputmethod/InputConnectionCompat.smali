.class public final Landroid/support/v13/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;,
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;,
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;,
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

.field public static INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_f

    .line 167
    new-instance v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;-><init>(Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;)V

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

    goto :goto_16

    .line 169
    :cond_f
    new-instance v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

    :goto_16
    const/4 v0, 0x1

    .line 229
    sput v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 10
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 187
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 189
    invoke-static {p1}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_1a

    aget-object v4, p1, v3

    .line 190
    invoke-virtual {v0, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 p1, 0x1

    goto :goto_1b

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1a
    move p1, v2

    :goto_1b
    if-nez p1, :cond_1e

    return v2

    .line 199
    :cond_1e
    sget-object p1, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;->commitContent(Landroid/view/inputmethod/InputConnection;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_15

    if-eqz p2, :cond_d

    .line 279
    sget-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->IMPL:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0

    .line 277
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "onCommitContentListener must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "editorInfo must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inputConnection must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
