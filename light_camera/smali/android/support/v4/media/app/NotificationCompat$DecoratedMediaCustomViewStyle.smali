.class public Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;
.super Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;-><init>()V

    return-void
.end method

.method private setBackgroundColor(Landroid/widget/RemoteViews;)V
    .registers 4

    .line 495
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 496
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result p0

    goto :goto_1d

    :cond_f
    iget-object p0, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroid/support/mediacompat/R$color;->notification_material_background_media_default_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 499
    :goto_1d
    sget v0, Landroid/support/mediacompat/R$id;->status_bar_latest_event_content:I

    const-string v1, "setBackgroundColor"

    invoke-virtual {p1, v0, v1, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_17

    .line 388
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-direct {v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;-><init>()V

    .line 389
    invoke-virtual {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    move-result-object p0

    .line 388
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1a

    .line 391
    :cond_17
    invoke-super {p0, p1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V

    :goto_1a
    return-void
.end method

.method getBigContentViewLayoutResource(I)I
    .registers 2

    const/4 p0, 0x3

    if-gt p1, p0, :cond_6

    .line 464
    sget p0, Landroid/support/mediacompat/R$layout;->notification_template_big_media_narrow_custom:I

    goto :goto_8

    :cond_6
    sget p0, Landroid/support/mediacompat/R$layout;->notification_template_big_media_custom:I

    :goto_8
    return p0
.end method

.method getContentViewLayoutResource()I
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_b

    sget p0, Landroid/support/mediacompat/R$layout;->notification_template_media_custom:I

    goto :goto_f

    .line 434
    :cond_b
    invoke-super {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->getContentViewLayoutResource()I

    move-result p0

    :goto_f
    return p0
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 443
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_8

    return-object v0

    .line 447
    :cond_8
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 448
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_1d

    :cond_17
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 449
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    :goto_1d
    if-nez p1, :cond_20

    return-object v0

    .line 454
    :cond_20
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 455
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 456
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_30

    .line 457
    invoke-direct {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    :cond_30
    return-object v0
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 401
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_8

    return-object v0

    .line 405
    :cond_8
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    move p1, v2

    goto :goto_15

    :cond_14
    move p1, v1

    .line 406
    :goto_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3b

    if-nez p1, :cond_25

    .line 410
    iget-object v3, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 411
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_26

    :cond_25
    move v1, v2

    :cond_26
    if-eqz v1, :cond_4b

    .line 413
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz p1, :cond_37

    .line 415
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 417
    :cond_37
    invoke-direct {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    return-object v0

    .line 421
    :cond_3b
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz p1, :cond_4b

    .line 423
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-object v1

    :cond_4b
    return-object v0
.end method

.method public makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 475
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_8

    return-object v0

    .line 479
    :cond_8
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 480
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_1d

    :cond_17
    iget-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 481
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    :goto_1d
    if-nez p1, :cond_20

    return-object v0

    .line 486
    :cond_20
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 487
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 488
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_30

    .line 489
    invoke-direct {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    :cond_30
    return-object v0
.end method
