.class public Lcom/fihtdc/UploadAgentService/UploadAgent;
.super Landroid/app/Service;
.source "UploadAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;,
        Lcom/fihtdc/UploadAgentService/UploadAgent$LongComparator;,
        Lcom/fihtdc/UploadAgentService/UploadAgent$WriteFileDescriptor;,
        Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;
    }
.end annotation


# static fields
.field protected static final AGENT_INFO:Ljava/lang/String; = "agentInfo"

.field public static final MSG_AGENT_COMPLETE_WRITE:I = 0x3

.field public static final MSG_AGENT_SERVICE_BOUND:I = 0x2

.field public static final MSG_AGENT_SERVICE_OFF:I = 0x63

.field public static final MSG_AGENT_START:I = 0x0

.field public static final MSG_AGENT_START_WRITE:I = 0x1

.field public static final MSG_SERVICE_PREPARE_TO_READ:I = 0x67

.field public static final MSG_SERVICE_PREPARE_UPLOAD:I = 0x64

.field public static final MSG_SERVICE_START_READ:I = 0x65

.field protected static UPLOAD_BUFFERED_SIZE:I = 0x77359400

.field public static final UPLOAD_CURRENT_FILE_NAME:Ljava/lang/String; = "currentUploadFile"

.field public static final UPLOAD_FILES:Ljava/lang/String; = "uploadFiles"

.field public static final UPLOAD_FILE_NAMES:Ljava/lang/String; = "uploadFileNames"

.field public static final UPLOAD_FOLDER:Ljava/lang/String; = "uploadFolder"

.field public static final UPLOAD_IS_DELETE_AFT_COMPLETE:Ljava/lang/String; = "deleteAftComplete"

.field public static final UPLOAD_IS_FORCE_UPLOAD:Ljava/lang/String; = "isForceUpload"

.field public static final UPLOAD_IS_RESEND:Ljava/lang/String; = "isResend"

.field public static final UPLOAD_SERVICE_NAME:Ljava/lang/String; = "uploadServiceName"

.field public static final UPLOAD_SIZES:Ljava/lang/String; = "uploadSizes"

.field private static isAbandon:Z = false


# instance fields
.field protected COMPLETE_READ_FILES:Ljava/lang/String;

.field protected ServiceName:Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field protected UPLOAD_AGENT:Ljava/lang/String;

.field protected UPLOAD_AGENT_PACKAGE:Ljava/lang/String;

.field protected UPLOAD_IS_FORCE_UPLOAD_TYPE:Ljava/lang/String;

.field protected UPLOAD_IS_RESEND_TYPE:Ljava/lang/String;

.field protected final UPLOAD_SERVICE:Ljava/lang/String;

.field protected final UPLOAD_SERVICE_PACKAGE:Ljava/lang/String;

.field protected completeUploadFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected currentUploadFile:Ljava/lang/String;

.field protected currentUploadFileSize:Ljava/lang/Long;

.field protected isDeleteAftUpload:Z

.field protected final mAgent:Landroid/os/Messenger;

.field protected mConnection:Landroid/content/ServiceConnection;

.field private mDBLock:Ljava/lang/String;

.field protected mService:Landroid/os/Messenger;

.field protected mServiceBound:Z

.field protected uploadFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected uploadFolder:Ljava/lang/String;

.field private writeFilesHM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "com.fihtdc.UploadAgentService(7.0010.05(Evenwell_s))"

    .line 70
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string v0, "mDBLock"

    .line 71
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mDBLock:Ljava/lang/String;

    const-string v0, "com.evenwell.AprUploadService"

    .line 95
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_SERVICE_PACKAGE:Ljava/lang/String;

    const-string v0, "com.fihtdc.AprUploadService.service.UploadService"

    .line 96
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_SERVICE:Ljava/lang/String;

    const-string v0, "uploadAgentPackage"

    .line 97
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_AGENT_PACKAGE:Ljava/lang/String;

    const-string v0, "uploadAgent"

    .line 98
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_AGENT:Ljava/lang/String;

    const-string v0, "uploadType"

    .line 99
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_IS_FORCE_UPLOAD_TYPE:Ljava/lang/String;

    const-string v0, "resendType"

    .line 100
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_IS_RESEND_TYPE:Ljava/lang/String;

    const-string v0, "completeReadFiles"

    .line 101
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->COMPLETE_READ_FILES:Ljava/lang/String;

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mService:Landroid/os/Messenger;

    .line 103
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;

    invoke-direct {v2, p0}, Lcom/fihtdc/UploadAgentService/UploadAgent$uploadHandler;-><init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mAgent:Landroid/os/Messenger;

    .line 107
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    .line 110
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->isDeleteAftUpload:Z

    .line 112
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFileSize:Ljava/lang/Long;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->writeFilesHM:Ljava/util/HashMap;

    const-string v0, ""

    .line 120
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->ServiceName:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/fihtdc/UploadAgentService/UploadAgent$1;

    invoke-direct {v0, p0}, Lcom/fihtdc/UploadAgentService/UploadAgent$1;-><init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V

    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$0(Lcom/fihtdc/UploadAgentService/UploadAgent;)Ljava/util/HashMap;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->writeFilesHM:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1(Z)V
    .registers 1

    .line 117
    sput-boolean p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->isAbandon:Z

    return-void
.end method

.method static synthetic access$2(Lcom/fihtdc/UploadAgentService/UploadAgent;)V
    .registers 1

    .line 191
    invoke-direct {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->onAgentServiceOff()V

    return-void
.end method

.method static synthetic access$3(Lcom/fihtdc/UploadAgentService/UploadAgent;)Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mDBLock:Ljava/lang/String;

    return-object p0
.end method

.method private checkBufferedSize(Landroid/content/Context;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 726
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getAgentUploadFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 727
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 729
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "STB"

    .line 730
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_237

    .line 732
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 734
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 735
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 736
    invoke-virtual/range {p0 .. p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getAgentLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 738
    array-length v9, v2

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_3d
    if-lt v10, v9, :cond_1dd

    .line 757
    new-instance v2, Lcom/fihtdc/UploadAgentService/UploadAgent$LongComparator;

    invoke-direct {v2, v1}, Lcom/fihtdc/UploadAgentService/UploadAgent$LongComparator;-><init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V

    .line 758
    iget-object v8, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "totalFileSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    sget v8, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_BUFFERED_SIZE:I

    int-to-long v8, v8

    cmp-long v8, v13, v8

    if-gtz v8, :cond_115

    .line 761
    new-instance v8, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v8, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    .line 763
    :try_start_63
    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_80

    :catch_67
    move-exception v0

    move-object v2, v0

    .line 765
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Collections.sort(timeList, longComparator): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :goto_80
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 769
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_87
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_92

    .line 796
    invoke-virtual {v8}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    goto/16 :goto_237

    .line 769
    :cond_92
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 770
    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 771
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v3, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 772
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_ac
    :goto_ac
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_87

    :cond_b3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/File;

    .line 773
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide v13, 0x1cf7c5800L

    cmp-long v0, v11, v13

    if-lez v0, :cond_ac

    .line 774
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_cb
    :goto_cb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d2

    goto :goto_ac

    :cond_d2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 776
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 780
    :try_start_e2
    invoke-virtual {v8, v2}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    .line 781
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFile(Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ec} :catch_ed

    goto :goto_111

    :catch_ed
    move-exception v0

    .line 783
    iget-object v11, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "checkBufferedSize:dbHelper.deleteForceUploadFile("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") Msg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :goto_111
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_cb

    .line 801
    :cond_115
    sget v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_BUFFERED_SIZE:I

    int-to-long v3, v3

    sub-long/2addr v13, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 802
    iget-object v3, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "diffSize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v3, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v3, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    .line 804
    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 805
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 806
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_140
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_148

    goto/16 :goto_1d9

    :cond_148
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 807
    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 808
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_158
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15f

    goto :goto_1cd

    :cond_15f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 809
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-gtz v5, :cond_1cd

    .line 810
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 811
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Delete: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :try_start_195
    iget-object v7, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->mDBLock:Ljava/lang/String;

    monitor-enter v7
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_198} :catch_1a4

    .line 814
    :try_start_198
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFileInfo(Ljava/lang/String;)V

    .line 813
    monitor-exit v7

    goto :goto_1c8

    :catchall_1a1
    move-exception v0

    monitor-exit v7
    :try_end_1a3
    .catchall {:try_start_198 .. :try_end_1a3} :catchall_1a1

    :try_start_1a3
    throw v0
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a4} :catch_1a4

    :catch_1a4
    move-exception v0

    .line 817
    iget-object v7, v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "checkBufferedSize: Exception Happen when dbHelper.deleteForceUploadFile("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") Msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_1c8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object v0, v5

    goto :goto_158

    .line 824
    :cond_1cd
    :goto_1cd
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v4, v7

    if-lez v2, :cond_140

    .line 829
    :goto_1d9
    invoke-virtual {v3}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    goto :goto_237

    .line 738
    :cond_1dd
    aget-object v15, v2, v10

    .line 739
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1ea

    goto :goto_22f

    .line 742
    :cond_1ea
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    .line 743
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1fb

    .line 744
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_1fb
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v13, v13, v16

    .line 747
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 748
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 749
    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22f

    .line 752
    :cond_220
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 753
    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    const-wide/16 v11, 0x0

    goto/16 :goto_3d

    :cond_237
    :goto_237
    return-void
.end method

.method private copySendFileHM(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_26

    .line 883
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 884
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 885
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_27

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 886
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public static getUploadAgent(Landroid/content/Context;)Lcom/fihtdc/UploadAgentService/IUploadAgent;
    .registers 2

    .line 604
    new-instance v0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;

    invoke-direct {v0, p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private onAgentServiceOff()V
    .registers 6

    .line 192
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->writeFilesHM:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 194
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 203
    iget-boolean v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    if-eqz v0, :cond_1c

    .line 204
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    .line 207
    :cond_1c
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->writeFilesHM:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 208
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 209
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->stopSelf()V

    return-void

    .line 195
    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->writeFilesHM:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 198
    :try_start_38
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_a

    :catch_3c
    move-exception v1

    .line 200
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method


# virtual methods
.method protected ExplorCurrentUploadData(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_18

    const-string v0, "currentUploadFile"

    .line 584
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    .line 585
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->currentUploadFileSize:Ljava/lang/Long;

    :cond_18
    return-void
.end method

.method protected GenerateUploadBundle(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uploadFolder"

    .line 537
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d2

    .line 539
    new-instance p1, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    .line 540
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 541
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 542
    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 543
    new-array v4, v2, [Z

    .line 544
    new-array v5, v2, [Z

    .line 545
    new-array v2, v2, [J

    const/4 v6, 0x0

    .line 551
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5a

    .line 570
    invoke-virtual {p1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    const-string p1, "uploadFileNames"

    .line 572
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string p1, "uploadSizes"

    .line 573
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 574
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_AGENT_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_AGENT:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_IS_FORCE_UPLOAD_TYPE:Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 577
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->UPLOAD_IS_RESEND_TYPE:Ljava/lang/String;

    invoke-virtual {v0, p0, v5}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_d2

    .line 552
    :cond_5a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 553
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 554
    aput-object v7, v3, v6

    .line 555
    aput-wide v8, v2, v6

    .line 557
    :try_start_6e
    iget-object v8, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mDBLock:Ljava/lang/String;

    monitor-enter v8
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_a1

    .line 558
    :try_start_71
    invoke-virtual {p1, v7}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->getFileInfo(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/data/FileInfo;

    move-result-object v9

    .line 557
    monitor-exit v8
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_9e

    .line 560
    :try_start_76
    iget-object v8, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "GenerateUploadBundle: getFileInfo("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")= isForceUpload: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v9, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isForceUpload:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isResend: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v9, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isResend:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_9d} :catch_a1

    goto :goto_c6

    :catchall_9e
    move-exception v9

    .line 557
    :try_start_9f
    monitor-exit v8
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v9
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a1} :catch_a1

    :catch_a1
    move-exception v8

    .line 562
    iget-object v9, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "GenerateUploadBundle: Exception Happen when isForceUploadFile("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") Msg: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v9, Lcom/fihtdc/UploadAgentService/data/FileInfo;

    invoke-direct {v9}, Lcom/fihtdc/UploadAgentService/data/FileInfo;-><init>()V

    .line 565
    :goto_c6
    iget-boolean v7, v9, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isForceUpload:Z

    aput-boolean v7, v4, v6

    .line 566
    iget-boolean v7, v9, Lcom/fihtdc/UploadAgentService/data/FileInfo;->isResend:Z

    aput-boolean v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2a

    :cond_d2
    :goto_d2
    return-object v0
.end method

.method public agentStart(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 292
    iget-boolean v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    if-eqz v0, :cond_f

    .line 293
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string v1, "agentStart: mserviceBound: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0, p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->sendPrepareUploadFiles(Ljava/util/HashMap;)V

    goto :goto_2e

    .line 296
    :cond_f
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string v0, "agentStart: mserviceBound: false"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.evenwell.AprUploadService"

    const-string v1, "com.fihtdc.AprUploadService.service.UploadService"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 299
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_2e
    return-void
.end method

.method protected deleteUploadedFiles([Ljava/lang/CharSequence;)V
    .registers 11

    .line 625
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "folderPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 627
    new-instance v1, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v1, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_a1

    const/4 v0, 0x0

    .line 629
    :goto_21
    array-length v2, p1

    if-lt v0, v2, :cond_26

    goto/16 :goto_118

    .line 630
    :cond_26
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/String;

    .line 631
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteFile(bundle): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 635
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v4

    .line 637
    :try_start_56
    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 636
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_88

    .line 640
    :try_start_5c
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mDBLock:Ljava/lang/String;

    monitor-enter v4
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_67

    .line 641
    :try_start_5f
    invoke-virtual {v1, v2}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFileInfo(Ljava/lang/String;)V

    .line 640
    monitor-exit v4

    goto :goto_8b

    :catchall_64
    move-exception v5

    monitor-exit v4
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_64

    :try_start_66
    throw v5
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_67

    :catch_67
    move-exception v4

    .line 644
    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleteUploadedFiles: Exception Happen when dbHelper.deleteForceUploadFile("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") Msg: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :catchall_88
    move-exception p0

    .line 636
    :try_start_89
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0

    .line 647
    :cond_8b
    :goto_8b
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isDelete: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 650
    :cond_a1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    monitor-enter v0

    .line 652
    :try_start_a9
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    if-eqz v2, :cond_10d

    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10d

    .line 653
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c7

    .line 663
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->completeUploadFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_10d

    .line 653
    :cond_c7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 654
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleteFile: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 658
    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_f9
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isDelete: uploadFiles"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 651
    :cond_10d
    :goto_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_a9 .. :try_end_10e} :catchall_1dc

    .line 667
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_112
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a8

    .line 677
    :goto_118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    :try_start_11d
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mDBLock:Ljava/lang/String;

    monitor-enter v0
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_120} :catch_131

    .line 680
    :try_start_120
    invoke-virtual {v1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->getUploadFileList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_124
    .catchall {:try_start_120 .. :try_end_124} :catchall_128

    .line 679
    :try_start_124
    monitor-exit v0

    goto :goto_14a

    :catchall_126
    move-exception p1

    goto :goto_12c

    :catchall_128
    move-exception v2

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_12c
    monitor-exit v0
    :try_end_12d
    .catchall {:try_start_124 .. :try_end_12d} :catchall_126

    :try_start_12d
    throw p1
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_12e} :catch_12e

    :catch_12e
    move-exception p1

    move-object v0, p1

    goto :goto_133

    :catch_131
    move-exception v0

    move-object v2, p1

    .line 683
    :goto_133
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUploadFileList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_14a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14e
    :goto_14e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_171

    .line 698
    invoke-virtual {v1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    .line 700
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteUploadedFiles: uploadFiles.size()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 685
    :cond_171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 686
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14e

    .line 688
    :try_start_184
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mDBLock:Ljava/lang/String;

    monitor-enter v2
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_187} :catch_18f

    .line 689
    :try_start_187
    invoke-virtual {v1, p1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFileInfo(Ljava/lang/String;)V

    .line 688
    monitor-exit v2

    goto :goto_14e

    :catchall_18c
    move-exception p1

    monitor-exit v2
    :try_end_18e
    .catchall {:try_start_187 .. :try_end_18e} :catchall_18c

    :try_start_18e
    throw p1
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_18f} :catch_18f

    :catch_18f
    move-exception p1

    .line 692
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Msg: deleteUploadFileInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e

    .line 667
    :cond_1a8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 669
    :try_start_1ae
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mDBLock:Ljava/lang/String;

    monitor-enter v2
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1b1} :catch_1ba

    .line 670
    :try_start_1b1
    invoke-virtual {v1, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFileInfo(Ljava/lang/String;)V

    .line 669
    monitor-exit v2

    goto/16 :goto_112

    :catchall_1b7
    move-exception v3

    monitor-exit v2
    :try_end_1b9
    .catchall {:try_start_1b1 .. :try_end_1b9} :catchall_1b7

    :try_start_1b9
    throw v3
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1ba} :catch_1ba

    :catch_1ba
    move-exception v2

    .line 673
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleteUploadedFiles completeReadFiles is null: Exception happen when dbHelper.deleteForceUploadFile("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") Msg: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_112

    :catchall_1dc
    move-exception p0

    .line 651
    :try_start_1dd
    monitor-exit v0
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1dc

    throw p0
.end method

.method public deliverMessage(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_17

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 591
    invoke-static {p0, p2, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    if-eqz p3, :cond_10

    .line 594
    :try_start_a
    invoke-virtual {p0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_10

    :catch_e
    move-exception p0

    goto :goto_14

    .line 596
    :cond_10
    :goto_10
    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_e

    goto :goto_17

    .line 598
    :goto_14
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_17
    :goto_17
    return-void
.end method

.method protected getAgentLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string p0, "agent_label"

    const-string v0, "agentInfo"

    const/4 v1, 0x4

    .line 707
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "N/A"

    .line 708
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getAgentUploadFolder(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string p0, "upload_folder"

    const-string v0, "agentInfo"

    const/4 v1, 0x4

    .line 714
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "N/A"

    .line 715
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string p0, "service_class_name"

    const-string v0, "agentInfo"

    const/4 v1, 0x4

    .line 721
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "N/A"

    .line 722
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 325
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mAgent:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCompleteWrite([Ljava/lang/CharSequence;)V
    .registers 3

    .line 314
    iget-boolean v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->isDeleteAftUpload:Z

    if-eqz v0, :cond_7

    .line 315
    invoke-virtual {p0, p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->deleteUploadedFiles([Ljava/lang/CharSequence;)V

    .line 317
    :cond_7
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_19

    .line 318
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string v0, "onCompleteWrite"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->stopSelf()V

    :cond_19
    return-void
.end method

.method public onDestroy()V
    .registers 6

    .line 477
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 478
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-boolean v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 482
    :try_start_f
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_2d

    :catch_15
    move-exception v0

    .line 484
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDestroy:unbindService() Msg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_2d
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    .line 489
    :cond_2f
    sput-boolean v1, Lcom/fihtdc/UploadAgentService/UploadAgent;->isAbandon:Z

    .line 490
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    if-eqz v0, :cond_3a

    .line 491
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_3a
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 13

    .line 343
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const/4 p2, 0x0

    .line 344
    sput-boolean p2, Lcom/fihtdc/UploadAgentService/UploadAgent;->isAbandon:Z

    .line 345
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 346
    iget-boolean v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    if-nez v1, :cond_11

    .line 347
    invoke-direct {p0, v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->checkBufferedSize(Landroid/content/Context;)V

    .line 350
    :cond_11
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.fihtdc.AprUploadAgent.UPLOAD_FILE"

    .line 351
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1c6

    .line 353
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1c6

    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uploadFolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 356
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uploadFolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    goto :goto_43

    :cond_3f
    const-string v2, ""

    .line 358
    iput-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    .line 362
    :goto_43
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isForceUpload"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 363
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isForceUpload"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_61

    :cond_60
    move v2, p2

    .line 367
    :goto_61
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStart: isForceUpload: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isResend"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_90

    .line 371
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "isResend"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 375
    :cond_90
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStart: isResend: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "uploadFiles"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_123

    .line 379
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "uploadFiles"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 380
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    if-eqz v4, :cond_108

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_108

    .line 381
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 382
    :cond_cf
    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_ee

    .line 390
    new-instance v4, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;

    invoke-direct {v4, p0}, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;-><init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V

    .line 391
    invoke-direct {p0, v3}, Lcom/fihtdc/UploadAgentService/UploadAgent;->copySendFileHM(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->access$0(Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;Ljava/util/HashMap;)V

    .line 392
    iput-boolean v2, v4, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isForceUpload:Z

    .line 393
    iput-boolean v1, v4, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isResend:Z

    .line 394
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_12f

    .line 383
    :cond_ee
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 384
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 385
    iget-object v7, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cf

    .line 386
    iget-object v7, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cf

    .line 396
    :cond_108
    iput-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    .line 397
    new-instance v4, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;

    invoke-direct {v4, p0}, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;-><init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V

    .line 398
    invoke-direct {p0, v3}, Lcom/fihtdc/UploadAgentService/UploadAgent;->copySendFileHM(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->access$0(Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;Ljava/util/HashMap;)V

    .line 399
    iput-boolean v2, v4, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isForceUpload:Z

    .line 400
    iput-boolean v1, v4, Lcom/fihtdc/UploadAgentService/UploadAgent$InsertDataRuner;->isResend:Z

    .line 401
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_12f

    .line 405
    :cond_123
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 406
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    .line 413
    :goto_12f
    invoke-virtual {p0, v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getAgentUploadFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {p0, v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getAgentLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "N/A"

    .line 415
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_199

    const-string v2, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_199

    .line 416
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_199

    .line 418
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 419
    array-length v2, v1

    if-lez v2, :cond_199

    .line 420
    array-length v2, v1

    move v4, p2

    :goto_15b
    if-lt v4, v2, :cond_15e

    goto :goto_199

    :cond_15e
    aget-object v5, v1, v4

    .line 421
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_196

    .line 422
    iget-object v6, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_196

    .line 423
    iget-object v6, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_196
    add-int/lit8 v4, v4, 0x1

    goto :goto_15b

    .line 433
    :cond_199
    :goto_199
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deleteAftComplete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 434
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "deleteAftComplete"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->isDeleteAftUpload:Z

    goto :goto_1ba

    .line 436
    :cond_1b8
    iput-boolean p2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->isDeleteAftUpload:Z

    .line 438
    :goto_1ba
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string p2, "onStart: agentStart()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0, v3}, Lcom/fihtdc/UploadAgentService/UploadAgent;->agentStart(Ljava/util/HashMap;)V

    goto/16 :goto_26a

    .line 441
    :cond_1c6
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string v2, "onStart: Start by AM"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0, v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getAgentUploadFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-virtual {p0, v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getAgentLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "N/A"

    .line 444
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_263

    const-string v2, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_263

    .line 445
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_24a

    .line 447
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 448
    array-length v3, v2

    if-lez v3, :cond_242

    .line 449
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    .line 450
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    .line 451
    array-length p1, v2

    :goto_201
    if-lt p2, p1, :cond_222

    .line 456
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_21a

    .line 457
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string p2, "onStart: agentStart()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->isDeleteAftUpload:Z

    .line 459
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->agentStart(Ljava/util/HashMap;)V

    goto :goto_26a

    .line 461
    :cond_21a
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string p1, "onStart: Start by AM: No File need to Upload"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26a

    .line 451
    :cond_222
    aget-object v3, v2, p2

    .line 452
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23f

    .line 453
    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23f
    add-int/lit8 p2, p2, 0x1

    goto :goto_201

    .line 464
    :cond_242
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string p1, "onStart: Start by AM: No File in Folder"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26a

    .line 467
    :cond_24a
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onStart: Start by AM: folder("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") is not exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26a

    .line 470
    :cond_263
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    const-string p1, "onStart: Start by AM: No Default Upload Folder and Label"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26a
    return-void
.end method

.method public sendPrepareUploadFiles(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-boolean v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mServiceBound:Z

    if-nez v0, :cond_5

    return-void

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->mService:Landroid/os/Messenger;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->uploadFolder:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v3}, Lcom/fihtdc/UploadAgentService/UploadAgent;->GenerateUploadBundle(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/fihtdc/UploadAgentService/UploadAgent;->deliverMessage(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    return-void
.end method

.method protected streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Long;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    .line 329
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    int-to-long v3, v2

    .line 332
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1d

    sget-boolean v3, Lcom/fihtdc/UploadAgentService/UploadAgent;->isAbandon:Z

    if-eqz v3, :cond_14

    goto :goto_1d

    .line 333
    :cond_14
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 335
    invoke-virtual {p2, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 337
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgent;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "streamCopy() isAbandon: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/fihtdc/UploadAgentService/UploadAgent;->isAbandon:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
