.class public final enum Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
.super Ljava/lang/Enum;
.source "FeedbackUserDataElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/hockeyapp/android/objects/FeedbackUserDataElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field public static final enum DONT_SHOW:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field public static final enum OPTIONAL:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field public static final enum REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 11
    new-instance v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    const-string v1, "DONT_SHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->DONT_SHOW:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    new-instance v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    const-string v1, "OPTIONAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->OPTIONAL:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    new-instance v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    const-string v1, "REQUIRED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->DONT_SHOW:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    aput-object v1, v0, v2

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->OPTIONAL:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    aput-object v1, v0, v3

    sget-object v1, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    aput-object v1, v0, v4

    sput-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->$VALUES:[Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
    .registers 2

    .line 9
    const-class v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-object p0
.end method

.method public static values()[Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
    .registers 1

    .line 9
    sget-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->$VALUES:[Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    invoke-virtual {v0}, [Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 20
    iget p0, p0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->mValue:I

    return p0
.end method
