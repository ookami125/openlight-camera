.class final Lltpb/ViewPreferences$Orientation$ProtoAdapter_Orientation;
.super Lcom/squareup/wire/EnumAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$Orientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/ViewPreferences$Orientation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 776
    const-class v0, Lltpb/ViewPreferences$Orientation;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .registers 2

    .line 774
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$Orientation$ProtoAdapter_Orientation;->fromValue(I)Lltpb/ViewPreferences$Orientation;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/ViewPreferences$Orientation;
    .registers 2

    .line 781
    invoke-static {p1}, Lltpb/ViewPreferences$Orientation;->fromValue(I)Lltpb/ViewPreferences$Orientation;

    move-result-object p0

    return-object p0
.end method
