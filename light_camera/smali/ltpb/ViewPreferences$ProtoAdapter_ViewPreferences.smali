.class final Lltpb/ViewPreferences$ProtoAdapter_ViewPreferences;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ViewPreferences"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lltpb/ViewPreferences;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1187
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lltpb/ViewPreferences;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$ProtoAdapter_ViewPreferences;->decode(Lcom/squareup/wire/ProtoReader;)Lltpb/ViewPreferences;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lltpb/ViewPreferences;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1234
    new-instance p0, Lltpb/ViewPreferences$Builder;

    invoke-direct {p0}, Lltpb/ViewPreferences$Builder;-><init>()V

    .line 1235
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 1236
    :goto_9
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_145

    packed-switch v2, :pswitch_data_14e

    .line 1297
    :pswitch_13
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 1298
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 1299
    invoke-virtual {p0, v2, v3, v4}, Lltpb/ViewPreferences$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_9

    .line 1295
    :pswitch_23
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->qc_lux_index(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;

    goto :goto_9

    .line 1294
    :pswitch_2f
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->is_on_tripod(Ljava/lang/Boolean;)Lltpb/ViewPreferences$Builder;

    goto :goto_9

    .line 1293
    :pswitch_3b
    sget-object v2, Lltpb/ViewPreferences$ChannelGain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lltpb/ViewPreferences$ChannelGain;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->awb_gains(Lltpb/ViewPreferences$ChannelGain;)Lltpb/ViewPreferences$Builder;

    goto :goto_9

    .line 1292
    :pswitch_47
    sget-object v2, Lltpb/ViewPreferences$Crop;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lltpb/ViewPreferences$Crop;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->crop(Lltpb/ViewPreferences$Crop;)Lltpb/ViewPreferences$Builder;

    goto :goto_9

    .line 1286
    :pswitch_53
    :try_start_53
    sget-object v3, Lltpb/ViewPreferences$AspectRatio;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/ViewPreferences$AspectRatio;

    invoke-virtual {p0, v3}, Lltpb/ViewPreferences$Builder;->aspect_ratio(Lltpb/ViewPreferences$AspectRatio;)Lltpb/ViewPreferences$Builder;
    :try_end_5e
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_53 .. :try_end_5e} :catch_5f

    goto :goto_9

    :catch_5f
    move-exception v3

    .line 1288
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/ViewPreferences$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_9

    .line 1283
    :pswitch_6d
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->user_rating(Ljava/lang/Integer;)Lltpb/ViewPreferences$Builder;

    goto :goto_9

    .line 1282
    :pswitch_79
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->image_exposure(Ljava/lang/Long;)Lltpb/ViewPreferences$Builder;

    goto :goto_9

    .line 1281
    :pswitch_85
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->image_gain(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;

    goto/16 :goto_9

    .line 1275
    :pswitch_92
    :try_start_92
    sget-object v3, Lltpb/ViewPreferences$Orientation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/ViewPreferences$Orientation;

    invoke-virtual {p0, v3}, Lltpb/ViewPreferences$Builder;->orientation(Lltpb/ViewPreferences$Orientation;)Lltpb/ViewPreferences$Builder;
    :try_end_9d
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_92 .. :try_end_9d} :catch_9f

    goto/16 :goto_9

    :catch_9f
    move-exception v3

    .line 1277
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/ViewPreferences$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_9

    .line 1267
    :pswitch_ae
    :try_start_ae
    sget-object v3, Lltpb/ViewPreferences$AWBMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/ViewPreferences$AWBMode;

    invoke-virtual {p0, v3}, Lltpb/ViewPreferences$Builder;->awb_mode(Lltpb/ViewPreferences$AWBMode;)Lltpb/ViewPreferences$Builder;
    :try_end_b9
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_ae .. :try_end_b9} :catch_bb

    goto/16 :goto_9

    :catch_bb
    move-exception v3

    .line 1269
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/ViewPreferences$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_9

    .line 1259
    :pswitch_ca
    :try_start_ca
    sget-object v3, Lltpb/ViewPreferences$SceneMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/ViewPreferences$SceneMode;

    invoke-virtual {p0, v3}, Lltpb/ViewPreferences$Builder;->scene_mode(Lltpb/ViewPreferences$SceneMode;)Lltpb/ViewPreferences$Builder;
    :try_end_d5
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_ca .. :try_end_d5} :catch_d7

    goto/16 :goto_9

    :catch_d7
    move-exception v3

    .line 1261
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/ViewPreferences$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_9

    .line 1251
    :pswitch_e6
    :try_start_e6
    sget-object v3, Lltpb/ViewPreferences$ViewPresets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/ViewPreferences$ViewPresets;

    invoke-virtual {p0, v3}, Lltpb/ViewPreferences$Builder;->view_preset(Lltpb/ViewPreferences$ViewPresets;)Lltpb/ViewPreferences$Builder;
    :try_end_f1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_e6 .. :try_end_f1} :catch_f3

    goto/16 :goto_9

    :catch_f3
    move-exception v3

    .line 1253
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/ViewPreferences$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_9

    .line 1243
    :pswitch_102
    :try_start_102
    sget-object v3, Lltpb/ViewPreferences$HDRMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/ViewPreferences$HDRMode;

    invoke-virtual {p0, v3}, Lltpb/ViewPreferences$Builder;->hdr_mode(Lltpb/ViewPreferences$HDRMode;)Lltpb/ViewPreferences$Builder;
    :try_end_10d
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_102 .. :try_end_10d} :catch_10f

    goto/16 :goto_9

    :catch_10f
    move-exception v3

    .line 1245
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/ViewPreferences$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_9

    .line 1240
    :pswitch_11e
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->disable_cropping(Ljava/lang/Boolean;)Lltpb/ViewPreferences$Builder;

    goto/16 :goto_9

    .line 1239
    :pswitch_12b
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->ev_offset(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;

    goto/16 :goto_9

    .line 1238
    :pswitch_138
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Builder;->f_number(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;

    goto/16 :goto_9

    .line 1303
    :cond_145
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 1304
    invoke-virtual {p0}, Lltpb/ViewPreferences$Builder;->build()Lltpb/ViewPreferences;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_138
        :pswitch_12b
        :pswitch_11e
        :pswitch_102
        :pswitch_e6
        :pswitch_ca
        :pswitch_ae
        :pswitch_13
        :pswitch_92
        :pswitch_85
        :pswitch_79
        :pswitch_6d
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    check-cast p2, Lltpb/ViewPreferences;

    invoke-virtual {p0, p1, p2}, Lltpb/ViewPreferences$ProtoAdapter_ViewPreferences;->encode(Lcom/squareup/wire/ProtoWriter;Lltpb/ViewPreferences;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lltpb/ViewPreferences;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1214
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1215
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1216
    sget-object p0, Lltpb/ViewPreferences$HDRMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1217
    sget-object p0, Lltpb/ViewPreferences$ViewPresets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1218
    sget-object p0, Lltpb/ViewPreferences$SceneMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1219
    sget-object p0, Lltpb/ViewPreferences$AWBMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1220
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    const/16 v1, 0x9

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1221
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1222
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    const/16 v1, 0xb

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1223
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    const/16 v1, 0xc

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1224
    sget-object p0, Lltpb/ViewPreferences$AspectRatio;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1225
    sget-object p0, Lltpb/ViewPreferences$Crop;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    const/16 v1, 0xe

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1226
    sget-object p0, Lltpb/ViewPreferences$ChannelGain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    const/16 v1, 0xf

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1227
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1228
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    const/16 v1, 0x11

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1229
    invoke-virtual {p2}, Lltpb/ViewPreferences;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    .line 1185
    check-cast p1, Lltpb/ViewPreferences;

    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$ProtoAdapter_ViewPreferences;->encodedSize(Lltpb/ViewPreferences;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lltpb/ViewPreferences;)I
    .registers 5

    .line 1192
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p1, Lltpb/ViewPreferences;->f_number:Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->ev_offset:Ljava/lang/Float;

    const/4 v2, 0x2

    .line 1193
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->disable_cropping:Ljava/lang/Boolean;

    const/4 v2, 0x3

    .line 1194
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/ViewPreferences$HDRMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->hdr_mode:Lltpb/ViewPreferences$HDRMode;

    const/4 v2, 0x4

    .line 1195
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/ViewPreferences$ViewPresets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->view_preset:Lltpb/ViewPreferences$ViewPresets;

    const/4 v2, 0x5

    .line 1196
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/ViewPreferences$SceneMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->scene_mode:Lltpb/ViewPreferences$SceneMode;

    const/4 v2, 0x6

    .line 1197
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/ViewPreferences$AWBMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->awb_mode:Lltpb/ViewPreferences$AWBMode;

    const/4 v2, 0x7

    .line 1198
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/ViewPreferences$Orientation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->orientation:Lltpb/ViewPreferences$Orientation;

    const/16 v2, 0x9

    .line 1199
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->image_gain:Ljava/lang/Float;

    const/16 v2, 0xa

    .line 1200
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->image_exposure:Ljava/lang/Long;

    const/16 v2, 0xb

    .line 1201
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->user_rating:Ljava/lang/Integer;

    const/16 v2, 0xc

    .line 1202
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/ViewPreferences$AspectRatio;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->aspect_ratio:Lltpb/ViewPreferences$AspectRatio;

    const/16 v2, 0xd

    .line 1203
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/ViewPreferences$Crop;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->crop:Lltpb/ViewPreferences$Crop;

    const/16 v2, 0xe

    .line 1204
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/ViewPreferences$ChannelGain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    const/16 v2, 0xf

    .line 1205
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->is_on_tripod:Ljava/lang/Boolean;

    const/16 v2, 0x10

    .line 1206
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences;->qc_lux_index:Ljava/lang/Float;

    const/16 v2, 0x11

    .line 1207
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 1208
    invoke-virtual {p1}, Lltpb/ViewPreferences;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1185
    check-cast p1, Lltpb/ViewPreferences;

    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$ProtoAdapter_ViewPreferences;->redact(Lltpb/ViewPreferences;)Lltpb/ViewPreferences;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lltpb/ViewPreferences;)Lltpb/ViewPreferences;
    .registers 3

    .line 1309
    invoke-virtual {p1}, Lltpb/ViewPreferences;->newBuilder()Lltpb/ViewPreferences$Builder;

    move-result-object p0

    .line 1310
    iget-object p1, p0, Lltpb/ViewPreferences$Builder;->crop:Lltpb/ViewPreferences$Crop;

    if-eqz p1, :cond_14

    sget-object p1, Lltpb/ViewPreferences$Crop;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p0, Lltpb/ViewPreferences$Builder;->crop:Lltpb/ViewPreferences$Crop;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lltpb/ViewPreferences$Crop;

    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->crop:Lltpb/ViewPreferences$Crop;

    .line 1311
    :cond_14
    iget-object p1, p0, Lltpb/ViewPreferences$Builder;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    if-eqz p1, :cond_24

    sget-object p1, Lltpb/ViewPreferences$ChannelGain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p0, Lltpb/ViewPreferences$Builder;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lltpb/ViewPreferences$ChannelGain;

    iput-object p1, p0, Lltpb/ViewPreferences$Builder;->awb_gains:Lltpb/ViewPreferences$ChannelGain;

    .line 1312
    :cond_24
    invoke-virtual {p0}, Lltpb/ViewPreferences$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 1313
    invoke-virtual {p0}, Lltpb/ViewPreferences$Builder;->build()Lltpb/ViewPreferences;

    move-result-object p0

    return-object p0
.end method
