.class public Lnet/hockeyapp/android/utils/FeedbackParser;
.super Ljava/lang/Object;
.source "FeedbackParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/FeedbackParser$1;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/FeedbackParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/FeedbackParser;
    .registers 1

    .line 37
    sget-object v0, Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;->INSTANCE:Lnet/hockeyapp/android/utils/FeedbackParser;

    return-object v0
.end method


# virtual methods
.method public parseFeedbackResponse(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;
    .registers 32

    move-object/from16 v0, p1

    if-eqz v0, :cond_270

    .line 51
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "feedback"

    .line 53
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 54
    new-instance v4, Lnet/hockeyapp/android/objects/Feedback;

    invoke-direct {v4}, Lnet/hockeyapp/android/objects/Feedback;-><init>()V

    const-string v0, "messages"

    .line 57
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1dd

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 64
    :goto_26
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1d5

    .line 65
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "subject"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "text"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "oem"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 68
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "model"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    .line 69
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "os_version"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 70
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "created_at"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "id"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 72
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v1, "token"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v6, "via"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 74
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v17, v2

    const-string v2, "user_string"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v18, v3

    const-string v3, "clean_text"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v19, v4

    const-string v4, "name"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v20, v5

    const-string v5, "app_id"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v21, v0

    const-string v0, "attachments"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    if-eqz v0, :cond_17a

    .line 82
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move/from16 v23, v6

    move/from16 v22, v7

    const/4 v7, 0x0

    .line 84
    :goto_fe
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v7, v6, :cond_175

    .line 85
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v24, v2

    const-string v2, "id"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 86
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v25, v1

    const-string v1, "feedback_message_id"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 87
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v26, v9

    const-string v9, "file_name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v27, v8

    const-string v8, "url"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v28, v12

    const-string v12, "created_at"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    move-object/from16 v29, v0

    const-string v0, "updated_at"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v12, Lnet/hockeyapp/android/objects/FeedbackAttachment;

    invoke-direct {v12}, Lnet/hockeyapp/android/objects/FeedbackAttachment;-><init>()V

    .line 93
    invoke-virtual {v12, v2}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setId(I)V

    .line 94
    invoke-virtual {v12, v1}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setMessageId(I)V

    .line 95
    invoke-virtual {v12, v6}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setFilename(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v12, v8}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setUrl(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v12, v9}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setCreatedAt(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v12, v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setUpdatedAt(Ljava/lang/String;)V

    .line 99
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v9, v26

    move-object/from16 v8, v27

    move-object/from16 v12, v28

    move-object/from16 v0, v29

    goto :goto_fe

    :cond_175
    move-object/from16 v25, v1

    move-object/from16 v24, v2

    goto :goto_182

    :cond_17a
    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move/from16 v23, v6

    move/from16 v22, v7

    :goto_182
    move-object/from16 v27, v8

    move-object/from16 v26, v9

    move-object/from16 v28, v12

    .line 103
    new-instance v0, Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-direct {v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;-><init>()V

    .line 104
    invoke-virtual {v0, v5}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setAppId(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCleanText(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v13}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCreatedAt(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v14}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setId(I)V

    .line 108
    invoke-virtual {v0, v11}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setModel(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v4}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setName(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v10}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOem(Ljava/lang/String;)V

    move-object/from16 v1, v28

    .line 111
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOsVersion(Ljava/lang/String;)V

    move-object/from16 v1, v27

    .line 112
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setSubjec(Ljava/lang/String;)V

    move-object/from16 v1, v26

    .line 113
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setText(Ljava/lang/String;)V

    move-object/from16 v1, v25

    .line 114
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setToken(Ljava/lang/String;)V

    move-object/from16 v1, v24

    .line 115
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setUserString(Ljava/lang/String;)V

    move/from16 v1, v23

    .line 116
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setVia(I)V

    .line 117
    invoke-virtual {v0, v15}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setFeedbackAttachments(Ljava/util/List;)V

    move-object/from16 v1, v20

    .line 118
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v22, 0x1

    move-object v5, v1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v0, v21

    goto/16 :goto_26

    :cond_1d5
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v1, v5

    move-object v0, v1

    move-object v1, v4

    goto :goto_1e3

    :cond_1dd
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v1, v4

    const/4 v0, 0x0

    .line 122
    :goto_1e3
    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/objects/Feedback;->setMessages(Ljava/util/ArrayList;)V
    :try_end_1e6
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1e6} :catch_268

    :try_start_1e6
    const-string v0, "name"
    :try_end_1e8
    .catch Lorg/json/JSONException; {:try_start_1e6 .. :try_end_1e8} :catch_1f8

    move-object/from16 v2, v18

    .line 125
    :try_start_1ea
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/objects/Feedback;->setName(Ljava/lang/String;)V
    :try_end_1f5
    .catch Lorg/json/JSONException; {:try_start_1ea .. :try_end_1f5} :catch_1f6

    goto :goto_1fe

    :catch_1f6
    move-exception v0

    goto :goto_1fb

    :catch_1f8
    move-exception v0

    move-object/from16 v2, v18

    .line 127
    :goto_1fb
    :try_start_1fb
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1fe
    .catch Lorg/json/JSONException; {:try_start_1fb .. :try_end_1fe} :catch_268

    :goto_1fe
    :try_start_1fe
    const-string v0, "email"

    .line 131
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/objects/Feedback;->setEmail(Ljava/lang/String;)V
    :try_end_20b
    .catch Lorg/json/JSONException; {:try_start_1fe .. :try_end_20b} :catch_20c

    goto :goto_210

    :catch_20c
    move-exception v0

    .line 133
    :try_start_20d
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_210
    .catch Lorg/json/JSONException; {:try_start_20d .. :try_end_210} :catch_268

    :goto_210
    :try_start_210
    const-string v0, "id"

    .line 137
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/objects/Feedback;->setId(I)V
    :try_end_219
    .catch Lorg/json/JSONException; {:try_start_210 .. :try_end_219} :catch_21a

    goto :goto_21e

    :catch_21a
    move-exception v0

    .line 139
    :try_start_21b
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_21e
    .catch Lorg/json/JSONException; {:try_start_21b .. :try_end_21e} :catch_268

    :goto_21e
    :try_start_21e
    const-string v0, "created_at"

    .line 143
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/objects/Feedback;->setCreatedAt(Ljava/lang/String;)V
    :try_end_22b
    .catch Lorg/json/JSONException; {:try_start_21e .. :try_end_22b} :catch_22c

    goto :goto_230

    :catch_22c
    move-exception v0

    .line 145
    :try_start_22d
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    :goto_230
    new-instance v2, Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-direct {v2}, Lnet/hockeyapp/android/objects/FeedbackResponse;-><init>()V
    :try_end_235
    .catch Lorg/json/JSONException; {:try_start_22d .. :try_end_235} :catch_268

    .line 149
    :try_start_235
    invoke-virtual {v2, v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setFeedback(Lnet/hockeyapp/android/objects/Feedback;)V
    :try_end_238
    .catch Lorg/json/JSONException; {:try_start_235 .. :try_end_238} :catch_265

    :try_start_238
    const-string v0, "status"
    :try_end_23a
    .catch Lorg/json/JSONException; {:try_start_238 .. :try_end_23a} :catch_24a

    move-object/from16 v1, v17

    .line 151
    :try_start_23c
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setStatus(Ljava/lang/String;)V
    :try_end_247
    .catch Lorg/json/JSONException; {:try_start_23c .. :try_end_247} :catch_248

    goto :goto_250

    :catch_248
    move-exception v0

    goto :goto_24d

    :catch_24a
    move-exception v0

    move-object/from16 v1, v17

    .line 153
    :goto_24d
    :try_start_24d
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_250
    .catch Lorg/json/JSONException; {:try_start_24d .. :try_end_250} :catch_265

    :goto_250
    :try_start_250
    const-string v0, "token"

    .line 158
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setToken(Ljava/lang/String;)V
    :try_end_25d
    .catch Lorg/json/JSONException; {:try_start_250 .. :try_end_25d} :catch_25e

    goto :goto_262

    :catch_25e
    move-exception v0

    .line 160
    :try_start_25f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_262
    .catch Lorg/json/JSONException; {:try_start_25f .. :try_end_262} :catch_265

    :goto_262
    move-object/from16 v16, v2

    goto :goto_272

    :catch_265
    move-exception v0

    move-object v1, v2

    goto :goto_26a

    :catch_268
    move-exception v0

    const/4 v1, 0x0

    .line 163
    :goto_26a
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v16, v1

    goto :goto_272

    :cond_270
    const/16 v16, 0x0

    :goto_272
    return-object v16
.end method
