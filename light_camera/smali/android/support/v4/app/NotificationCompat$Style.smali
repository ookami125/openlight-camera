.class public abstract Landroid/support/v4/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1950
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .registers 5

    .line 2228
    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2229
    sget v0, Landroid/support/compat/R$dimen;->notification_top_pad:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2230
    sget v1, Landroid/support/compat/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2232
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    .line 2233
    invoke-static {p0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Style;->constrain(FFF)F

    move-result p0

    sub-float/2addr p0, v2

    const v3, 0x3e999998    # 0.29999995f

    div-float/2addr p0, v3

    sub-float/2addr v2, p0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    int-to-float v0, v1

    mul-float/2addr p0, v0

    add-float/2addr v2, p0

    .line 2237
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .registers 6

    .line 2174
    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p3, :cond_13

    .line 2175
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    goto :goto_14

    :cond_13
    move p1, p3

    :goto_14
    if-nez p3, :cond_1a

    .line 2176
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 2177
    :cond_1a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 2178
    invoke-virtual {p0, v1, v1, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_34

    .line 2180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2183
    :cond_34
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2184
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .registers 6

    .line 2190
    sget v0, Landroid/support/compat/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, v0, p4, p2}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2192
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2193
    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x1

    .line 2194
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int/2addr p2, p3

    .line 2195
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    .line 2196
    invoke-virtual {p0, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2197
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const/4 p2, -0x1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2198
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 3

    .line 2222
    sget p0, Landroid/support/compat/R$id;->title:I

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2223
    sget p0, Landroid/support/compat/R$id;->text2:I

    invoke-virtual {p1, p0, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2224
    sget p0, Landroid/support/compat/R$id;->text:I

    invoke-virtual {p1, p0, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .registers 16
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2023
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2024
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2028
    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result p2

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge p2, v1, :cond_22

    move p2, v8

    goto :goto_23

    :cond_22
    move p2, v9

    .line 2029
    :goto_23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/16 v10, 0x10

    if-lt v2, v10, :cond_56

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_56

    if-eqz p2, :cond_44

    .line 2032
    sget p2, Landroid/support/compat/R$id;->notification_background:I

    const-string v2, "setBackgroundResource"

    sget v4, Landroid/support/compat/R$drawable;->notification_bg_low:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2034
    sget p2, Landroid/support/compat/R$id;->icon:I

    const-string v2, "setBackgroundResource"

    sget v4, Landroid/support/compat/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_56

    .line 2037
    :cond_44
    sget p2, Landroid/support/compat/R$id;->notification_background:I

    const-string v2, "setBackgroundResource"

    sget v4, Landroid/support/compat/R$drawable;->notification_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2039
    sget p2, Landroid/support/compat/R$id;->icon:I

    const-string v2, "setBackgroundResource"

    sget v4, Landroid/support/compat/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2044
    :cond_56
    :goto_56
    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    const/16 v11, 0x8

    if-eqz p2, :cond_bf

    .line 2047
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_71

    .line 2048
    sget p2, Landroid/support/compat/R$id;->icon:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2049
    sget p2, Landroid/support/compat/R$id;->icon:I

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, p2, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_76

    .line 2051
    :cond_71
    sget p2, Landroid/support/compat/R$id;->icon:I

    invoke-virtual {v7, p2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_76
    if-eqz p1, :cond_10a

    .line 2053
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_10a

    .line 2054
    sget p1, Landroid/support/compat/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2056
    sget p2, Landroid/support/compat/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    .line 2058
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_aa

    .line 2059
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2063
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v2

    .line 2059
    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v4/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2064
    sget p2, Landroid/support/compat/R$id;->right_icon:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_b9

    .line 2066
    :cond_aa
    sget p1, Landroid/support/compat/R$id;->right_icon:I

    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2069
    :goto_b9
    sget p1, Landroid/support/compat/R$id;->right_icon:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_10a

    :cond_bf
    if-eqz p1, :cond_10a

    .line 2071
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_10a

    .line 2072
    sget p1, Landroid/support/compat/R$id;->icon:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2073
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_fb

    .line 2074
    sget p1, Landroid/support/compat/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget p2, Landroid/support/compat/R$dimen;->notification_big_circle_margin:I

    .line 2076
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 2077
    sget p2, Landroid/support/compat/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 2079
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2083
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v2

    .line 2079
    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v4/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2084
    sget p2, Landroid/support/compat/R$id;->icon:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_10a

    .line 2086
    :cond_fb
    sget p1, Landroid/support/compat/R$id;->icon:I

    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2090
    :cond_10a
    :goto_10a
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_119

    .line 2091
    sget p1, Landroid/support/compat/R$id;->title:I

    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2093
    :cond_119
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_12a

    .line 2094
    sget p1, Landroid/support/compat/R$id;->text:I

    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move p1, v8

    goto :goto_12b

    :cond_12a
    move p1, v9

    .line 2098
    :goto_12b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v3, :cond_137

    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_137

    move p2, v8

    goto :goto_138

    :cond_137
    move p2, v9

    .line 2099
    :goto_138
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v1, :cond_14f

    .line 2100
    sget p1, Landroid/support/compat/R$id;->info:I

    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2101
    sget p1, Landroid/support/compat/R$id;->info:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_14c
    move p1, v8

    move p2, p1

    goto :goto_18a

    .line 2104
    :cond_14f
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    if-lez v1, :cond_185

    .line 2105
    sget p1, Landroid/support/compat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 2107
    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    if-le p2, p1, :cond_16d

    .line 2108
    sget p1, Landroid/support/compat/R$id;->info:I

    sget p2, Landroid/support/compat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_17f

    .line 2111
    :cond_16d
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p1

    .line 2112
    sget p2, Landroid/support/compat/R$id;->info:I

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2114
    :goto_17f
    sget p1, Landroid/support/compat/R$id;->info:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_14c

    .line 2118
    :cond_185
    sget v1, Landroid/support/compat/R$id;->info:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2122
    :goto_18a
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_1b8

    .line 2123
    sget v1, Landroid/support/compat/R$id;->text:I

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2124
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b3

    .line 2125
    sget v1, Landroid/support/compat/R$id;->text2:I

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2126
    sget v1, Landroid/support/compat/R$id;->text2:I

    invoke-virtual {v7, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v1, v8

    goto :goto_1b9

    .line 2129
    :cond_1b3
    sget v1, Landroid/support/compat/R$id;->text2:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1b8
    move v1, v9

    :goto_1b9
    if-eqz v1, :cond_1d7

    .line 2135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_1d7

    if-eqz p3, :cond_1cd

    .line 2138
    sget p3, Landroid/support/compat/R$dimen;->notification_subtext_size:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 2140
    sget v0, Landroid/support/compat/R$id;->text:I

    invoke-virtual {v7, v0, v9, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2144
    :cond_1cd
    sget v2, Landroid/support/compat/R$id;->line1:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2147
    :cond_1d7
    iget-object p3, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_224

    .line 2148
    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-boolean p2, p2, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz p2, :cond_211

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_211

    .line 2149
    sget p2, Landroid/support/compat/R$id;->chronometer:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2150
    sget p2, Landroid/support/compat/R$id;->chronometer:I

    const-string p3, "setBase"

    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2151
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    .line 2152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 2150
    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 2153
    sget p0, Landroid/support/compat/R$id;->chronometer:I

    const-string p2, "setStarted"

    invoke-virtual {v7, p0, p2, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_223

    .line 2155
    :cond_211
    sget p2, Landroid/support/compat/R$id;->time:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2156
    sget p2, Landroid/support/compat/R$id;->time:I

    const-string p3, "setTime"

    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :goto_223
    move p2, v8

    .line 2160
    :cond_224
    sget p0, Landroid/support/compat/R$id;->right_side:I

    if-eqz p2, :cond_22a

    move p2, v9

    goto :goto_22b

    :cond_22a
    move p2, v11

    :goto_22b
    invoke-virtual {v7, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2161
    sget p0, Landroid/support/compat/R$id;->line3:I

    if-eqz p1, :cond_233

    goto :goto_234

    :cond_233
    move v9, v11

    :goto_234
    invoke-virtual {v7, p0, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v7
.end method

.method public build()Landroid/app/Notification;
    .registers 2

    .line 1963
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_b

    .line 1964
    iget-object p0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 10
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2210
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 2211
    sget v0, Landroid/support/compat/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2212
    sget v0, Landroid/support/compat/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2213
    sget p2, Landroid/support/compat/R$id;->notification_main_column:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2214
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2a

    .line 2216
    sget v2, Landroid/support/compat/R$id;->notification_main_column_container:I

    const/4 v3, 0x0

    .line 2217
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 2216
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_2a
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2170
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 3

    .line 1953
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_f

    .line 1954
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1955
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz p1, :cond_f

    .line 1956
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_f
    return-void
.end method
