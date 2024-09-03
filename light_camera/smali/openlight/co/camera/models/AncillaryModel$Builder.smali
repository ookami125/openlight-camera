.class public Lopenlight/co/camera/models/AncillaryModel$Builder;
.super Ljava/lang/Object;
.source "AncillaryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/models/AncillaryModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfirmationResId:I

.field private mEnabled:Z

.field private mIsSelected:Z

.field private final mItemResId:I

.field private final mPreferencesKey:Ljava/lang/String;

.field private mSelectedResId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mEnabled:Z

    .line 80
    iput p1, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mItemResId:I

    .line 81
    iput-object p2, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mPreferencesKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/models/AncillaryModel$Builder;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mPreferencesKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lopenlight/co/camera/models/AncillaryModel$Builder;)I
    .registers 1

    .line 68
    iget p0, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mItemResId:I

    return p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/models/AncillaryModel$Builder;)I
    .registers 1

    .line 68
    iget p0, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mSelectedResId:I

    return p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/models/AncillaryModel$Builder;)I
    .registers 1

    .line 68
    iget p0, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mConfirmationResId:I

    return p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/models/AncillaryModel$Builder;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mIsSelected:Z

    return p0
.end method

.method static synthetic access$500(Lopenlight/co/camera/models/AncillaryModel$Builder;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mEnabled:Z

    return p0
.end method


# virtual methods
.method public build()Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 105
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/models/AncillaryModel;-><init>(Lopenlight/co/camera/models/AncillaryModel$Builder;Lopenlight/co/camera/models/AncillaryModel$1;)V

    return-object v0
.end method

.method public confirmationResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;
    .registers 2

    .line 95
    iput p1, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mConfirmationResId:I

    return-object p0
.end method

.method public enabled(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;
    .registers 2

    .line 100
    iput-boolean p1, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mEnabled:Z

    return-object p0
.end method

.method public isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;
    .registers 2

    .line 85
    iput-boolean p1, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mIsSelected:Z

    return-object p0
.end method

.method public selectedResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;
    .registers 2

    .line 90
    iput p1, p0, Lopenlight/co/camera/models/AncillaryModel$Builder;->mSelectedResId:I

    return-object p0
.end method
