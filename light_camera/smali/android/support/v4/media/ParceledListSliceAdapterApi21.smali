.class Landroid/support/v4/media/ParceledListSliceAdapterApi21;
.super Ljava/lang/Object;
.source "ParceledListSliceAdapterApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v0, "android.content.pm.ParceledListSlice"

    .line 34
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 35
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_19
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 44
    :try_start_0
    sget-object v0, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->sConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method
