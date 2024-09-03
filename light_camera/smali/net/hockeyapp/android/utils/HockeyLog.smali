.class public Lnet/hockeyapp/android/utils/HockeyLog;
.super Ljava/lang/Object;
.source "HockeyLog.java"


# static fields
.field public static final HOCKEY_TAG:Ljava/lang/String; = "HockeyApp"

.field private static sLogLevel:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 92
    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 102
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_c

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 126
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_c

    .line 128
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    .line 115
    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 230
    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 240
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_c

    .line 242
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 264
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 265
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_c

    .line 266
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    .line 253
    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getLogLevel()I
    .registers 1

    .line 27
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    return v0
.end method

.method public static info(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 138
    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 148
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 149
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_c

    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 172
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 173
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_c

    .line 174
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    .line 161
    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static sanitizeTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_10

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_12

    :cond_10
    const-string p0, "HockeyApp"

    :cond_12
    return-object p0
.end method

.method public static setLogLevel(I)V
    .registers 1

    .line 36
    sput p0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 46
    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_c

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 80
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 81
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_c

    .line 82
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    .line 69
    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 184
    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 194
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 195
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_c

    .line 196
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 218
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_c

    .line 220
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    .line 207
    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
