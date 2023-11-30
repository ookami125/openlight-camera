.class public final synthetic Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/camera/utils/CameraPreferences;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/camera/utils/CameraPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;->f$0:Lopenlight/co/camera/utils/CameraPreferences;

    iput-object p2, p0, Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;->f$0:Lopenlight/co/camera/utils/CameraPreferences;

    iget-object p0, p0, Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lopenlight/co/camera/utils/CameraPreferences;->lambda$addLockedName$0(Lopenlight/co/camera/utils/CameraPreferences;Ljava/lang/String;)V

    return-void
.end method
