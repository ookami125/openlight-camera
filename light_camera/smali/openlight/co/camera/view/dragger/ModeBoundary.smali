.class public Lopenlight/co/camera/view/dragger/ModeBoundary;
.super Ljava/lang/Object;
.source "ModeBoundary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeBoundary"


# instance fields
.field private final mMode:Lopenlight/co/camera/CameraMode;

.field public final mRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lopenlight/co/camera/CameraMode;Landroid/graphics/RectF;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ModeBoundary;->mMode:Lopenlight/co/camera/CameraMode;

    .line 17
    iput-object p2, p0, Lopenlight/co/camera/view/dragger/ModeBoundary;->mRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getBoundedRectangle()Landroid/graphics/RectF;
    .locals 0

    .line 25
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/ModeBoundary;->mRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getMode()Lopenlight/co/camera/CameraMode;
    .locals 0

    .line 21
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/ModeBoundary;->mMode:Lopenlight/co/camera/CameraMode;

    return-object p0
.end method

.method public isTouchWithinBounds(Landroid/graphics/RectF;FF)Z
    .locals 0

    .line 30
    iget p0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float p0, p3, p0

    if-lez p0, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
