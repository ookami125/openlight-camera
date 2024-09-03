.class public final synthetic Lopenlight/co/camera/managers/capturerequest/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lopenlight/co/camera/utils/Provider;


# static fields
.field public static final synthetic INSTANCE:Lopenlight/co/camera/managers/capturerequest/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lopenlight/co/camera/managers/capturerequest/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    invoke-direct {v0}, Lopenlight/co/camera/managers/capturerequest/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/capturerequest/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/managers/capturerequest/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

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

    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    return-object p0
.end method
