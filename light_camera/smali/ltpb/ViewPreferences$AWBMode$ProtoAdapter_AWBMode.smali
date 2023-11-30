.class final Lltpb/ViewPreferences$AWBMode$ProtoAdapter_AWBMode;
.super Lcom/squareup/wire/EnumAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$AWBMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_AWBMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/ViewPreferences$AWBMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 717
    const-class v0, Lltpb/ViewPreferences$AWBMode;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 715
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$AWBMode$ProtoAdapter_AWBMode;->fromValue(I)Lltpb/ViewPreferences$AWBMode;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/ViewPreferences$AWBMode;
    .locals 0

    .line 722
    invoke-static {p1}, Lltpb/ViewPreferences$AWBMode;->fromValue(I)Lltpb/ViewPreferences$AWBMode;

    move-result-object p0

    return-object p0
.end method
