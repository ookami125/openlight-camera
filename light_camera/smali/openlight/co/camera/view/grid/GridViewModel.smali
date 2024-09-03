.class public Lopenlight/co/camera/view/grid/GridViewModel;
.super Ljava/lang/Object;
.source "GridViewModel.java"


# static fields
.field private static mInstance:Lopenlight/co/camera/view/grid/GridViewModel;


# instance fields
.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lopenlight/co/camera/view/grid/GridViewModel;
    .registers 1

    .line 19
    sget-object v0, Lopenlight/co/camera/view/grid/GridViewModel;->mInstance:Lopenlight/co/camera/view/grid/GridViewModel;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lopenlight/co/camera/view/grid/GridViewModel;

    invoke-direct {v0}, Lopenlight/co/camera/view/grid/GridViewModel;-><init>()V

    sput-object v0, Lopenlight/co/camera/view/grid/GridViewModel;->mInstance:Lopenlight/co/camera/view/grid/GridViewModel;

    .line 22
    :cond_b
    sget-object v0, Lopenlight/co/camera/view/grid/GridViewModel;->mInstance:Lopenlight/co/camera/view/grid/GridViewModel;

    return-object v0
.end method


# virtual methods
.method public getPreviewHeight()I
    .registers 1

    .line 30
    iget p0, p0, Lopenlight/co/camera/view/grid/GridViewModel;->mPreviewHeight:I

    return p0
.end method

.method public getPreviewWidth()I
    .registers 1

    .line 38
    iget p0, p0, Lopenlight/co/camera/view/grid/GridViewModel;->mPreviewWidth:I

    return p0
.end method

.method public setPreviewHeight(I)V
    .registers 2

    .line 26
    iput p1, p0, Lopenlight/co/camera/view/grid/GridViewModel;->mPreviewHeight:I

    return-void
.end method

.method public setPreviewWidth(I)V
    .registers 2

    .line 34
    iput p1, p0, Lopenlight/co/camera/view/grid/GridViewModel;->mPreviewWidth:I

    return-void
.end method
