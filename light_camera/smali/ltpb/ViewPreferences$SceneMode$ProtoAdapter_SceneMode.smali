.class final Lltpb/ViewPreferences$SceneMode$ProtoAdapter_SceneMode;
.super Lcom/squareup/wire/EnumAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$SceneMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_SceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/ViewPreferences$SceneMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 652
    const-class v0, Lltpb/ViewPreferences$SceneMode;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 650
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$SceneMode$ProtoAdapter_SceneMode;->fromValue(I)Lltpb/ViewPreferences$SceneMode;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/ViewPreferences$SceneMode;
    .locals 0

    .line 657
    invoke-static {p1}, Lltpb/ViewPreferences$SceneMode;->fromValue(I)Lltpb/ViewPreferences$SceneMode;

    move-result-object p0

    return-object p0
.end method
