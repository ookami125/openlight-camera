.class Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatBaseImpl;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"

# interfaces
.implements Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectivityManagerCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .registers 2

    const/4 p0, 0x3

    return p0
.end method

.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 2

    .line 92
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_8

    return p1

    .line 98
    :cond_8
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    packed-switch p0, :pswitch_data_14

    :pswitch_f
    return p1

    :pswitch_10
    const/4 p0, 0x0

    return p0

    :pswitch_12
    return p1

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
        :pswitch_10
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
