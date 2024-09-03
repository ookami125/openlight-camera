.class final Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"

# interfaces
.implements Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x19
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/inputmethod/InputConnectionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputContentInfoCompatApi25Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputConnection;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1    # Landroid/view/inputmethod/InputConnection;
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

    .line 140
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputContentInfo;

    invoke-interface {p1, p0, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p1    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 150
    new-instance p2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0, p3}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl$1;-><init>(Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object p2
.end method
