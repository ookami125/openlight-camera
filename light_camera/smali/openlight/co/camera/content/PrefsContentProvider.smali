.class public Lopenlight/co/camera/content/PrefsContentProvider;
.super Landroid/content/ContentProvider;
.source "PrefsContentProvider.java"


# instance fields
.field private mPrefs:Lopenlight/co/lib/content/Prefs;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private prefs()Lopenlight/co/lib/content/Prefs;
    .registers 2

    .line 127
    iget-object v0, p0, Lopenlight/co/camera/content/PrefsContentProvider;->mPrefs:Lopenlight/co/lib/content/Prefs;

    if-nez v0, :cond_e

    .line 128
    invoke-virtual {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/CameraApp;->initCamPrefs(Landroid/content/Context;)Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/content/PrefsContentProvider;->mPrefs:Lopenlight/co/lib/content/Prefs;

    .line 130
    :cond_e
    iget-object p0, p0, Lopenlight/co/camera/content/PrefsContentProvider;->mPrefs:Lopenlight/co/lib/content/Prefs;

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xe1a08a

    if-eq v1, v2, :cond_2d

    const v2, 0x3944300b

    if-eq v1, v2, :cond_23

    const v2, 0x6047b164

    if-eq v1, v2, :cond_19

    goto :goto_37

    :cond_19
    const-string v1, "get_preference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x0

    goto :goto_38

    :cond_23
    const-string v1, "put_preference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_2d
    const-string v1, "remove_preference"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x2

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p1, -0x1

    :goto_38
    packed-switch p1, :pswitch_data_ee

    goto/16 :goto_ec

    .line 117
    :pswitch_3d
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    invoke-interface {p0, p2}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    goto/16 :goto_ec

    :pswitch_46
    if-eqz p3, :cond_ec

    const-string p1, "type"

    .line 96
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_f8

    goto/16 :goto_ec

    .line 110
    :pswitch_53
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 107
    :pswitch_62
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {p0, p2, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;F)V

    goto/16 :goto_ec

    .line 104
    :pswitch_71
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {p0, p2, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;J)V

    goto :goto_ec

    .line 101
    :pswitch_7f
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p2, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    goto :goto_ec

    .line 98
    :pswitch_8d
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p2, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Z)V

    goto :goto_ec

    :pswitch_9b
    if-eqz p3, :cond_ec

    const-string p1, "type"

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_106

    goto :goto_ec

    :pswitch_a7
    const-string p1, "value"

    .line 89
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    invoke-interface {p0, p2}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :pswitch_b5
    const-string p1, "value"

    .line 86
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    invoke-interface {p0, p2}, Lopenlight/co/lib/content/Prefs;->getFloatValue(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_ec

    :pswitch_c3
    const-string p1, "value"

    .line 83
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    invoke-interface {p0, p2}, Lopenlight/co/lib/content/Prefs;->getLongValue(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_ec

    :pswitch_d1
    const-string p1, "value"

    .line 80
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    invoke-interface {p0, p2}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_ec

    :pswitch_df
    const-string p1, "value"

    .line 77
    invoke-direct {p0}, Lopenlight/co/camera/content/PrefsContentProvider;->prefs()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    invoke-interface {p0, p2}, Lopenlight/co/lib/content/Prefs;->getBooleanValue(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_ec
    :goto_ec
    return-object v0

    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_46
        :pswitch_3d
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_7f
        :pswitch_71
        :pswitch_62
        :pswitch_53
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_df
        :pswitch_d1
        :pswitch_c3
        :pswitch_b5
        :pswitch_a7
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
