.class public Lcom/fihtdc/UploadAgentService/data/DeviceID;
.super Ljava/lang/Object;
.source "DeviceID.java"


# instance fields
.field public Imei:Ljava/lang/String;

.field public Imei2:Ljava/lang/String;

.field public Meid:Ljava/lang/String;

.field public Meid2:Ljava/lang/String;

.field public hasFihTelephonyManager:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null"

    .line 4
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei:Ljava/lang/String;

    const-string v0, "null"

    .line 5
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Imei2:Ljava/lang/String;

    const-string v0, "null"

    .line 6
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid:Ljava/lang/String;

    const-string v0, "null"

    .line 7
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->Meid2:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/fihtdc/UploadAgentService/data/DeviceID;->hasFihTelephonyManager:Z

    return-void
.end method
