.class public final Lltpb/ViewPreferences$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lltpb/ViewPreferences;",
        "Lltpb/ViewPreferences$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

.field public awb_gains:Lltpb/ViewPreferences$ChannelGain;

.field public awb_mode:Lltpb/ViewPreferences$AWBMode;

.field public crop:Lltpb/ViewPreferences$Crop;

.field public disable_cropping:Ljava/lang/Boolean;

.field public ev_offset:Ljava/lang/Float;

.field public f_number:Ljava/lang/Float;

.field public hdr_mode:Lltpb/ViewPreferences$HDRMode;

.field public image_exposure:Ljava/lang/Long;

.field public image_gain:Ljava/lang/Float;

.field public is_on_tripod:Ljava/lang/Boolean;

.field public orientation:Lltpb/ViewPreferences$Orientation;

.field public qc_lux_index:Ljava/lang/Float;

.field public scene_mode:Lltpb/ViewPreferences$SceneMode;

.field public user_rating:Ljava/lang/Integer;

.field public view_preset:Lltpb/ViewPreferences$ViewPresets;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public aspect_ratio(Lltpb/ViewPreferences$AspectRatio;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 460
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    return-object p0
.end method

.method public awb_gains(Lltpb/ViewPreferences$ChannelGain;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 477
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    return-object p0
.end method

.method public awb_mode(Lltpb/ViewPreferences$AWBMode;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 420
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 0

    .line 331
    invoke-virtual {p0}, Lltpb/ViewPreferences$Builder;->build()Lltpb/ViewPreferences;

    move-result-object p0

    return-object p0
.end method

.method public build()Lltpb/ViewPreferences;
    .locals 21

    move-object/from16 v0, p0

    .line 499
    new-instance v19, Lltpb/ViewPreferences;

    move-object/from16 v1, v19

    iget-object v2, v0, Lltpb/ViewPreferences$Builder;->f_number:Ljava/lang/Float;

    iget-object v3, v0, Lltpb/ViewPreferences$Builder;->ev_offset:Ljava/lang/Float;

    iget-object v4, v0, Lltpb/ViewPreferences$Builder;->disable_cropping:Ljava/lang/Boolean;

    iget-object v5, v0, Lltpb/ViewPreferences$Builder;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    iget-object v6, v0, Lltpb/ViewPreferences$Builder;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    iget-object v7, v0, Lltpb/ViewPreferences$Builder;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    iget-object v8, v0, Lltpb/ViewPreferences$Builder;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    iget-object v9, v0, Lltpb/ViewPreferences$Builder;->orientation:Lltpb/ViewPreferences$Orientation;

    iget-object v10, v0, Lltpb/ViewPreferences$Builder;->image_gain:Ljava/lang/Float;

    iget-object v11, v0, Lltpb/ViewPreferences$Builder;->image_exposure:Ljava/lang/Long;

    iget-object v12, v0, Lltpb/ViewPreferences$Builder;->user_rating:Ljava/lang/Integer;

    iget-object v13, v0, Lltpb/ViewPreferences$Builder;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    iget-object v14, v0, Lltpb/ViewPreferences$Builder;->crop:Lltpb/ViewPreferences$Crop;

    iget-object v15, v0, Lltpb/ViewPreferences$Builder;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    move-object/from16 v20, v1

    iget-object v1, v0, Lltpb/ViewPreferences$Builder;->is_on_tripod:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lltpb/ViewPreferences$Builder;->qc_lux_index:Ljava/lang/Float;

    move-object/from16 v17, v1

    invoke-super/range {p0 .. p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v18

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lltpb/ViewPreferences;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lltpb/ViewPreferences$HDRMode;Lltpb/ViewPreferences$ViewPresets;Lltpb/ViewPreferences$SceneMode;Lltpb/ViewPreferences$AWBMode;Lltpb/ViewPreferences$Orientation;Ljava/lang/Float;Ljava/lang/Long;Ljava/lang/Integer;Lltpb/ViewPreferences$AspectRatio;Lltpb/ViewPreferences$Crop;Lltpb/ViewPreferences$ChannelGain;Ljava/lang/Boolean;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v19
.end method

.method public crop(Lltpb/ViewPreferences$Crop;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 469
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->crop:Lltpb/ViewPreferences$Crop;

    return-object p0
.end method

.method public disable_cropping(Ljava/lang/Boolean;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 388
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->disable_cropping:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ev_offset(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 379
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->ev_offset:Ljava/lang/Float;

    return-object p0
.end method

.method public f_number(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 371
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->f_number:Ljava/lang/Float;

    return-object p0
.end method

.method public hdr_mode(Lltpb/ViewPreferences$HDRMode;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 396
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    return-object p0
.end method

.method public image_exposure(Ljava/lang/Long;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 444
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->image_exposure:Ljava/lang/Long;

    return-object p0
.end method

.method public image_gain(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 436
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->image_gain:Ljava/lang/Float;

    return-object p0
.end method

.method public is_on_tripod(Ljava/lang/Boolean;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 485
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->is_on_tripod:Ljava/lang/Boolean;

    return-object p0
.end method

.method public orientation(Lltpb/ViewPreferences$Orientation;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 428
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->orientation:Lltpb/ViewPreferences$Orientation;

    return-object p0
.end method

.method public qc_lux_index(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 493
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->qc_lux_index:Ljava/lang/Float;

    return-object p0
.end method

.method public scene_mode(Lltpb/ViewPreferences$SceneMode;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 412
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    return-object p0
.end method

.method public user_rating(Ljava/lang/Integer;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 452
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->user_rating:Ljava/lang/Integer;

    return-object p0
.end method

.method public view_preset(Lltpb/ViewPreferences$ViewPresets;)Lltpb/ViewPreferences$Builder;
    .locals 0

    .line 404
    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    return-object p0
.end method
