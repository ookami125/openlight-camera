.class Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameMetricsBaseImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/FrameMetricsAggregator$1;)V
    .registers 2

    .line 309
    invoke-direct {p0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
