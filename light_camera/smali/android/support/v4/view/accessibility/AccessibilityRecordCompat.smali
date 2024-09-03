.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi16Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi15Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;


# instance fields
.field private final mRecord:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 86
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi16Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi16Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    goto :goto_23

    .line 87
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1c

    .line 88
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi15Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatApi15Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    goto :goto_23

    .line 90
    :cond_1c
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    :goto_23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    return-void
.end method

.method public static getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 2

    .line 541
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result p0

    return p0
.end method

.method public static getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 2

    .line 585
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result p0

    return p0
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 3

    .line 563
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 3

    .line 607
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public static setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .registers 4
    .param p0    # Landroid/view/accessibility/AccessibilityRecord;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordCompatBaseImpl;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 816
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 819
    :cond_13
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 820
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v2, :cond_1e

    .line 821
    iget-object p0, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz p0, :cond_29

    return v1

    .line 824
    :cond_1e
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    iget-object p1, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public getAddedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 619
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result p0

    return p0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 710
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 736
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentItemIndex()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result p0

    return p0
.end method

.method public getFromIndex()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result p0

    return p0
.end method

.method public getImpl()Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getMaxScrollX()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result p0

    return p0
.end method

.method public getMaxScrollY()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result p0

    return p0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public getRemovedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 645
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result p0

    return p0
.end method

.method public getScrollX()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result p0

    return p0
.end method

.method public getScrollY()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result p0

    return p0
.end method

.method public getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getToIndex()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result p0

    return p0
.end method

.method public getWindowId()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 801
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_c
    return p0
.end method

.method public isChecked()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isFullScreen()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result p0

    return p0
.end method

.method public isPassword()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result p0

    return p0
.end method

.method public isScrollable()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result p0

    return p0
.end method

.method public recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    return-void
.end method

.method public setAddedCount(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 724
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 750
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentItemIndex(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    return-void
.end method

.method public setFromIndex(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    return-void
.end method

.method public setFullScreen(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    return-void
.end method

.method public setItemCount(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    return-void
.end method

.method public setMaxScrollX(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public setMaxScrollY(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 776
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    return-void
.end method

.method public setPassword(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    return-void
.end method

.method public setRemovedCount(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    return-void
.end method

.method public setScrollX(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    return-void
.end method

.method public setScrollY(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {p0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    return-void
.end method

.method public setToIndex(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    return-void
.end method
