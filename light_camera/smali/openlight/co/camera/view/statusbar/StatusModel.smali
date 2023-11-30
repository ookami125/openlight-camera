.class public Lopenlight/co/camera/view/statusbar/StatusModel;
.super Ljava/lang/Object;
.source "StatusModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAlpha:F

.field private mIconId:I

.field private final mPreferenceKey:Ljava/lang/String;

.field private final mType:I


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mPreferenceKey:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->getType()I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mType:I

    .line 15
    invoke-virtual {p1}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->getIconId()I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mIconId:I

    .line 16
    invoke-virtual {p1}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;->getAlpha()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    .line 32
    iget p0, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mAlpha:F

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 28
    iget p0, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mIconId:I

    return p0
.end method

.method getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 20
    iget p0, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mType:I

    return p0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 36
    iput p1, p0, Lopenlight/co/camera/view/statusbar/StatusModel;->mAlpha:F

    return-void
.end method
