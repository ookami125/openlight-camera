.class public Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BuilderExtender"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .registers 5

    .line 617
    iget-object p0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz p0, :cond_b

    iget-object p0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 618
    invoke-virtual {p0, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    .line 620
    :goto_c
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v0

    if-eqz p0, :cond_15

    .line 622
    iput-object p0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1d

    .line 623
    :cond_15
    iget-object p0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_1d

    .line 624
    iget-object p0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object p0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 626
    :cond_1d
    :goto_1d
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p0, v1, :cond_31

    iget-object p0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz p0, :cond_31

    .line 627
    iget-object p0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {p0, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 629
    iput-object p0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 632
    :cond_31
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p0, v1, :cond_45

    iget-object p0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz p0, :cond_45

    .line 633
    iget-object p0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {p0, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 635
    iput-object p0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_45
    return-object v0
.end method
