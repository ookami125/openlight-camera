.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Visibility$DisappearListener;,
        Landroid/support/transition/Visibility$VisibilityInfo;,
        Landroid/support/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    .line 78
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 92
    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 92
    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 99
    sget-object v0, Landroid/support/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 101
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1d

    .line 106
    invoke-virtual {p0, p2}, Landroid/support/transition/Visibility;->setMode(I)V

    :cond_1d
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 4

    .line 142
    iget-object p0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    .line 143
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:visibility"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:visibility:parent"

    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    .line 145
    new-array p0, p0, [I

    .line 146
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 147
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:visibility:screenLocation"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;
    .registers 8

    .line 187
    new-instance p0, Landroid/support/transition/Visibility$VisibilityInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$VisibilityInfo;-><init>(Landroid/support/transition/Visibility$1;)V

    const/4 v1, 0x0

    .line 188
    iput-boolean v1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 189
    iput-boolean v1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    const/4 v2, -0x1

    if-eqz p1, :cond_35

    .line 190
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 191
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 192
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:parent"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_39

    .line 194
    :cond_35
    iput v2, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 195
    iput-object v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    :goto_39
    if-eqz p2, :cond_62

    .line 197
    iget-object v3, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 198
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 199
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_66

    .line 201
    :cond_62
    iput v2, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 202
    iput-object v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    :goto_66
    const/4 v0, 0x1

    if-eqz p1, :cond_a2

    if-eqz p2, :cond_a2

    .line 205
    iget p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne p1, p2, :cond_78

    iget-object p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object p2, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_78

    return-object p0

    .line 209
    :cond_78
    iget p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq p1, p2, :cond_90

    .line 210
    iget p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_87

    .line 211
    iput-boolean v1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 212
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_b7

    .line 213
    :cond_87
    iget p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_b7

    .line 214
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 215
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_b7

    .line 219
    :cond_90
    iget-object p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_99

    .line 220
    iput-boolean v1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 221
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_b7

    .line 222
    :cond_99
    iget-object p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_b7

    .line 223
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 224
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_b7

    :cond_a2
    if-nez p1, :cond_ad

    .line 228
    iget p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_ad

    .line 229
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 230
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_b7

    :cond_ad
    if-nez p2, :cond_b7

    .line 231
    iget p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_b7

    .line 232
    iput-boolean v1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 233
    iput-boolean v0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    :cond_b7
    :goto_b7
    return-object p0
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 152
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 242
    invoke-direct {p0, p2, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 243
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 245
    :cond_10
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_21

    .line 246
    iget v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 249
    :cond_21
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMode()I
    .registers 1

    .line 132
    iget p0, p0, Landroid/support/transition/Visibility;->mMode:I

    return p0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 138
    sget-object p0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object p0
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 458
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 459
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 460
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v0

    .line 465
    :cond_1d
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object p0

    .line 466
    iget-boolean p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p1, :cond_2e

    iget p1, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz p1, :cond_2d

    iget p0, p0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p0, :cond_2e

    :cond_2d
    const/4 v0, 0x1

    :cond_2e
    return v0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 179
    :cond_4
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:visibility"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 180
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:parent"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    const/4 p0, 0x1

    :cond_21
    return p0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 8

    .line 275
    iget p3, p0, Landroid/support/transition/Visibility;->mMode:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2d

    if-nez p4, :cond_a

    goto :goto_2d

    :cond_a
    if-nez p2, :cond_26

    .line 279
    iget-object p3, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    .line 280
    invoke-virtual {p0, p3, p5}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v1

    .line 282
    invoke-virtual {p0, p3, p5}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object p3

    .line 284
    invoke-direct {p0, v1, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object p3

    .line 285
    iget-boolean p3, p3, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p3, :cond_26

    return-object v0

    .line 289
    :cond_26
    iget-object p3, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .line 332
    iget p3, p0, Landroid/support/transition/Visibility;->mMode:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_8

    return-object v1

    :cond_8
    if-eqz p2, :cond_d

    .line 336
    iget-object p3, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_e

    :cond_d
    move-object p3, v1

    :goto_e
    if-eqz p4, :cond_13

    .line 337
    iget-object v2, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_14

    :cond_13
    move-object v2, v1

    :goto_14
    const/4 v3, 0x1

    if-eqz v2, :cond_26

    .line 340
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1e

    goto :goto_26

    :cond_1e
    const/4 v4, 0x4

    if-ne p5, v4, :cond_22

    goto :goto_24

    :cond_22
    if-ne p3, v2, :cond_29

    :goto_24
    move-object p3, v1

    goto :goto_73

    :cond_26
    :goto_26
    if-eqz v2, :cond_2b

    move-object p3, v2

    :cond_29
    :goto_29
    move-object v2, v1

    goto :goto_73

    :cond_2b
    if-eqz p3, :cond_71

    .line 348
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_34

    goto :goto_29

    .line 351
    :cond_34
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_71

    .line 352
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 353
    invoke-virtual {p0, v2, v3}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v4

    .line 354
    invoke-virtual {p0, v2, v3}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v5

    .line 357
    invoke-direct {p0, v4, v5}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v4

    .line 358
    iget-boolean v4, v4, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v4, :cond_57

    .line 359
    invoke-static {p1, p3, v2}, Landroid/support/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_29

    .line 361
    :cond_57
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_6f

    .line 362
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6f

    .line 363
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6f

    iget-boolean v2, p0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v2, :cond_6f

    goto :goto_29

    :cond_6f
    move-object p3, v1

    goto :goto_29

    :cond_71
    move-object p3, v1

    move-object v2, p3

    :goto_73
    const/4 v4, 0x0

    if-eqz p3, :cond_bb

    if-eqz p2, :cond_bb

    .line 390
    iget-object p5, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    .line 391
    aget v1, p5, v4

    .line 392
    aget p5, p5, v3

    .line 393
    new-array v0, v0, [I

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 395
    aget v2, v0, v4

    sub-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 396
    aget v0, v0, v3

    sub-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p3, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 397
    invoke-static {p1}, Landroid/support/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;

    move-result-object p5

    .line 398
    invoke-interface {p5, p3}, Landroid/support/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 399
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_b2

    .line 401
    invoke-interface {p5, p3}, Landroid/support/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    goto :goto_ba

    .line 404
    :cond_b2
    new-instance p2, Landroid/support/transition/Visibility$1;

    invoke-direct {p2, p0, p5, p3}, Landroid/support/transition/Visibility$1;-><init>(Landroid/support/transition/Visibility;Landroid/support/transition/ViewGroupOverlayImpl;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_ba
    return-object p1

    :cond_bb
    if-eqz v2, :cond_dd

    .line 415
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p3

    .line 416
    invoke-static {v2, v4}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 417
    invoke-virtual {p0, p1, v2, p2, p4}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_d9

    .line 419
    new-instance p2, Landroid/support/transition/Visibility$DisappearListener;

    invoke-direct {p2, v2, p5, v3}, Landroid/support/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 421
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    invoke-static {p1, p2}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 423
    invoke-virtual {p0, p2}, Landroid/support/transition/Visibility;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    goto :goto_dc

    .line 425
    :cond_d9
    invoke-static {v2, p3}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :goto_dc
    return-object p1

    :cond_dd
    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    const/4 p0, 0x0

    return-object p0
.end method

.method public setMode(I)V
    .registers 3

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_7

    .line 121
    iput p1, p0, Landroid/support/transition/Visibility;->mMode:I

    return-void

    .line 119
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
