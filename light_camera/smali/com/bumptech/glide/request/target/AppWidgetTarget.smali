.class public Lcom/bumptech/glide/request/target/AppWidgetTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "AppWidgetTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final context:Landroid/content/Context;

.field private final remoteViews:Landroid/widget/RemoteViews;

.field private final viewId:I

.field private final widgetIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/content/ComponentName;)V
    .registers 7

    .line 90
    invoke-direct {p0, p4, p5}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    if-eqz p1, :cond_25

    if-eqz p6, :cond_1d

    if-eqz p2, :cond_15

    .line 100
    iput-object p1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 102
    iput p3, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    .line 103
    iput-object p6, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    return-void

    .line 98
    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "RemoteViews object can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ComponentName can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;III[I)V
    .registers 7

    .line 43
    invoke-direct {p0, p4, p5}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    if-eqz p1, :cond_30

    if-eqz p6, :cond_28

    .line 50
    array-length p4, p6

    if-eqz p4, :cond_20

    if-eqz p2, :cond_18

    .line 56
    iput-object p1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 58
    iput p3, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    .line 59
    iput-object p6, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    return-void

    .line 54
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "RemoteViews object can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WidgetIds must have length > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_28
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "WidgetIds can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/ComponentName;)V
    .registers 12

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/request/target/AppWidgetTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/content/ComponentName;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V
    .registers 12

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 73
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/request/target/AppWidgetTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;III[I)V

    return-void
.end method

.method private update()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_12

    .line 126
    iget-object v1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_19

    .line 128
    :cond_12
    iget-object v1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    iget-object p0, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    :goto_19
    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object p2, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget v0, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 135
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/AppWidgetTarget;->update()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    .line 21
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/target/AppWidgetTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
