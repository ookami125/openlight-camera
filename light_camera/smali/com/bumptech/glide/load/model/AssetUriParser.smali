.class final Lcom/bumptech/glide/load/model/AssetUriParser;
.super Ljava/lang/Object;
.source "AssetUriParser.java"


# static fields
.field private static final ASSET_PATH_SEGMENT:Ljava/lang/String; = "android_asset"

.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final ASSET_PREFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "file:///android_asset/"

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/bumptech/glide/load/model/AssetUriParser;->ASSET_PREFIX_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAssetUri(Landroid/net/Uri;)Z
    .registers 3

    const-string v0, "file"

    .line 22
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "android_asset"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public static toAssetPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/bumptech/glide/load/model/AssetUriParser;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
