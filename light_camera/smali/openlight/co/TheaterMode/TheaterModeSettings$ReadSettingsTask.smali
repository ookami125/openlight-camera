.class Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;
.super Landroid/os/AsyncTask;
.source "TheaterModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/TheaterMode/TheaterModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final COLUMN_AUDIO:Ljava/lang/String;

.field private final COLUMN_FLASH_LIGHT:Ljava/lang/String;

.field private final COLUMN_HAPTIC_FEEDBACK:Ljava/lang/String;

.field private final COLUMN_LENS_BLOCKED_ALERT:Ljava/lang/String;

.field private final COLUMN_POCKET_DETECTION:Ljava/lang/String;

.field private final COLUMN_THEATER_MODE:Ljava/lang/String;

.field private final MODE_ON:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    .line 143
    iput v0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->MODE_ON:I

    const-string v0, "theater_mode_enabled"

    .line 144
    iput-object v0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->COLUMN_THEATER_MODE:Ljava/lang/String;

    const-string v0, "sound_notifications"

    .line 145
    iput-object v0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->COLUMN_AUDIO:Ljava/lang/String;

    const-string v0, "haptic_feedback"

    .line 146
    iput-object v0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->COLUMN_HAPTIC_FEEDBACK:Ljava/lang/String;

    const-string v0, "pocket_detection"

    .line 147
    iput-object v0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->COLUMN_POCKET_DETECTION:Ljava/lang/String;

    const-string v0, "lens_blocked_alert"

    .line 148
    iput-object v0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->COLUMN_LENS_BLOCKED_ALERT:Ljava/lang/String;

    const-string v0, "flash_light"

    .line 149
    iput-object v0, p0, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->COLUMN_FLASH_LIGHT:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/TheaterMode/TheaterModeSettings$1;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 153
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->getApp()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$300()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 156
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "theater_mode_enabled"

    .line 158
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 157
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$402(Z)Z

    const-string p1, "haptic_feedback"

    .line 160
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 159
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-static {p1}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$502(Z)Z

    const-string p1, "sound_notifications"

    .line 162
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 161
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    invoke-static {p1}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$602(Z)Z

    const-string p1, "pocket_detection"

    .line 164
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 163
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    move p1, v0

    :goto_3
    invoke-static {p1}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$702(Z)Z

    const-string p1, "lens_blocked_alert"

    .line 166
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 165
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_4

    move p1, v1

    goto :goto_4

    :cond_4
    move p1, v0

    :goto_4
    invoke-static {p1}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$802(Z)Z

    const-string p1, "flash_light"

    .line 168
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 167
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$902(Z)Z

    .line 169
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power save mode enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$400()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lopenlight/co/TheaterMode/TheaterModeSettings$ReadSettingsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 180
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$1000()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/TheaterMode/TheaterModeListener;

    .line 183
    :try_start_0
    invoke-interface {p1}, Lopenlight/co/TheaterMode/TheaterModeListener;->onTheaterModeChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TheaterMode listener callback exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method
