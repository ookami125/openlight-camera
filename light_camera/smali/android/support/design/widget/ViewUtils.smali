.class Landroid/support/design/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p0, v0, :cond_17

    const/16 v0, 0x9

    if-eq p0, v0, :cond_14

    packed-switch p0, :pswitch_data_1e

    return-object p1

    .line 33
    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 31
    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 29
    :cond_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 27
    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 25
    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0xe
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
