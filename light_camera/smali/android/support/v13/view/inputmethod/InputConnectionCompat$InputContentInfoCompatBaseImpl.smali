.class final Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"

# interfaces
.implements Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputConnectionCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/inputmethod/InputConnectionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InputContentInfoCompatBaseImpl"
.end annotation


# static fields
.field private static COMMIT_CONTENT_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static COMMIT_CONTENT_RESULT_RECEIVER:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .registers 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    sget-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_ACTION:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    if-nez p1, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x0

    .line 114
    :try_start_e
    sget-object v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_RESULT_RECEIVER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_4d

    .line 115
    :try_start_16
    sget-object v2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 116
    sget-object v3, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ClipDescription;

    .line 118
    sget-object v4, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 119
    sget-object v5, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 120
    sget-object v6, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 121
    new-instance v6, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v6, v2, v3, v4}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 123
    invoke-interface {p2, v6, v5, p1}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p1
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_4b

    if-eqz v1, :cond_4a

    .line 126
    invoke-virtual {v1, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4a
    return p1

    :catchall_4b
    move-exception p1

    goto :goto_4f

    :catchall_4d
    move-exception p1

    move-object v1, p0

    :goto_4f
    if-eqz v1, :cond_54

    invoke-virtual {v1, v0, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_54
    throw p1
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputConnection;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 7
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

    .line 69
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 70
    sget-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    sget-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    sget-object v0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    sget-object p2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    sget-object p2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String;

    invoke-virtual {p0, p2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    sget-object p2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->COMMIT_CONTENT_ACTION:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p1    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 84
    invoke-static {p2}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object p2

    .line 85
    array-length p2, p2

    if-nez p2, :cond_8

    return-object p1

    .line 89
    :cond_8
    new-instance p2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0, p3}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl$1;-><init>(Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object p2
.end method
