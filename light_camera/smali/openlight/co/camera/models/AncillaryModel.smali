.class public Lopenlight/co/camera/models/AncillaryModel;
.super Ljava/lang/Object;
.source "AncillaryModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/models/AncillaryModel$Builder;
    }
.end annotation


# instance fields
.field private final mConfirmationResId:I

.field private final mEnabled:Z

.field private mIsSelected:Z

.field private final mItemResId:I

.field private final mPreferencesKey:Ljava/lang/String;

.field private final mSelectedResId:I


# direct methods
.method private constructor <init>(Lopenlight/co/camera/models/AncillaryModel$Builder;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    # getter for: Lopenlight/co/camera/models/AncillaryModel$Builder;->mPreferencesKey:Ljava/lang/String;
    invoke-static {p1}, Lopenlight/co/camera/models/AncillaryModel$Builder;->access$000(Lopenlight/co/camera/models/AncillaryModel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/models/AncillaryModel;->mPreferencesKey:Ljava/lang/String;

    .line 30
    # getter for: Lopenlight/co/camera/models/AncillaryModel$Builder;->mItemResId:I
    invoke-static {p1}, Lopenlight/co/camera/models/AncillaryModel$Builder;->access$100(Lopenlight/co/camera/models/AncillaryModel$Builder;)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/models/AncillaryModel;->mItemResId:I

    .line 31
    # getter for: Lopenlight/co/camera/models/AncillaryModel$Builder;->mSelectedResId:I
    invoke-static {p1}, Lopenlight/co/camera/models/AncillaryModel$Builder;->access$200(Lopenlight/co/camera/models/AncillaryModel$Builder;)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/models/AncillaryModel;->mSelectedResId:I

    .line 32
    # getter for: Lopenlight/co/camera/models/AncillaryModel$Builder;->mConfirmationResId:I
    invoke-static {p1}, Lopenlight/co/camera/models/AncillaryModel$Builder;->access$300(Lopenlight/co/camera/models/AncillaryModel$Builder;)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/models/AncillaryModel;->mConfirmationResId:I

    .line 33
    # getter for: Lopenlight/co/camera/models/AncillaryModel$Builder;->mIsSelected:Z
    invoke-static {p1}, Lopenlight/co/camera/models/AncillaryModel$Builder;->access$400(Lopenlight/co/camera/models/AncillaryModel$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/models/AncillaryModel;->mIsSelected:Z

    .line 34
    # getter for: Lopenlight/co/camera/models/AncillaryModel$Builder;->mEnabled:Z
    invoke-static {p1}, Lopenlight/co/camera/models/AncillaryModel$Builder;->access$500(Lopenlight/co/camera/models/AncillaryModel$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lopenlight/co/camera/models/AncillaryModel;->mEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/models/AncillaryModel$Builder;Lopenlight/co/camera/models/AncillaryModel$1;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Lopenlight/co/camera/models/AncillaryModel;-><init>(Lopenlight/co/camera/models/AncillaryModel$Builder;)V

    return-void
.end method


# virtual methods
.method public getConfirmationResId()I
    .registers 1

    .line 46
    iget p0, p0, Lopenlight/co/camera/models/AncillaryModel;->mConfirmationResId:I

    return p0
.end method

.method public getItemResId()I
    .registers 1

    .line 38
    iget p0, p0, Lopenlight/co/camera/models/AncillaryModel;->mItemResId:I

    return p0
.end method

.method public getPreferencesKey()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lopenlight/co/camera/models/AncillaryModel;->mPreferencesKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedResId()I
    .registers 1

    .line 42
    iget p0, p0, Lopenlight/co/camera/models/AncillaryModel;->mSelectedResId:I

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lopenlight/co/camera/models/AncillaryModel;->mEnabled:Z

    return p0
.end method

.method public isSelected()Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lopenlight/co/camera/models/AncillaryModel;->mIsSelected:Z

    return p0
.end method

.method public setSelected(Z)V
    .registers 2

    .line 54
    iput-boolean p1, p0, Lopenlight/co/camera/models/AncillaryModel;->mIsSelected:Z

    return-void
.end method
