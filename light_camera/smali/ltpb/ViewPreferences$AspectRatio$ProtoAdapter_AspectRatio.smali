.class final Lltpb/ViewPreferences$AspectRatio$ProtoAdapter_AspectRatio;
.super Lcom/squareup/wire/EnumAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$AspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_AspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/ViewPreferences$AspectRatio;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 817
    const-class v0, Lltpb/ViewPreferences$AspectRatio;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .registers 2

    .line 815
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$AspectRatio$ProtoAdapter_AspectRatio;->fromValue(I)Lltpb/ViewPreferences$AspectRatio;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/ViewPreferences$AspectRatio;
    .registers 2

    .line 822
    invoke-static {p1}, Lltpb/ViewPreferences$AspectRatio;->fromValue(I)Lltpb/ViewPreferences$AspectRatio;

    move-result-object p0

    return-object p0
.end method
