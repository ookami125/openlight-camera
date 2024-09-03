.class public Lnet/hockeyapp/android/utils/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# static fields
.field public static final VERSION_MAX:Ljava/lang/String; = "99.0"


# instance fields
.field private mCurrentVersionCode:I

.field private mListener:Lnet/hockeyapp/android/UpdateInfoListener;

.field private mNewest:Lorg/json/JSONObject;

.field private mSortedVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    .line 42
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->loadVersions(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/VersionHelper;->sortVersions()V

    return-void
.end method

.method public static compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_56

    if-nez p1, :cond_6

    goto :goto_56

    .line 247
    :cond_6
    :try_start_6
    new-instance v1, Ljava/util/Scanner;

    const-string v2, "\\-.*"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance p0, Ljava/util/Scanner;

    const-string v2, "\\-.*"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string p1, "\\."

    .line 249
    invoke-virtual {v1, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    const-string p1, "\\."

    .line 250
    invoke-virtual {p0, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 253
    :cond_2a
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/util/Scanner;->hasNextInt()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 254
    invoke-virtual {v1}, Ljava/util/Scanner;->nextInt()I

    move-result p1

    .line 255
    invoke-virtual {p0}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    if-ge p1, v4, :cond_43

    return v2

    :cond_43
    if-le p1, v4, :cond_2a

    return v3

    .line 264
    :cond_46
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result p1

    if-eqz p1, :cond_4d

    return v3

    .line 268
    :cond_4d
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNextInt()Z

    move-result p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_51} :catch_55

    if-eqz p0, :cond_54

    return v2

    :cond_54
    return v0

    :catch_55
    return v0

    :cond_56
    :goto_56
    return v0
.end method

.method private static failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .registers 4

    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    return-wide p2
.end method

.method private static failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 111
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    return-object p2
.end method

.method private getRestoreButton(ILorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_28

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<a href=\'restore:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'  style=\'background: #c8c8c8; color: #000; display: block; float: right; padding: 7px; margin: 0px 10px 10px; text-decoration: none;\'>Restore</a>"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSeparator()Ljava/lang/Object;
    .registers 1

    const-string p0, "<hr style=\'border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;\' />"

    return-object p0
.end method

.method private getVersionCode(Lorg/json/JSONObject;)I
    .registers 2

    :try_start_0
    const-string p0, "version"

    .line 198
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private getVersionID(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    :try_start_2
    const-string v0, "id"

    .line 167
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_8} :catch_9

    move-object p0, p1

    :catch_9
    return-object p0
.end method

.method private getVersionLine(ILorg/json/JSONObject;)Ljava/lang/String;
    .registers 7

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionCode(Lorg/json/JSONObject;)I

    move-result v1

    .line 177
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionCode(Lorg/json/JSONObject;)I

    move-result v2

    .line 178
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "<div style=\'padding: 20px 10px 10px;\'><strong>"

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_20

    const-string p0, "Newest version:"

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 184
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v2, v1, :cond_4f

    .line 185
    iget p1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    if-ne v2, p1, :cond_4f

    const/4 p1, -0x1

    .line 186
    iput p1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    const-string p0, "[INSTALLED]"

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    :goto_4f
    const-string p0, "</strong></div>"

    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVersionName(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    :try_start_2
    const-string v0, "shortversion"

    .line 207
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_8} :catch_9

    move-object p0, p1

    :catch_9
    return-object p0
.end method

.method private getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "notes"

    const-string v0, ""

    .line 216
    invoke-static {p2, p1, v0}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<div style=\'padding: 0px 10px;\'>"

    .line 217
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_22

    const-string p1, "<em>No information.</em>"

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 221
    :cond_22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25
    const-string p1, "</div>"

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNewerThanLastUpdateTime(Landroid/content/Context;J)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 295
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 297
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 301
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1e} :catch_27

    const-wide/16 v3, 0x708

    add-long/2addr v1, v3

    cmp-long p0, p1, v1

    if-lez p0, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0

    :catch_27
    move-exception p0

    .line 305
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private loadVersions(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v0}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v0

    iput v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    .line 52
    :try_start_16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {p2}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result p2

    const/4 v1, 0x0

    move v2, p2

    move p2, v1

    .line 55
    :goto_24
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p2, v3, :cond_64

    .line 56
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "version"

    .line 57
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v2, :cond_39

    move v4, v5

    goto :goto_3a

    :cond_39
    move v4, v1

    :goto_3a
    const-string v6, "version"

    .line 58
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v2, :cond_4f

    const-string v6, "timestamp"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lnet/hockeyapp/android/utils/VersionHelper;->isNewerThanLastUpdateTime(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_4f

    goto :goto_50

    :cond_4f
    move v5, v1

    :goto_50
    if-nez v4, :cond_54

    if-eqz v5, :cond_5c

    .line 61
    :cond_54
    iput-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v2, "version"

    .line 62
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 64
    :cond_5c
    iget-object v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_61} :catch_64
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_61} :catch_64

    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :catch_64
    :cond_64
    return-void
.end method

.method public static mapGoogleVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_2d

    const-string v0, "L"

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2d

    :cond_b
    const-string v0, "M"

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "6.0"

    return-object p0

    :cond_16
    const-string v0, "N"

    .line 324
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "7.0"

    return-object p0

    :cond_21
    const-string v0, "^[a-zA-Z]+"

    .line 326
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "99.0"

    return-object p0

    :cond_2c
    return-object p0

    :cond_2d
    :goto_2d
    const-string p0, "5.0"

    return-object p0
.end method

.method private sortVersions()V
    .registers 3

    .line 72
    iget-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    new-instance v1, Lnet/hockeyapp/android/utils/VersionHelper$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/utils/VersionHelper$1;-><init>(Lnet/hockeyapp/android/utils/VersionHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getFileDateString()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v0, "timestamp"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    .line 94
    new-instance p0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileSizeBytes()J
    .registers 7

    .line 100
    iget-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v1, "external"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 101
    iget-object p0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v1, "appsize"

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz v0, :cond_24

    cmp-long p0, v4, v2

    if-nez p0, :cond_24

    const-wide/16 v4, -0x1

    :cond_24
    return-wide v4
.end method

.method public getReleaseNotes(Z)Ljava/lang/String;
    .registers 7

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html>"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<body style=\'padding: 0px 0px 20px 0px\'>"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-lez v2, :cond_34

    .line 133
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/VersionHelper;->getSeparator()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_34

    .line 135
    invoke-direct {p0, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getRestoreButton(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_34
    invoke-direct {p0, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionLine(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {p0, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_45
    const-string p0, "</body>"

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</html>"

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersionString()Ljava/lang/String;
    .registers 5

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v2, "shortversion"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
