.class Lopenlight/co/camera/view/setting/SettingAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;,
        Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;,
        Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "light.co.lightgallery"

.field private static final MANAGE_PRESETS_ACTIVITY_CLASSNAME:Ljava/lang/String; = "openlight.co.gallery.view.ManagePresetsActivity"

.field private static final TAG:Ljava/lang/String; = "SettingAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMarginValue:I

.field private mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

.field private final mPrefKeyToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lopenlight/co/camera/view/setting/SettingModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 252
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mPrefKeyToIndex:Ljava/util/HashMap;

    .line 54
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    .line 253
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter;->updateData()V

    return-void
.end method

.method static isSettingDisabled(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Z
    .locals 1

    .line 460
    sget-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$1;->$SwitchMap$light$co$camera$view$setting$SettingAdapter$SettingsId:[I

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 466
    :pswitch_0
    invoke-static {}, Lopenlight/co/camera/utils/CipherManager;->get()Lopenlight/co/camera/utils/CipherManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CipherManager;->hasKey()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 464
    :pswitch_1
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isLensBlockedAlertDisabled()Z

    move-result p0

    return p0

    .line 462
    :pswitch_2
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isPocketDetectionDisabled()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lopenlight/co/camera/view/setting/SettingAdapter;Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;Landroid/view/View;)V
    .locals 0

    .line 387
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->getAdapterPosition()I

    move-result p1

    .line 389
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    .line 390
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/setting/SettingModel;

    .line 389
    invoke-interface {p2, p1, p0}, Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;->onOptionClicked(ILopenlight/co/camera/view/setting/SettingModel;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lopenlight/co/camera/view/setting/SettingAdapter;Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 411
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->getAdapterPosition()I

    move-result p1

    .line 414
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/setting/SettingModel;

    .line 415
    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object v1

    .line 417
    invoke-static {v1}, Lopenlight/co/camera/view/setting/SettingAdapter;->isSettingDisabled(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    .line 419
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 421
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

    invoke-interface {p0, p3, p1, v0}, Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;->onSwitchTypeSelected(ZILopenlight/co/camera/view/setting/SettingModel;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$2(Lopenlight/co/camera/view/setting/SettingAdapter;ZLopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;Landroid/view/View;)V
    .locals 0

    .line 433
    iget-object p4, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    .line 436
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/setting/SettingModel;

    .line 435
    invoke-interface {p1, p0}, Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;->onDialogOpen(Lopenlight/co/camera/view/setting/SettingModel;)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

    invoke-virtual {p3}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {p0, p1}, Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;->onStartActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private populateList()V
    .locals 7

    .line 265
    invoke-static {}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->values()[Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 266
    invoke-virtual {p0, v3}, Lopenlight/co/camera/view/setting/SettingAdapter;->createModel(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Lopenlight/co/camera/view/setting/SettingModel;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 268
    iget-object v5, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mPrefKeyToIndex:Ljava/util/HashMap;

    invoke-virtual {v4}, Lopenlight/co/camera/view/setting/SettingModel;->getPreferenceKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method createModel(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Lopenlight/co/camera/view/setting/SettingModel;
    .locals 0

    .line 320
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->isImplemented()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->getSettingModel()Lopenlight/co/camera/view/setting/SettingModel;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingModel;->initValue()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 451
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method getKeyPosition(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 301
    :goto_0
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 302
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/view/setting/SettingModel;

    invoke-virtual {v1}, Lopenlight/co/camera/view/setting/SettingModel;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method getSettingsIdFromIndex(I)Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
    .locals 0

    .line 315
    invoke-static {}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->values()[Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method indexForKey(Ljava/lang/String;)I
    .locals 0

    .line 290
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mPrefKeyToIndex:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 36
    check-cast p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/setting/SettingAdapter;->onBindViewHolder(Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;I)V
    .locals 9

    .line 338
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/setting/SettingModel;

    if-nez p2, :cond_0

    return-void

    .line 340
    :cond_0
    iget v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mMarginValue:I

    const/16 v1, 0x30

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->parentItem:Landroid/view/ViewGroup;

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 343
    iget v3, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mMarginValue:I

    if-ne v3, v1, :cond_1

    .line 344
    iget v3, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mMarginValue:I

    add-int/lit8 v3, v3, -0x18

    iget v4, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mMarginValue:I

    add-int/lit8 v4, v4, -0x18

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 345
    :cond_1
    iget v3, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mMarginValue:I

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_2

    .line 346
    iget v3, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mMarginValue:I

    add-int/lit8 v3, v3, -0x18

    iget v4, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mMarginValue:I

    add-int/lit8 v4, v4, -0x18

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 348
    :cond_2
    :goto_0
    iget-object v3, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->parentItem:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    :cond_3
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getIconId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 351
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getIconId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 354
    :cond_4
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->titleItem:Landroid/widget/TextView;

    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 357
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->subtitleItem:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 359
    :cond_5
    iget-object v3, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->subtitleItem:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v3, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->subtitleItem:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_1
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object v0

    .line 364
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getType()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v6, :cond_e

    const/4 v8, 0x3

    if-eq v3, v8, :cond_9

    .line 427
    iget-object p2, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    invoke-virtual {p2, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 428
    iget-object p2, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->optionText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 429
    invoke-virtual {p2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    move v2, v6

    :cond_6
    if-nez v2, :cond_7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 432
    :cond_7
    new-instance v3, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;

    invoke-direct {v3, p0, v2, p1, v0}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$nNZSKcZ2H9KHXRvmcQRir2ipuFs;-><init>(Lopenlight/co/camera/view/setting/SettingAdapter;ZLopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    :cond_8
    iget-object p0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 444
    iget-object p0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->optionText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 372
    :cond_9
    sget-object v3, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->HAPTIC:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {v0, v3}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    invoke-virtual {v3}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isHapticFeedbackDisabled()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    sget-object v3, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->AUDIO:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 373
    invoke-virtual {v0, v3}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    invoke-virtual {v0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isAudioDisabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 374
    :cond_b
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->parentItem:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 375
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e002a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 377
    :cond_c
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->parentItem:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 378
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_2
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object p2

    sget-object v3, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->FTU_RESET:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {p2, v3}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 383
    iget-object p2, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->optionText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :cond_d
    iget-object p2, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->parentItem:Landroid/view/ViewGroup;

    new-instance v0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$HuJmipwoo-BiSqe_xDfVasOEfzM;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$HuJmipwoo-BiSqe_xDfVasOEfzM;-><init>(Lopenlight/co/camera/view/setting/SettingAdapter;Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object p0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 394
    iget-object p0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->optionText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object p0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    invoke-virtual {p0, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_4

    .line 398
    :cond_e
    iget-object v3, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 399
    iget-object v3, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 400
    iget-object v3, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->optionText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingAdapter;->isSettingDisabled(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 403
    iget-object p2, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->parentItem:Landroid/view/ViewGroup;

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_3

    .line 406
    :cond_f
    iget-object v0, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->parentItem:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    const-string v0, "on"

    .line 407
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 409
    :goto_3
    iget-object p2, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    invoke-virtual {p2, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 410
    iget-object p2, p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;->switchButton:Landroid/widget/Switch;

    new-instance v0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$8hBKRpFB24VVaqBb5gKIbbgczF8;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingAdapter$8hBKRpFB24VVaqBb5gKIbbgczF8;-><init>(Lopenlight/co/camera/view/setting/SettingAdapter;Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/setting/SettingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;
    .locals 1

    .line 331
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0b0065

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 333
    new-instance p1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method setMarginValue(I)V
    .locals 0

    .line 238
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mMarginValue:I

    .line 239
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setOnSettingAdapterListener(Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mOnSettingAdapterListener:Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;

    return-void
.end method

.method updateData()V
    .locals 1

    .line 258
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingAdapter;->populateList()V

    :cond_0
    return-void
.end method

.method updateItemSelected(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 277
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingAdapter;->mSettingList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/setting/SettingModel;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/setting/SettingModel;->setSettingsValue(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, p2}, Lopenlight/co/camera/view/setting/SettingAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
