.class Landroid/support/design/widget/FloatingActionButtonLollipop$AlwaysStatefulGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "FloatingActionButtonLollipop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonLollipop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlwaysStatefulGradientDrawable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
