.class public Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"


# static fields
.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 2

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 273
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 4

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_17

    if-nez p0, :cond_a

    goto :goto_16

    .line 289
    :cond_a
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 292
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    .line 291
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    return-object v1
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_12

    const-string p0, "<UNKNOWN>"

    return-object p0

    :pswitch_6
    const-string p0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object p0

    :pswitch_9
    const-string p0, "TYPE_SYSTEM"

    return-object p0

    :pswitch_c
    const-string p0, "TYPE_INPUT_METHOD"

    return-object p0

    :pswitch_f
    const-string p0, "TYPE_APPLICATION"

    return-object p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 2

    if-eqz p0, :cond_8

    .line 77
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 325
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 328
    :cond_13
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    .line 329
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v2, :cond_1e

    .line 330
    iget-object p0, p1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz p0, :cond_29

    return v1

    .line 333
    :cond_1e
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    iget-object p1, p1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public getAnchor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    .line 258
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 259
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    .line 258
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 4

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 165
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    :cond_d
    return-void
.end method

.method public getChild(I)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 4

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    .line 231
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildCount()I
    .registers 3

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 217
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .registers 3

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 152
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public getLayer()I
    .registers 3

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 112
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public getParent()Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 3

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    .line 139
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getParent()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoot()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    .line 125
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 126
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    .line 125
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    .line 245
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()I
    .registers 3

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 98
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_c
    return p0
.end method

.method public isAccessibilityFocused()Z
    .registers 3

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 204
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public isActive()Z
    .registers 3

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 178
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public isFocused()Z
    .registers 3

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 191
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public recycle()V
    .registers 3

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 308
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 343
    invoke-virtual {p0, v1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v2, "AccessibilityWindowInfo["

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id="

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getType()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", layer="

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getLayer()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bounds="

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focused="

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasParent="

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_69

    move v1, v3

    goto :goto_6a

    :cond_69
    move v1, v2

    :goto_6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasChildren="

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getChildCount()I

    move-result p0

    if-lez p0, :cond_79

    move v2, v3

    :cond_79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 353
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
