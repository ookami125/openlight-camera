.class public Lco/openlight/lightprocessingservice/ProcessRequest;
.super Ljava/lang/Object;
.source "ProcessRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;,
        Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;
    }
.end annotation


# static fields
.field public static final ACTION_PROCESSING:Ljava/lang/String; = "co.openlight.lightprocessingservice.action.PROCESSING"

.field public static final BOKEH_MAX_FNUM:I = 0xf

.field public static final BOKEN_MIN_FNUM:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lco/openlight/lightprocessingservice/ProcessRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_PROCESS_REQUEST:Ljava/lang/String; = "co.openlight.lightprocessingservice.extra.PROCESS_REQUEST"

.field public static final EXTRA_PROCESS_REQUEST_STATUS:Ljava/lang/String; = "co.openlight.lightprocessingservice.extra.PROCESS_REQUEST_STATUS"


# instance fields
.field private mBokeh:I

.field private mComponentName:Landroid/content/ComponentName;

.field private mDateTaken:J

.field private mDeleteLri:Z

.field private mDeleteThumbnail:Z

.field private mFocusDepthX:F

.field private mFocusDepthY:F

.field private mGDepth:Z

.field private mHeight:I

.field private mLriPath:Ljava/lang/String;

.field private mNeedsPostProcessing:Z

.field private mProcessedDngPath:Ljava/lang/String;

.field private mProcessedJpegPath:Ljava/lang/String;

.field private mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

.field private mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

.field private mSupportSuperRes:Z

.field private mTag:Ljava/lang/String;

.field private mThumbnailPath:Ljava/lang/String;

.field private mUpdateMediaStore:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lco/openlight/lightprocessingservice/ProcessRequest$1;

    invoke-direct {v0}, Lco/openlight/lightprocessingservice/ProcessRequest$1;-><init>()V

    sput-object v0, Lco/openlight/lightprocessingservice/ProcessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    .line 76
    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 81
    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    .line 82
    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    .line 76
    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 81
    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    .line 82
    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    .line 92
    invoke-direct {p0, p1}, Lco/openlight/lightprocessingservice/ProcessRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    iput-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    iput-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mBokeh:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    move v0, v2

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_49

    move v0, v2

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    iput-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mSupportSuperRes:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_54

    move v0, v2

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    iput-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteLri:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6b

    move v0, v2

    goto :goto_6c

    :cond_6b
    move v0, v1

    :goto_6c
    iput-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mUpdateMediaStore:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_82

    move v0, v2

    goto :goto_83

    :cond_82
    move v0, v1

    :goto_83
    iput-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteThumbnail:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDateTaken:J

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_92

    move v1, v2

    :cond_92
    iput-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mNeedsPostProcessing:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a0

    .line 152
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    :cond_a0
    return-void
.end method


# virtual methods
.method public bokeh(I)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 3

    if-eqz p1, :cond_12

    const/4 v0, 0x2

    if-lt p1, v0, :cond_a

    const/16 v0, 0xf

    if-gt p1, v0, :cond_a

    goto :goto_12

    .line 234
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bokeh value must be between 2 and 15. Or 0 if not changes to be made to bokeh"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_12
    :goto_12
    iput p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mBokeh:I

    return-object p0
.end method

.method public broadcastComponent(Landroid/content/ComponentName;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    if-eqz p1, :cond_5

    .line 393
    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    return-object p0

    .line 391
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "component name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dateTaken(J)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 3

    .line 377
    iput-wide p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDateTaken:J

    return-object p0
.end method

.method public deleteLri(Z)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 272
    iput-boolean p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteLri:Z

    return-object p0
.end method

.method public deleteThumbnail(Z)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 355
    iput-boolean p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteThumbnail:Z

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public enabledSuperRes(Z)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 262
    iput-boolean p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mSupportSuperRes:Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 613
    :cond_4
    instance-of v1, p1, Lco/openlight/lightprocessingservice/ProcessRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 617
    :cond_a
    check-cast p1, Lco/openlight/lightprocessingservice/ProcessRequest;

    .line 621
    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 622
    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    iget-object v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_20

    .line 624
    :cond_19
    iget-object v1, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    if-nez v1, :cond_1f

    move v1, v0

    goto :goto_20

    :cond_1f
    move v1, v2

    .line 629
    :goto_20
    iget-object v3, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 630
    iget-object v3, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    iget-object v4, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_34

    .line 632
    :cond_2d
    iget-object v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    if-nez v3, :cond_33

    move v3, v0

    goto :goto_34

    :cond_33
    move v3, v2

    .line 637
    :goto_34
    iget-object v4, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    if-eqz v4, :cond_41

    .line 638
    iget-object v4, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    iget-object v5, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_48

    .line 640
    :cond_41
    iget-object v4, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    if-nez v4, :cond_47

    move v4, v0

    goto :goto_48

    :cond_47
    move v4, v2

    .line 644
    :goto_48
    iget-object v5, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    if-eqz v5, :cond_55

    .line 645
    iget-object v5, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    iget-object v6, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_5c

    .line 647
    :cond_55
    iget-object v5, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    if-nez v5, :cond_5b

    move v5, v0

    goto :goto_5c

    :cond_5b
    move v5, v2

    .line 651
    :goto_5c
    iget-object v6, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_78

    .line 652
    iget-object v6, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_76

    .line 653
    iget-object v7, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    .line 654
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    :goto_74
    move v6, v0

    goto :goto_7d

    :cond_76
    move v6, v2

    goto :goto_7d

    .line 656
    :cond_78
    iget-object v6, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    if-nez v6, :cond_76

    goto :goto_74

    .line 660
    :goto_7d
    iget-object v7, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    iget-object v8, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ec

    if-eqz v3, :cond_ec

    if-eqz v1, :cond_ec

    if-eqz v5, :cond_ec

    if-eqz v4, :cond_ec

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    iget-boolean v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    if-ne v1, v3, :cond_ec

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    iget-object v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    if-ne v1, v3, :cond_ec

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    iget-object v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    if-ne v1, v3, :cond_ec

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    iget v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    if-ne v1, v3, :cond_ec

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    iget v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    if-ne v1, v3, :cond_ec

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mBokeh:I

    iget v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mBokeh:I

    if-ne v1, v3, :cond_ec

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mSupportSuperRes:Z

    iget-boolean v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mSupportSuperRes:Z

    if-ne v1, v3, :cond_ec

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteLri:Z

    iget-boolean v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteLri:Z

    if-ne v1, v3, :cond_ec

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    iget v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_ec

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    iget v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_ec

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mUpdateMediaStore:Z

    iget-boolean v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mUpdateMediaStore:Z

    if-ne v1, v3, :cond_ec

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteThumbnail:Z

    iget-boolean v3, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteThumbnail:Z

    if-ne v1, v3, :cond_ec

    iget-wide v3, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDateTaken:J

    iget-wide v7, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mDateTaken:J

    cmp-long v1, v3, v7

    if-nez v1, :cond_ec

    iget-boolean p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mNeedsPostProcessing:Z

    iget-boolean p1, p1, Lco/openlight/lightprocessingservice/ProcessRequest;->mNeedsPostProcessing:Z

    if-ne p0, p1, :cond_ec

    if-eqz v6, :cond_ec

    goto :goto_ed

    :cond_ec
    move v0, v2

    :goto_ed
    return v0
.end method

.method public focusDepthPoint(FF)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 7

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, -0x40800000    # -1.0f

    if-gez v1, :cond_b

    cmpl-float v1, p1, v2

    if-nez v1, :cond_22

    :cond_b
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v1

    if-gtz v3, :cond_22

    cmpg-float v0, p2, v0

    if-gez v0, :cond_19

    cmpl-float v0, p2, v2

    if-nez v0, :cond_22

    :cond_19
    cmpl-float v0, p2, v1

    if-gtz v0, :cond_22

    .line 318
    iput p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    .line 319
    iput p2, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    return-object p0

    .line 316
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public gDepth(Z)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 367
    iput-boolean p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    return-object p0
.end method

.method public getBokeh()I
    .registers 1

    .line 476
    iget p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mBokeh:I

    return p0
.end method

.method public getBroadcastComponent()Landroid/content/ComponentName;
    .registers 1

    .line 563
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getDateTaken()J
    .registers 3

    .line 554
    iget-wide v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDateTaken:J

    return-wide v0
.end method

.method public getFocusDepthX()F
    .registers 1

    .line 511
    iget p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    return p0
.end method

.method public getFocusDepthY()F
    .registers 1

    .line 519
    iget p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 468
    iget p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    return p0
.end method

.method public getLevel()Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;
    .registers 1

    .line 418
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    return-object p0
.end method

.method public getLriPath()Ljava/lang/String;
    .registers 1

    .line 402
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    return-object p0
.end method

.method public getProcessedDngPath()Ljava/lang/String;
    .registers 1

    .line 434
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    return-object p0
.end method

.method public getProcessedJpegPath()Ljava/lang/String;
    .registers 1

    .line 426
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public getProfile()Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;
    .registers 1

    .line 410
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 546
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .registers 1

    .line 442
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 459
    iget p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x14

    .line 710
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    .line 711
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mBokeh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mSupportSuperRes:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteLri:Z

    .line 712
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mUpdateMediaStore:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteThumbnail:Z

    .line 713
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-wide v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDateTaken:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mNeedsPostProcessing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_a4

    const/4 p0, 0x0

    goto :goto_aa

    :cond_a4
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    .line 714
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    :goto_aa
    const/16 v1, 0x13

    aput-object p0, v0, v1

    .line 710
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isGDepthEnabled()Z
    .registers 1

    .line 450
    iget-boolean p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    return p0
.end method

.method public isPostProcessingEnabled()Z
    .registers 1

    .line 537
    iget-boolean p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mNeedsPostProcessing:Z

    return p0
.end method

.method public isSuperResSupported()Z
    .registers 1

    .line 485
    iget-boolean p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mSupportSuperRes:Z

    return p0
.end method

.method public level(Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 217
    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    return-object p0
.end method

.method public lriPath(Ljava/lang/String;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    if-eqz p1, :cond_5

    .line 169
    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    return-object p0

    .line 167
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lri Path cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public needsPostProcessing(Z)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 301
    iput-boolean p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mNeedsPostProcessing:Z

    return-object p0
.end method

.method public processedDngPath(Ljava/lang/String;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 197
    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    return-object p0
.end method

.method public processedJpegPath(Ljava/lang/String;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 183
    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    return-object p0
.end method

.method public profile(Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 207
    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    return-object p0
.end method

.method public shouldDeleteLri()Z
    .registers 1

    .line 503
    iget-boolean p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteLri:Z

    return p0
.end method

.method public shouldDeleteThumbnail()Z
    .registers 1

    .line 494
    iget-boolean p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteThumbnail:Z

    return p0
.end method

.method public shouldUpdateMediaStore()Z
    .registers 1

    .line 528
    iget-boolean p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mUpdateMediaStore:Z

    return p0
.end method

.method public size(II)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 3

    .line 249
    iput p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    .line 250
    iput p2, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 332
    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public thumbnail(Ljava/lang/String;)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 345
    iput-object p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lri Path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Processed Jpeg Path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Processed Dng Path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Use GDepth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Bokeh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mBokeh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SuperRes Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mSupportSuperRes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Delete LRI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteLri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " FocusDepthX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " FocusDepthY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Update Media Store "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mUpdateMediaStore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Delete Thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Thumbnail Path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Date Taken in UTC Millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDateTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Needs Post Processing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mNeedsPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Broadcast to Component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_ce

    const/4 p0, 0x0

    goto :goto_d4

    :cond_ce
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    .line 705
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    :goto_d4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateMediaStore(Z)Lco/openlight/lightprocessingservice/ProcessRequest;
    .registers 2

    .line 283
    iput-boolean p1, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mUpdateMediaStore:Z

    return-object p0
.end method

.method public validate()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 577
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    goto :goto_15

    .line 578
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The processed image path for a jpeg or dng must be provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 582
    :cond_15
    :goto_15
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    if-eqz v0, :cond_4f

    .line 586
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    if-eqz v0, :cond_47

    .line 590
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->THUMBNAIL:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    sget-object v1, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;->ZERO:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    if-ne v0, v1, :cond_2a

    goto :goto_32

    .line 592
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Thumbnail processing is only supported a level ZERO"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 596
    :cond_32
    :goto_32
    iget-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    if-eqz v0, :cond_45

    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    sget-object v0, Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;->DESKTOP:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    if-ne p0, v0, :cond_3d

    goto :goto_45

    .line 597
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Desktop Profile is required for creating gDepth."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    const/4 p0, 0x1

    return p0

    .line 587
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Profile needs to be specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 583
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Level needs to be specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 574
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Lri Path cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 105
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mLriPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingProfile:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingProfile;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 107
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessingLevel:Lco/openlight/lightprocessingservice/ProcessRequest$ProcessingLevel;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 108
    iget v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mBokeh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedJpegPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mGDepth:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mProcessedDngPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mSupportSuperRes:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 115
    iget-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteLri:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 116
    iget v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 117
    iget v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mFocusDepthY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 118
    iget-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mUpdateMediaStore:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDeleteThumbnail:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget-wide v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mDateTaken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-boolean v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mNeedsPostProcessing:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    iget-object v0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    int-to-byte v1, v0

    .line 125
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    if-eqz v0, :cond_77

    .line 127
    iget-object p0, p0, Lco/openlight/lightprocessingservice/ProcessRequest;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_77
    return-void
.end method
