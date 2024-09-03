.class Landroid/support/v7/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesFlusher"

.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flush(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 46
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)Z

    move-result p0

    return p0

    .line 47
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    .line 48
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)Z

    move-result p0

    return p0

    .line 49
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 50
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)Z

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)Z
    .registers 5
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 57
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 59
    :try_start_5
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mDrawableCache"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 60
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    .line 62
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_1d
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 66
    :cond_1f
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    .line 69
    :try_start_24
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_36

    :catch_2d
    move-exception p0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    .line 71
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_36
    if-eqz p0, :cond_3c

    .line 74
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return v1

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)Z
    .registers 5
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 83
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 85
    :try_start_5
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mDrawableCache"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 86
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    .line 88
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :goto_1d
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    :cond_1f
    const/4 v0, 0x0

    .line 94
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_33

    .line 96
    :try_start_24
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_34

    :catch_2b
    move-exception p0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    .line 98
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    move-object p0, v0

    :goto_34
    const/4 v0, 0x0

    if-nez p0, :cond_38

    return v0

    :cond_38
    if-eqz p0, :cond_41

    .line 107
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    move v0, v1

    :cond_41
    return v0
.end method

.method private static flushNougats(Landroid/content/res/Resources;)Z
    .registers 7
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 112
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 114
    :try_start_5
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    .line 115
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve Resources#mResourcesImpl field"

    .line 117
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_1d
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    .line 122
    :cond_1f
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-nez v0, :cond_25

    return v2

    :cond_25
    const/4 v0, 0x0

    .line 129
    :try_start_26
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2c} :catch_2d

    goto :goto_36

    :catch_2d
    move-exception p0

    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mResourcesImpl"

    .line 131
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_36
    if-nez p0, :cond_39

    return v2

    .line 139
    :cond_39
    sget-boolean v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v3, :cond_59

    .line 141
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mDrawableCache"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 142
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3d .. :try_end_4e} :catch_4f

    goto :goto_57

    :catch_4f
    move-exception v3

    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 144
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_57
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 150
    :cond_59
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_6c

    .line 152
    :try_start_5d
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_63} :catch_64

    goto :goto_6d

    :catch_64
    move-exception p0

    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 154
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6c
    move-object p0, v0

    :goto_6d
    if-eqz p0, :cond_76

    .line 158
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    goto :goto_77

    :cond_76
    move v1, v2

    :goto_77
    return v1
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)Z
    .registers 6
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .line 163
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_18

    :try_start_5
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 165
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not find ThemedResourceCache class"

    .line 167
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :goto_16
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    .line 172
    :cond_18
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    return v2

    .line 177
    :cond_1e
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v0, :cond_3c

    .line 179
    :try_start_22
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    const-string v3, "mUnthemedEntries"

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 181
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_22 .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception v0

    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 183
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    :goto_3a
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 188
    :cond_3c
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_41

    return v2

    :cond_41
    const/4 v0, 0x0

    .line 195
    :try_start_42
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 196
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_4a} :catch_4b

    goto :goto_54

    :catch_4b
    move-exception p0

    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 198
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_54
    if-eqz p0, :cond_5a

    .line 202
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    return v1

    :cond_5a
    return v2
.end method
