.class public Lopenlight/co/camera/view/ftu/FtuAnimationUtils;
.super Ljava/lang/Object;
.source "FtuAnimationUtils.java"


# static fields
.field private static final ALPHA_ANIMATION_DURATION:J = 0x12cL

.field private static final ALPHA_OPAQUE:F = 1.0f

.field private static final ALPHA_TRANSPARENT:F = 0.0f

.field private static final ANIMATION_START_DELAY:J = 0x3e8L

.field private static final FLICK_DISTANCE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "FtuAnimationUtils"

.field private static final TRANSLATE_ANIMATION_DURATION:I = 0x1f4

.field private static final TRANSLATE_DISTANCE:I = 0xc8

.field private static sAnimPlaying:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appearAgain(Landroid/view/View;)V
    .registers 4

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x514

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$wof7s8sUJvBqr6WhAQImP_Bn5Oo;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$wof7s8sUJvBqr6WhAQImP_Bn5Oo;-><init>(Landroid/view/View;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static flickDownAnimation(Landroid/view/View;)V
    .registers 5

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$5APKDBU27YMuT4uWCJaR4x-ym1g;

    invoke-direct {v2, v0, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$5APKDBU27YMuT4uWCJaR4x-ym1g;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 171
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static flickToPrimeAnimation(Landroid/view/View;Z)V
    .registers 2

    .line 51
    sput-boolean p1, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->sAnimPlaying:Z

    .line 52
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->setToStartPosition(Landroid/view/View;)V

    return-void
.end method

.method private static flickUpAnimation(Landroid/view/View;)V
    .registers 5

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$LiKZ-OoQYfyRfpGnw7EGR7mpZX8;

    invoke-direct {v2, v0, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$LiKZ-OoQYfyRfpGnw7EGR7mpZX8;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$appearAgain$4(Landroid/view/View;)V
    .registers 2

    .line 130
    sget-boolean v0, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->sAnimPlaying:Z

    if-eqz v0, :cond_7

    .line 131
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->translateDown(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method static synthetic lambda$flickDownAnimation$12(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x1f4

    .line 171
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$9T9VOjXhoQ9wq18SKY9P501ENV0;

    invoke-direct {v1, p0, p1}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$9T9VOjXhoQ9wq18SKY9P501ENV0;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$flickUpAnimation$9(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x1f4

    .line 156
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3cb80000    # -200.0f

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$soJ7vSdMyeAE2FJyrhsIw7ngU7s;

    invoke-direct {v1, p0, p1}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$soJ7vSdMyeAE2FJyrhsIw7ngU7s;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$null$10(Landroid/view/View;)V
    .registers 2

    .line 177
    sget-boolean v0, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->sAnimPlaying:Z

    if-eqz v0, :cond_7

    .line 178
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->flickUpAnimation(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method static synthetic lambda$null$11(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x12c

    .line 174
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$LJHZ8xUcOsNHAxvF8Fw1soNjphM;

    invoke-direct {v0, p1}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$LJHZ8xUcOsNHAxvF8Fw1soNjphM;-><init>(Landroid/view/View;)V

    .line 176
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$null$2(Landroid/view/View;)V
    .registers 1

    .line 115
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->appearAgain(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$null$7(Landroid/view/View;)V
    .registers 1

    .line 161
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->flickDownAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$null$8(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x12c

    .line 159
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$02cOIfvujnrIucgOZiE1wK1Bza4;

    invoke-direct {v0, p1}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$02cOIfvujnrIucgOZiE1wK1Bza4;-><init>(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$setToStartPosition$5(Landroid/view/ViewPropertyAnimator;)V
    .registers 3

    const-wide/16 v0, 0xa

    .line 141
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$setToStartPosition$6(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->flickUpAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$translateDown$0(Landroid/view/View;)V
    .registers 1

    .line 87
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->translateUp(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$translateDownAndDisappear$3(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x12c

    .line 113
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$D-1F3kErreKzOyENsMoLVLA2j2Y;

    invoke-direct {v0, p1}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$D-1F3kErreKzOyENsMoLVLA2j2Y;-><init>(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$translateUp$1(Landroid/view/View;)V
    .registers 1

    .line 100
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->translateDownAndDisappear(Landroid/view/View;)V

    return-void
.end method

.method public static setOnAnimationPlaying(Z)V
    .registers 1

    .line 30
    sput-boolean p0, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->sAnimPlaying:Z

    return-void
.end method

.method private static setToStartPosition(Landroid/view/View;)V
    .registers 5

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xa

    .line 140
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$ZHpO1bcKevjhZLQ3h_puhfWI2zE;

    invoke-direct {v2, v0}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$ZHpO1bcKevjhZLQ3h_puhfWI2zE;-><init>(Landroid/view/ViewPropertyAnimator;)V

    .line 141
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$KLwjzpph8EtUlz4On9s3vWxnasY;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$KLwjzpph8EtUlz4On9s3vWxnasY;-><init>(Landroid/view/View;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static translateDown(Landroid/view/View;)V
    .registers 4

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$rEDgJVtKet-z2f1FiKvkKbHLXXA;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$rEDgJVtKet-z2f1FiKvkKbHLXXA;-><init>(Landroid/view/View;)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static translateDownAndDisappear(Landroid/view/View;)V
    .registers 4

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$5-PGPkZD2c9xz_e8iC9PkBPJK9c;

    invoke-direct {v2, v0, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$5-PGPkZD2c9xz_e8iC9PkBPJK9c;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static translateUp(Landroid/view/View;)V
    .registers 4

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3cb80000    # -200.0f

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$Q2U0RHTcQMeVZmtG8FOJsZdLgac;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$FtuAnimationUtils$Q2U0RHTcQMeVZmtG8FOJsZdLgac;-><init>(Landroid/view/View;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static translateUpAndDownAnimation(Landroid/view/View;Z)V
    .registers 4

    .line 39
    sput-boolean p1, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->sAnimPlaying:Z

    .line 40
    sget-object p1, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FTU Animation Now playing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->sAnimPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->translateDown(Landroid/view/View;)V

    return-void
.end method
