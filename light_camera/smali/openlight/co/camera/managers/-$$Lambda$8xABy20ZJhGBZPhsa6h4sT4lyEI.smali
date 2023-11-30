.class public final synthetic Lopenlight/co/camera/managers/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lopenlight/co/camera/utils/Provider;


# static fields
.field public static final synthetic INSTANCE:Lopenlight/co/camera/managers/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lopenlight/co/camera/managers/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;

    invoke-direct {v0}, Lopenlight/co/camera/managers/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;->INSTANCE:Lopenlight/co/camera/managers/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->get()Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    move-result-object p0

    return-object p0
.end method
