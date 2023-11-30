.class public final Lltpb/ViewPreferences;
.super Lcom/squareup/wire/Message;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/ViewPreferences$ProtoAdapter_ViewPreferences;,
        Lltpb/ViewPreferences$ChannelGain;,
        Lltpb/ViewPreferences$Crop;,
        Lltpb/ViewPreferences$AspectRatio;,
        Lltpb/ViewPreferences$Orientation;,
        Lltpb/ViewPreferences$AWBMode;,
        Lltpb/ViewPreferences$SceneMode;,
        Lltpb/ViewPreferences$ViewPresets;,
        Lltpb/ViewPreferences$HDRMode;,
        Lltpb/ViewPreferences$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lltpb/ViewPreferences;",
        "Lltpb/ViewPreferences$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/ViewPreferences;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ASPECT_RATIO:Lltpb/ViewPreferences$AspectRatio;

.field public static final DEFAULT_AWB_MODE:Lltpb/ViewPreferences$AWBMode;

.field public static final DEFAULT_DISABLE_CROPPING:Ljava/lang/Boolean;

.field public static final DEFAULT_EV_OFFSET:Ljava/lang/Float;

.field public static final DEFAULT_F_NUMBER:Ljava/lang/Float;

.field public static final DEFAULT_HDR_MODE:Lltpb/ViewPreferences$HDRMode;

.field public static final DEFAULT_IMAGE_EXPOSURE:Ljava/lang/Long;

.field public static final DEFAULT_IMAGE_GAIN:Ljava/lang/Float;

.field public static final DEFAULT_IS_ON_TRIPOD:Ljava/lang/Boolean;

.field public static final DEFAULT_ORIENTATION:Lltpb/ViewPreferences$Orientation;

.field public static final DEFAULT_QC_LUX_INDEX:Ljava/lang/Float;

.field public static final DEFAULT_SCENE_MODE:Lltpb/ViewPreferences$SceneMode;

.field public static final DEFAULT_USER_RATING:Ljava/lang/Integer;

.field public static final DEFAULT_VIEW_PRESET:Lltpb/ViewPreferences$ViewPresets;

.field private static final serialVersionUID:J


# instance fields
.field public final aspect_ratio:Lltpb/ViewPreferences$AspectRatio;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.ViewPreferences$AspectRatio#ADAPTER"
        tag = 0xd
    .end annotation
.end field

.field public final awb_gains:Lltpb/ViewPreferences$ChannelGain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.ViewPreferences$ChannelGain#ADAPTER"
        tag = 0xf
    .end annotation
.end field

.field public final awb_mode:Lltpb/ViewPreferences$AWBMode;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.ViewPreferences$AWBMode#ADAPTER"
        tag = 0x7
    .end annotation
.end field

.field public final crop:Lltpb/ViewPreferences$Crop;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.ViewPreferences$Crop#ADAPTER"
        tag = 0xe
    .end annotation
.end field

.field public final disable_cropping:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x3
    .end annotation
.end field

.field public final ev_offset:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x2
    .end annotation
.end field

.field public final f_number:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x1
    .end annotation
.end field

.field public final hdr_mode:Lltpb/ViewPreferences$HDRMode;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.ViewPreferences$HDRMode#ADAPTER"
        tag = 0x4
    .end annotation
.end field

.field public final image_exposure:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0xb
    .end annotation
.end field

.field public final image_gain:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0xa
    .end annotation
.end field

.field public final is_on_tripod:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x10
    .end annotation
.end field

.field public final orientation:Lltpb/ViewPreferences$Orientation;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.ViewPreferences$Orientation#ADAPTER"
        tag = 0x9
    .end annotation
.end field

.field public final qc_lux_index:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x11
    .end annotation
.end field

.field public final scene_mode:Lltpb/ViewPreferences$SceneMode;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.ViewPreferences$SceneMode#ADAPTER"
        tag = 0x6
    .end annotation
.end field

.field public final user_rating:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xc
    .end annotation
.end field

.field public final view_preset:Lltpb/ViewPreferences$ViewPresets;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.ViewPreferences$ViewPresets#ADAPTER"
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Lltpb/ViewPreferences$ProtoAdapter_ViewPreferences;

    invoke-direct {v0}, Lltpb/ViewPreferences$ProtoAdapter_ViewPreferences;-><init>()V

    sput-object v0, Lltpb/ViewPreferences;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lltpb/ViewPreferences;->DEFAULT_F_NUMBER:Ljava/lang/Float;

    .line 32
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lltpb/ViewPreferences;->DEFAULT_EV_OFFSET:Ljava/lang/Float;

    const/4 v1, 0x0

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_DISABLE_CROPPING:Ljava/lang/Boolean;

    .line 36
    sget-object v2, Lltpb/ViewPreferences$HDRMode;->HDR_MODE_NONE:Lltpb/ViewPreferences$HDRMode;

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_HDR_MODE:Lltpb/ViewPreferences$HDRMode;

    .line 38
    sget-object v2, Lltpb/ViewPreferences$ViewPresets;->VIEW_PRESET_NONE:Lltpb/ViewPreferences$ViewPresets;

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_VIEW_PRESET:Lltpb/ViewPreferences$ViewPresets;

    .line 40
    sget-object v2, Lltpb/ViewPreferences$SceneMode;->SCENE_MODE_PORTRAIT:Lltpb/ViewPreferences$SceneMode;

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_SCENE_MODE:Lltpb/ViewPreferences$SceneMode;

    .line 42
    sget-object v2, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_AUTO:Lltpb/ViewPreferences$AWBMode;

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_AWB_MODE:Lltpb/ViewPreferences$AWBMode;

    .line 44
    sget-object v2, Lltpb/ViewPreferences$Orientation;->ORIENTATION_NORMAL:Lltpb/ViewPreferences$Orientation;

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_ORIENTATION:Lltpb/ViewPreferences$Orientation;

    .line 46
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_IMAGE_GAIN:Ljava/lang/Float;

    const-wide/16 v2, 0x0

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_IMAGE_EXPOSURE:Ljava/lang/Long;

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_USER_RATING:Ljava/lang/Integer;

    .line 52
    sget-object v2, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_4_3:Lltpb/ViewPreferences$AspectRatio;

    sput-object v2, Lltpb/ViewPreferences;->DEFAULT_ASPECT_RATIO:Lltpb/ViewPreferences$AspectRatio;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lltpb/ViewPreferences;->DEFAULT_IS_ON_TRIPOD:Ljava/lang/Boolean;

    .line 56
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lltpb/ViewPreferences;->DEFAULT_QC_LUX_INDEX:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lltpb/ViewPreferences$HDRMode;Lltpb/ViewPreferences$ViewPresets;Lltpb/ViewPreferences$SceneMode;Lltpb/ViewPreferences$AWBMode;Lltpb/ViewPreferences$Orientation;Ljava/lang/Float;Ljava/lang/Long;Ljava/lang/Integer;Lltpb/ViewPreferences$AspectRatio;Lltpb/ViewPreferences$Crop;Lltpb/ViewPreferences$ChannelGain;Ljava/lang/Boolean;Ljava/lang/Float;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 209
    sget-object v17, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct/range {v0 .. v17}, Lltpb/ViewPreferences;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lltpb/ViewPreferences$HDRMode;Lltpb/ViewPreferences$ViewPresets;Lltpb/ViewPreferences$SceneMode;Lltpb/ViewPreferences$AWBMode;Lltpb/ViewPreferences$Orientation;Ljava/lang/Float;Ljava/lang/Long;Ljava/lang/Integer;Lltpb/ViewPreferences$AspectRatio;Lltpb/ViewPreferences$Crop;Lltpb/ViewPreferences$ChannelGain;Ljava/lang/Boolean;Ljava/lang/Float;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lltpb/ViewPreferences$HDRMode;Lltpb/ViewPreferences$ViewPresets;Lltpb/ViewPreferences$SceneMode;Lltpb/ViewPreferences$AWBMode;Lltpb/ViewPreferences$Orientation;Ljava/lang/Float;Ljava/lang/Long;Ljava/lang/Integer;Lltpb/ViewPreferences$AspectRatio;Lltpb/ViewPreferences$Crop;Lltpb/ViewPreferences$ChannelGain;Ljava/lang/Boolean;Ljava/lang/Float;Lokio/ByteString;)V
    .locals 3

    move-object v0, p0

    .line 217
    sget-object v1, Lltpb/ViewPreferences;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    move-object/from16 v2, p17

    invoke-direct {p0, v1, v2}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    move-object v1, p1

    .line 218
    iput-object v1, v0, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    move-object v1, p2

    .line 219
    iput-object v1, v0, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    move-object v1, p3

    .line 220
    iput-object v1, v0, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    move-object v1, p4

    .line 221
    iput-object v1, v0, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    move-object v1, p5

    .line 222
    iput-object v1, v0, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    move-object v1, p6

    .line 223
    iput-object v1, v0, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    move-object v1, p7

    .line 224
    iput-object v1, v0, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    move-object v1, p8

    .line 225
    iput-object v1, v0, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    move-object v1, p9

    .line 226
    iput-object v1, v0, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    move-object v1, p10

    .line 227
    iput-object v1, v0, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    move-object v1, p11

    .line 228
    iput-object v1, v0, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    move-object v1, p12

    .line 229
    iput-object v1, v0, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    move-object/from16 v1, p13

    .line 230
    iput-object v1, v0, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    move-object/from16 v1, p14

    .line 231
    iput-object v1, v0, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    move-object/from16 v1, p15

    .line 232
    iput-object v1, v0, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    .line 233
    iput-object v1, v0, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 262
    :cond_0
    instance-of v1, p1, Lltpb/ViewPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 263
    :cond_1
    check-cast p1, Lltpb/ViewPreferences;

    .line 264
    invoke-virtual {p0}, Lltpb/ViewPreferences;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lltpb/ViewPreferences;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    iget-object v3, p1, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    .line 265
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    iget-object v3, p1, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    .line 266
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    iget-object v3, p1, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    .line 267
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    iget-object v3, p1, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    .line 268
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    iget-object v3, p1, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    .line 269
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    iget-object v3, p1, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    .line 270
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    iget-object v3, p1, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    .line 271
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    iget-object v3, p1, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    .line 272
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    iget-object v3, p1, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    .line 273
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    iget-object v3, p1, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    .line 274
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    iget-object v3, p1, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    .line 275
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    iget-object v3, p1, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    .line 276
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    iget-object v3, p1, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    .line 277
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    iget-object v3, p1, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    .line 278
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    iget-object v3, p1, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    .line 279
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    iget-object p1, p1, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    .line 280
    invoke-static {p0, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 285
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_10

    .line 287
    invoke-virtual {p0}, Lltpb/ViewPreferences;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 288
    iget-object v1, p0, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 289
    iget-object v1, p0, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 290
    iget-object v1, p0, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 291
    iget-object v1, p0, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    invoke-virtual {v1}, Lltpb/ViewPreferences$HDRMode;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 292
    iget-object v1, p0, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    invoke-virtual {v1}, Lltpb/ViewPreferences$ViewPresets;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 293
    iget-object v1, p0, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    invoke-virtual {v1}, Lltpb/ViewPreferences$SceneMode;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 294
    iget-object v1, p0, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    invoke-virtual {v1}, Lltpb/ViewPreferences$AWBMode;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 295
    iget-object v1, p0, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    invoke-virtual {v1}, Lltpb/ViewPreferences$Orientation;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 296
    iget-object v1, p0, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 297
    iget-object v1, p0, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 298
    iget-object v1, p0, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 299
    iget-object v1, p0, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    invoke-virtual {v1}, Lltpb/ViewPreferences$AspectRatio;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 300
    iget-object v1, p0, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    invoke-virtual {v1}, Lltpb/ViewPreferences$Crop;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 301
    iget-object v1, p0, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    invoke-virtual {v1}, Lltpb/ViewPreferences$ChannelGain;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 302
    iget-object v1, p0, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 303
    iget-object v1, p0, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :cond_f
    add-int/2addr v0, v2

    .line 304
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_10
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lltpb/ViewPreferences;->newBuilder()Lltpb/ViewPreferences$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilder()Lltpb/ViewPreferences$Builder;
    .locals 2

    .line 238
    new-instance v0, Lltpb/ViewPreferences$Builder;

    invoke-direct {v0}, Lltpb/ViewPreferences$Builder;-><init>()V

    .line 239
    iget-object v1, p0, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->f_number:Ljava/lang/Float;

    .line 240
    iget-object v1, p0, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->ev_offset:Ljava/lang/Float;

    .line 241
    iget-object v1, p0, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->disable_cropping:Ljava/lang/Boolean;

    .line 242
    iget-object v1, p0, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    .line 243
    iget-object v1, p0, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    .line 244
    iget-object v1, p0, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    .line 245
    iget-object v1, p0, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    .line 246
    iget-object v1, p0, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->orientation:Lltpb/ViewPreferences$Orientation;

    .line 247
    iget-object v1, p0, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->image_gain:Ljava/lang/Float;

    .line 248
    iget-object v1, p0, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->image_exposure:Ljava/lang/Long;

    .line 249
    iget-object v1, p0, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->user_rating:Ljava/lang/Integer;

    .line 250
    iget-object v1, p0, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    .line 251
    iget-object v1, p0, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->crop:Lltpb/ViewPreferences$Crop;

    .line 252
    iget-object v1, p0, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    .line 253
    iget-object v1, p0, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->is_on_tripod:Ljava/lang/Boolean;

    .line 254
    iget-object v1, p0, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    iput-object v1, v0, Lltpb/ViewPreferences$Builder;->qc_lux_index:Ljava/lang/Float;

    .line 255
    invoke-virtual {p0}, Lltpb/ViewPreferences;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lltpb/ViewPreferences$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    iget-object v1, p0, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    if-eqz v1, :cond_0

    const-string v1, ", f_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    :cond_0
    iget-object v1, p0, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    if-eqz v1, :cond_1

    const-string v1, ", ev_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    iget-object v1, p0, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const-string v1, ", disable_cropping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    :cond_2
    iget-object v1, p0, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    if-eqz v1, :cond_3

    const-string v1, ", hdr_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    :cond_3
    iget-object v1, p0, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    if-eqz v1, :cond_4

    const-string v1, ", view_preset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    :cond_4
    iget-object v1, p0, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    if-eqz v1, :cond_5

    const-string v1, ", scene_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    :cond_5
    iget-object v1, p0, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    if-eqz v1, :cond_6

    const-string v1, ", awb_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    :cond_6
    iget-object v1, p0, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    if-eqz v1, :cond_7

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    :cond_7
    iget-object v1, p0, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    if-eqz v1, :cond_8

    const-string v1, ", image_gain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    :cond_8
    iget-object v1, p0, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    if-eqz v1, :cond_9

    const-string v1, ", image_exposure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    :cond_9
    iget-object v1, p0, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const-string v1, ", user_rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    :cond_a
    iget-object v1, p0, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    if-eqz v1, :cond_b

    const-string v1, ", aspect_ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    :cond_b
    iget-object v1, p0, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    if-eqz v1, :cond_c

    const-string v1, ", crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    :cond_c
    iget-object v1, p0, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    if-eqz v1, :cond_d

    const-string v1, ", awb_gains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    :cond_d
    iget-object v1, p0, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    const-string v1, ", is_on_tripod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    :cond_e
    iget-object v1, p0, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    if-eqz v1, :cond_f

    const-string v1, ", qc_lux_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    const/4 p0, 0x0

    const/4 v1, 0x2

    const-string v2, "ViewPreferences{"

    .line 328
    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
