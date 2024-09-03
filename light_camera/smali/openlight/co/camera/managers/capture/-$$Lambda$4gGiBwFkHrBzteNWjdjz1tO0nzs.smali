.class public final synthetic Lopenlight/co/camera/managers/capture/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lopenlight/co/camera/utils/Provider;


# static fields
.field public static final synthetic INSTANCE:Lopenlight/co/camera/managers/capture/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lopenlight/co/camera/managers/capture/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;

    invoke-direct {v0}, Lopenlight/co/camera/managers/capture/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/capture/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;->INSTANCE:Lopenlight/co/camera/managers/capture/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->get()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    move-result-object p0

    return-object p0
.end method
