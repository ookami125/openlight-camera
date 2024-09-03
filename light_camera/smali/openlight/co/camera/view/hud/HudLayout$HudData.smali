.class Lopenlight/co/camera/view/hud/HudLayout$HudData;
.super Ljava/lang/Object;
.source "HudLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/hud/HudLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HudData"
.end annotation


# instance fields
.field private mHudElementLayout:Lopenlight/co/camera/view/rotate/RotateLayout;

.field private mHudElementUnitLeft:Landroid/widget/TextView;

.field private mHudElementUnitTop:Landroid/widget/TextView;

.field private mHudElementValue:Landroid/widget/TextView;

.field private mHudMarker:Landroid/widget/ImageView;

.field private mHudUnitText:Ljava/lang/String;

.field final synthetic this$0:Lopenlight/co/camera/view/hud/HudLayout;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/hud/HudLayout;)V
    .registers 2

    .line 624
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->this$0:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/hud/HudLayout;Lopenlight/co/camera/view/hud/HudLayout$1;)V
    .registers 3

    .line 624
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/hud/HudLayout$HudData;-><init>(Lopenlight/co/camera/view/hud/HudLayout;)V

    return-void
.end method


# virtual methods
.method getHudElementLayout()Lopenlight/co/camera/view/rotate/RotateLayout;
    .registers 1

    .line 658
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudElementLayout:Lopenlight/co/camera/view/rotate/RotateLayout;

    return-object p0
.end method

.method getHudElementUnitLeft()Landroid/widget/TextView;
    .registers 1

    .line 674
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudElementUnitLeft:Landroid/widget/TextView;

    return-object p0
.end method

.method getHudElementUnitTop()Landroid/widget/TextView;
    .registers 1

    .line 666
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudElementUnitTop:Landroid/widget/TextView;

    return-object p0
.end method

.method getHudElementValue()Landroid/widget/TextView;
    .registers 1

    .line 650
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudElementValue:Landroid/widget/TextView;

    return-object p0
.end method

.method getHudMarker()Landroid/widget/ImageView;
    .registers 1

    .line 642
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudMarker:Landroid/widget/ImageView;

    return-object p0
.end method

.method getHudUnitText()Ljava/lang/String;
    .registers 1

    .line 634
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudUnitText:Ljava/lang/String;

    return-object p0
.end method

.method setHudElementLayout(Lopenlight/co/camera/view/rotate/RotateLayout;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudElementLayout:Lopenlight/co/camera/view/rotate/RotateLayout;

    return-void
.end method

.method setHudElementUnitLeft(Landroid/widget/TextView;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudElementUnitLeft:Landroid/widget/TextView;

    return-void
.end method

.method setHudElementUnitTop(Landroid/widget/TextView;)V
    .registers 2

    .line 670
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudElementUnitTop:Landroid/widget/TextView;

    return-void
.end method

.method setHudElementValue(Landroid/widget/TextView;)V
    .registers 2

    .line 654
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudElementValue:Landroid/widget/TextView;

    return-void
.end method

.method setHudMarker(Landroid/widget/ImageView;)V
    .registers 2

    .line 646
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudMarker:Landroid/widget/ImageView;

    return-void
.end method

.method setHudUnitText(Ljava/lang/String;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;->mHudUnitText:Ljava/lang/String;

    return-void
.end method
