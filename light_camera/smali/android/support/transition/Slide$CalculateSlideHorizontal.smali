.class abstract Landroid/support/transition/Slide$CalculateSlideHorizontal;
.super Ljava/lang/Object;
.source "Slide.java"

# interfaces
.implements Landroid/support/transition/Slide$CalculateSlide;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalculateSlideHorizontal"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/transition/Slide$1;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/support/transition/Slide$CalculateSlideHorizontal;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F
    .registers 3

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method
