.class Lopenlight/co/camera/view/setting/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/setting/SettingsFragment;->initSettingsAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/setting/SettingsFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogOpen(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$700(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->FTU_RESET:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    if-ne v0, v1, :cond_0

    .line 321
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1200(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V

    :cond_0
    return-void
.end method

.method public onOptionClicked(ILopenlight/co/camera/view/setting/SettingModel;)V
    .locals 3

    .line 279
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$200(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$102(Lopenlight/co/camera/view/setting/SettingsFragment;I)I

    .line 280
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$200(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$302(Lopenlight/co/camera/view/setting/SettingsFragment;I)I

    const-string v0, "dof_setting"

    .line 281
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {p0, p2}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$400(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object v0

    .line 285
    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->HAPTIC:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    .line 286
    invoke-static {v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$500(Lopenlight/co/camera/view/setting/SettingsFragment;)Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isHapticFeedbackDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->AUDIO:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    .line 288
    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$500(Lopenlight/co/camera/view/setting/SettingsFragment;)Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isAudioDisabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    :cond_2
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    const v0, 0x7f0e0106

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 289
    invoke-virtual {p1, v0, v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 291
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$600(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$700(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {p0, p2, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$800(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;I)V

    :goto_0
    return-void
.end method

.method public onStartActivity(Landroid/content/Intent;)V
    .locals 0

    .line 327
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSwitchTypeSelected(ZILopenlight/co/camera/view/setting/SettingModel;)V
    .locals 2

    .line 302
    invoke-virtual {p3}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingAdapter;->isSettingDisabled(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    const p2, 0x7f0e0106

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p3}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    .line 304
    invoke-virtual {p1, p2, v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 306
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$600(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$700(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$200(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$102(Lopenlight/co/camera/view/setting/SettingsFragment;I)I

    .line 310
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {v0, p2}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$902(Lopenlight/co/camera/view/setting/SettingsFragment;I)I

    .line 311
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    :goto_0
    invoke-static {p2, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1002(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment$1;->this$0:Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-static {p0, p3}, Lopenlight/co/camera/view/setting/SettingsFragment;->access$1100(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V

    :goto_1
    return-void
.end method
