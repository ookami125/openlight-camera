.class final Lltpb/ViewPreferences$ViewPresets$ProtoAdapter_ViewPresets;
.super Lcom/squareup/wire/EnumAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$ViewPresets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ViewPresets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/ViewPreferences$ViewPresets;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 596
    const-class v0, Lltpb/ViewPreferences$ViewPresets;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 594
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$ViewPresets$ProtoAdapter_ViewPresets;->fromValue(I)Lltpb/ViewPreferences$ViewPresets;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/ViewPreferences$ViewPresets;
    .locals 0

    .line 601
    invoke-static {p1}, Lltpb/ViewPreferences$ViewPresets;->fromValue(I)Lltpb/ViewPreferences$ViewPresets;

    move-result-object p0

    return-object p0
.end method
