.class final Lltpb/ViewPreferences$HDRMode$ProtoAdapter_HDRMode;
.super Lcom/squareup/wire/EnumAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$HDRMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_HDRMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/ViewPreferences$HDRMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 543
    const-class v0, Lltpb/ViewPreferences$HDRMode;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$HDRMode$ProtoAdapter_HDRMode;->fromValue(I)Lltpb/ViewPreferences$HDRMode;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/ViewPreferences$HDRMode;
    .locals 0

    .line 548
    invoke-static {p1}, Lltpb/ViewPreferences$HDRMode;->fromValue(I)Lltpb/ViewPreferences$HDRMode;

    move-result-object p0

    return-object p0
.end method
