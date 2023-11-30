.class public Lopenlight/co/lib/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;,
        Lopenlight/co/lib/utils/LogUtil$Entry;
    }
.end annotation


# static fields
.field private static final MAX_ENTRIES:I

.field private static final SHOW_LOG:Z

.field private static final SUPPORT_ON_DEVICE_LOG_VIEW:Z

.field private static final TAG:Ljava/lang/String; = "LogUtil"

.field private static final sEntries:[Lopenlight/co/lib/utils/LogUtil$Entry;

.field private static volatile sId:I

.field private static final sListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sNext:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget-boolean v0, Lopenlight/co/lib/utils/CommonConstants;->IS_USER_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SHOW_LOG:Z

    .line 24
    sget-boolean v0, Lopenlight/co/lib/utils/CommonConstants;->IS_USER_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SUPPORT_ON_DEVICE_LOG_VIEW:Z

    .line 27
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SUPPORT_ON_DEVICE_LOG_VIEW:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lopenlight/co/lib/utils/LogUtil;->MAX_ENTRIES:I

    const/4 v0, -0x1

    .line 28
    sput v0, Lopenlight/co/lib/utils/LogUtil;->sId:I

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lopenlight/co/lib/utils/LogUtil;->sLock:Ljava/lang/Object;

    .line 31
    sget v0, Lopenlight/co/lib/utils/LogUtil;->MAX_ENTRIES:I

    new-array v0, v0, [Lopenlight/co/lib/utils/LogUtil$Entry;

    sput-object v0, Lopenlight/co/lib/utils/LogUtil;->sEntries:[Lopenlight/co/lib/utils/LogUtil$Entry;

    .line 32
    sput v1, Lopenlight/co/lib/utils/LogUtil;->sNext:I

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lopenlight/co/lib/utils/LogUtil;->sListeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 208
    sget v0, Lopenlight/co/lib/utils/LogUtil;->MAX_ENTRIES:I

    if-lez v0, :cond_0

    .line 209
    sget-object v0, Lopenlight/co/lib/utils/LogUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    new-instance v9, Lopenlight/co/lib/utils/LogUtil$Entry;

    sget v1, Lopenlight/co/lib/utils/LogUtil;->sId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lopenlight/co/lib/utils/LogUtil;->sId:I

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, v9

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lopenlight/co/lib/utils/LogUtil$Entry;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 213
    sget-object p0, Lopenlight/co/lib/utils/LogUtil;->sEntries:[Lopenlight/co/lib/utils/LogUtil$Entry;

    sget p1, Lopenlight/co/lib/utils/LogUtil;->sNext:I

    aput-object v9, p0, p1

    .line 214
    sget p0, Lopenlight/co/lib/utils/LogUtil;->sNext:I

    add-int/lit8 p0, p0, 0x1

    sget p1, Lopenlight/co/lib/utils/LogUtil;->MAX_ENTRIES:I

    rem-int/2addr p0, p1

    sput p0, Lopenlight/co/lib/utils/LogUtil;->sNext:I

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    sget-object p0, Lopenlight/co/lib/utils/LogUtil;->sListeners:Ljava/util/HashSet;

    monitor-enter p0

    .line 218
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lopenlight/co/lib/utils/LogUtil;->sListeners:Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 219
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;

    .line 222
    :try_start_2
    invoke-interface {p1}, Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;->onLogChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    sget-object p2, Lopenlight/co/lib/utils/LogUtil;->TAG:Ljava/lang/String;

    const-string p3, "problem calling OnLogChangedListener"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 219
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    .line 215
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_0
    return-void
.end method

.method public static addOnLogChangedListener(Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;)Z
    .locals 2

    .line 150
    sget-object v0, Lopenlight/co/lib/utils/LogUtil;->sListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lopenlight/co/lib/utils/LogUtil;->sListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SHOW_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 73
    invoke-static {p0, p1, v0}, Lopenlight/co/lib/utils/LogUtil;->fd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 78
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SHOW_LOG:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->fd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-static {p0, p1, v0}, Lopenlight/co/lib/utils/LogUtil;->fe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 104
    invoke-static {p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->fe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static fd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 115
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SUPPORT_ON_DEVICE_LOG_VIEW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 117
    invoke-static {v0, p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private static fe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 136
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SUPPORT_ON_DEVICE_LOG_VIEW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 138
    invoke-static {v0, p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private static fi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 122
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SUPPORT_ON_DEVICE_LOG_VIEW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 124
    invoke-static {v0, p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private static fv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 108
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SUPPORT_ON_DEVICE_LOG_VIEW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 110
    invoke-static {v0, p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private static fw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 129
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SUPPORT_ON_DEVICE_LOG_VIEW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 131
    invoke-static {v0, p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static getEntries(I)[Lopenlight/co/lib/utils/LogUtil$Entry;
    .locals 6

    .line 175
    sget-object v0, Lopenlight/co/lib/utils/LogUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    sget v1, Lopenlight/co/lib/utils/LogUtil;->sId:I

    sub-int/2addr v1, p0

    sget p0, Lopenlight/co/lib/utils/LogUtil;->MAX_ENTRIES:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 177
    new-array v2, p0, [Lopenlight/co/lib/utils/LogUtil$Entry;

    if-nez p0, :cond_0

    .line 179
    monitor-exit v0

    return-object v2

    .line 181
    :cond_0
    sget v3, Lopenlight/co/lib/utils/LogUtil;->sNext:I

    sub-int/2addr v3, p0

    if-gez v3, :cond_1

    .line 183
    sget v4, Lopenlight/co/lib/utils/LogUtil;->MAX_ENTRIES:I

    add-int/2addr v3, v4

    .line 185
    :cond_1
    sget v4, Lopenlight/co/lib/utils/LogUtil;->sNext:I

    if-ge v3, v4, :cond_2

    .line 187
    sget-object v4, Lopenlight/co/lib/utils/LogUtil;->sEntries:[Lopenlight/co/lib/utils/LogUtil$Entry;

    invoke-static {v4, v3, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 189
    :cond_2
    sget-object p0, Lopenlight/co/lib/utils/LogUtil;->sEntries:[Lopenlight/co/lib/utils/LogUtil$Entry;

    sget v5, Lopenlight/co/lib/utils/LogUtil;->MAX_ENTRIES:I

    sub-int/2addr v5, v3

    invoke-static {p0, v3, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    sget-object p0, Lopenlight/co/lib/utils/LogUtil;->sEntries:[Lopenlight/co/lib/utils/LogUtil$Entry;

    sget v5, Lopenlight/co/lib/utils/LogUtil;->MAX_ENTRIES:I

    sub-int/2addr v5, v3

    invoke-static {p0, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1, v0}, Lopenlight/co/lib/utils/LogUtil;->fi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->fi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static removeOnLogChangedListener(Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;)Z
    .locals 2

    .line 162
    sget-object v0, Lopenlight/co/lib/utils/LogUtil;->sListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lopenlight/co/lib/utils/LogUtil;->sListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SHOW_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, v0}, Lopenlight/co/lib/utils/LogUtil;->fv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 66
    sget-boolean v0, Lopenlight/co/lib/utils/LogUtil;->SHOW_LOG:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->fv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, v0}, Lopenlight/co/lib/utils/LogUtil;->fw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 96
    invoke-static {p0, p1, p2}, Lopenlight/co/lib/utils/LogUtil;->fw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
