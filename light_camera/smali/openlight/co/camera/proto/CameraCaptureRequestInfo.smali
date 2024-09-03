.class public Lopenlight/co/camera/proto/CameraCaptureRequestInfo;
.super Ljava/lang/Object;
.source "CameraCaptureRequestInfo.java"


# instance fields
.field private mAspectRatio:Z

.field private mAwbMode:I

.field private mCropRegion:Landroid/graphics/Rect;

.field private mEvOffset:F

.field private mFNumber:F

.field private mHdrMode:I

.field private mIsDisableCropping:Z

.field private mOrientation:I

.field private mOrientationAngle:I

.field private mSceneMode:I

.field private mUserRating:I

.field private mViewPreset:I


# direct methods
.method public constructor <init>(F)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mOrientation:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mOrientationAngle:I

    .line 50
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mEvOffset:F

    return-void
.end method


# virtual methods
.method public getAspectRatio()Z
    .registers 1

    .line 154
    iget-boolean p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mAspectRatio:Z

    return p0
.end method

.method public getAwbMode()I
    .registers 1

    .line 112
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mAwbMode:I

    return p0
.end method

.method public getCrop()Landroid/graphics/Rect;
    .registers 1

    .line 162
    iget-object p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDisableCropping()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mIsDisableCropping:Z

    return p0
.end method

.method public getEvOffset()F
    .registers 1

    .line 68
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mEvOffset:F

    return p0
.end method

.method public getFNumber()F
    .registers 1

    .line 59
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mFNumber:F

    return p0
.end method

.method public getHdrMode()I
    .registers 1

    .line 87
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mHdrMode:I

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 125
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mOrientation:I

    return p0
.end method

.method public getOrientationAngle()I
    .registers 1

    .line 137
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mOrientationAngle:I

    return p0
.end method

.method public getSceneMode()I
    .registers 1

    .line 103
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mSceneMode:I

    return p0
.end method

.method public getUserRating()I
    .registers 1

    .line 146
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mUserRating:I

    return p0
.end method

.method public getViewPreset()I
    .registers 1

    .line 95
    iget p0, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mViewPreset:I

    return p0
.end method

.method public setAspectRatio(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mAspectRatio:Z

    return-void
.end method

.method public setAwbMode(I)V
    .registers 2

    .line 107
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mAwbMode:I

    return-void
.end method

.method public setCrop(Landroid/graphics/Rect;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mCropRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setDisableCropping(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mIsDisableCropping:Z

    return-void
.end method

.method public setEvOffset(F)V
    .registers 2

    .line 63
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mEvOffset:F

    return-void
.end method

.method public setFNumber(F)V
    .registers 2

    .line 55
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mFNumber:F

    return-void
.end method

.method public setHdrMode(I)V
    .registers 2

    .line 83
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mHdrMode:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 120
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mOrientation:I

    return-void
.end method

.method public setOrientationAngle(I)V
    .registers 2

    .line 133
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mOrientationAngle:I

    return-void
.end method

.method public setSceneMode(I)V
    .registers 2

    .line 99
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mSceneMode:I

    return-void
.end method

.method public setUserRating(I)V
    .registers 2

    .line 142
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mUserRating:I

    return-void
.end method

.method public setViewPreset(I)V
    .registers 2

    .line 91
    iput p1, p0, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->mViewPreset:I

    return-void
.end method
