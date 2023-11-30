.class public Lcom/fihtdc/UploadAgentService/upload/UploadLog;
.super Ljava/lang/Object;
.source "UploadLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;,
        Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.fihtdc.UploadAgentService.upload(7.0010.05(Evenwell_s))"


# instance fields
.field SleepPolicy:Landroid/os/PowerManager$WakeLock;

.field private dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

.field m_blPolicyChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->m_blPolicyChanged:Z

    .line 46
    iput-object v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private isUpload(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 2

    const-string p0, "none"

    .line 711
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_1

    .line 715
    :cond_0
    new-instance p0, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;

    invoke-direct {p0}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;-><init>()V

    const-string p2, "off"

    .line 717
    invoke-virtual {p0, p1, p2}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->updateIsMonitoring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    const-string p0, "on"

    .line 719
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "off"

    .line 721
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private declared-synchronized rollbackSleepPolicy()V
    .locals 1

    monitor-enter p0

    .line 605
    :try_start_0
    iget-boolean v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->m_blPolicyChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->m_blPolicyChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    monitor-exit p0

    return-void

    .line 606
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 604
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setSleepPolicy(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 595
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v0, "com.fihtdc.automachine.upload.UploadLog"

    .line 596
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    .line 599
    :cond_0
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 601
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->m_blPolicyChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 592
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getFileCRCValue(Ljava/io/File;)J
    .locals 2

    const/4 p0, 0x0

    .line 733
    :try_start_0
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v1, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p0, 0x80

    .line 734
    :try_start_1
    new-array p0, p0, [B

    .line 735
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result p1

    if-gez p1, :cond_0

    .line 738
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p1, p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, p0

    .line 741
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 745
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-wide p0
.end method

.method public getFileCRCValue(Ljava/lang/String;)J
    .locals 2

    const/4 p0, 0x0

    .line 571
    :try_start_0
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v1, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p0, 0x80

    .line 572
    :try_start_1
    new-array p0, p0, [B

    .line 573
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result p1

    if-gez p1, :cond_0

    .line 576
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p1, p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, p0

    .line 579
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 583
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-wide p0
.end method

.method public declared-synchronized getType3Message(Ljava/lang/String;Ljava/lang/String;Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 628
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "N"

    const-string v2, "none"

    .line 631
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "on"

    .line 633
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string v1, "Y"

    :cond_1
    :goto_0
    const-string p4, "Type=3"

    .line 638
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, ";Content-Length="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p3, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->ContentLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p4, ";CRC-CheckSum="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p3, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->CheckSum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p4, ";filename="

    .line 639
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p3, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ";project="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";sw="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";isForceUpload="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 627
    monitor-exit p0

    throw p1
.end method

.method public getType3Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;
    .locals 4

    const-string v0, ";"

    .line 646
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 647
    new-instance v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;-><init>(Lcom/fihtdc/UploadAgentService/upload/UploadLog;Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 650
    :try_start_0
    aget-object v2, p1, p0

    aget-object p0, p1, p0

    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v2, 0x0

    .line 653
    iput-wide v2, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    .line 656
    :goto_0
    aget-object p0, p1, v1

    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isFinished:Ljava/lang/String;

    const/4 p0, 0x2

    .line 657
    aget-object v2, p1, p0

    aget-object p0, p1, p0

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getType4Message(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    .line 662
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type=4;filename="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 664
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 664
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    if-nez v1, :cond_1

    .line 666
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 667
    iget-object v2, v2, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v3, ","

    .line 669
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 661
    monitor-exit p0

    throw p1
.end method

.method public getType4Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;
    .locals 7

    const-string v0, ";"

    .line 679
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 680
    new-instance v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;-><init>(Lcom/fihtdc/UploadAgentService/upload/UploadLog;Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;)V

    .line 681
    array-length p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x0

    .line 682
    aget-object v1, p1, p0

    aget-object v2, p1, p0

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 683
    aget-object v2, p1, v3

    aget-object p1, p1, v3

    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    .line 685
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 686
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 690
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 692
    :goto_0
    array-length v3, v1

    if-lt p0, v3, :cond_0

    .line 702
    iput-object v2, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    goto :goto_2

    :cond_0
    const-wide/16 v3, 0x0

    .line 693
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 695
    :try_start_0
    aget-object v5, p1, p0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 697
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 698
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 700
    :goto_1
    aget-object v3, v1, p0

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public declared-synchronized uploadAPRLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    monitor-enter p0

    .line 52
    :try_start_0
    new-instance v3, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;

    invoke-direct {v3}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;-><init>()V

    .line 59
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-virtual {v3, v0}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->getIsDMCMonitoring(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v5, 0x0

    .line 62
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->setSleepPolicy(Landroid/content/Context;)V

    .line 63
    new-instance v6, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v6, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    .line 67
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 68
    :try_start_2
    new-instance v7, Ljava/net/InetSocketAddress;

    const/16 v8, 0x2253

    move-object/from16 v9, p5

    invoke-direct {v7, v9, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const v8, 0xea60

    .line 69
    invoke-virtual {v6, v7, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 70
    invoke-virtual {v6, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 71
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 73
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v9, v5

    :goto_0
    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v10, :cond_7

    .line 157
    invoke-virtual {v1, v2}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType4Message(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 162
    new-instance v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    :try_start_5
    invoke-static {v3}, Lcom/fihtdc/UploadAgentService/upload/StreamTool;->readLine(Ljava/io/PushbackInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v1, v0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType4Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;

    move-result-object v0

    .line 167
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v9, :cond_3

    .line 196
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 197
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_0
    if-eqz v5, :cond_1

    .line 200
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    if-eqz v7, :cond_2

    .line 202
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 204
    :cond_2
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V

    if-eqz v6, :cond_13

    .line 206
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 209
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_9

    .line 167
    :cond_3
    :try_start_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 168
    iget-boolean v10, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    if-eqz v10, :cond_6

    .line 169
    iget-object v10, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    iget-object v13, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 171
    iget-object v10, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    iget-object v13, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    iget-object v13, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 172
    iput-boolean v11, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 173
    iget-object v10, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v9, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v10, v9}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 175
    :cond_4
    iput-boolean v12, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    goto :goto_1

    .line 178
    :cond_5
    iput-boolean v12, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    goto :goto_1

    .line 181
    :cond_6
    iput-boolean v12, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 182
    iget-object v10, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v9, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v10, v9}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v15, v3

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v15, v3

    goto/16 :goto_8

    .line 73
    :cond_7
    :try_start_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 74
    iget-object v13, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    if-nez v13, :cond_8

    goto/16 :goto_0

    .line 77
    :cond_8
    iget-object v13, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    iget-wide v14, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->CheckSum:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 80
    invoke-virtual {v1, v13, v14, v10, v3}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType3Message(Ljava/lang/String;Ljava/lang/String;Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 82
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 85
    new-instance v15, Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v15, v12}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 86
    :try_start_a
    invoke-static {v15}, Lcom/fihtdc/UploadAgentService/upload/StreamTool;->readLine(Ljava/io/PushbackInputStream;)Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-virtual {v1, v9}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType3Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;

    move-result-object v9

    const-string v12, "Y"

    .line 107
    iget-object v11, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isFinished:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    .line 108
    iput-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 109
    iget-object v11, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v12, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v11, v12}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    :cond_9
    const-string v11, "on"

    .line 112
    iget-object v12, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    .line 113
    iput-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    goto :goto_3

    :cond_a
    const-string v11, "off"

    .line 114
    iget-object v12, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    .line 115
    iput-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    .line 117
    :cond_b
    :goto_3
    iget-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    invoke-direct {v1, v0, v11, v3}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->isUpload(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    .line 122
    iput-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    .line 123
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v10, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v11, v10, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 124
    :try_start_b
    iget-wide v3, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    invoke-virtual {v11, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v3, 0x1000

    .line 125
    new-array v3, v3, [B

    .line 127
    iget-wide v4, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    const/4 v4, 0x0

    .line 131
    :goto_4
    invoke-virtual {v11, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_c

    move-object v5, v11

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    .line 134
    invoke-virtual {v7, v3, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 138
    rem-int/lit16 v5, v4, 0x1f40

    if-nez v5, :cond_d

    .line 140
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v5, v11

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v5, v11

    goto :goto_8

    :cond_e
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    .line 148
    :try_start_c
    iput-boolean v3, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :goto_5
    move-object v9, v15

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v15, v9

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move-object v15, v9

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v15, v5

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v15, v5

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v7, v5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    move-object v7, v6

    :goto_6
    move-object v15, v7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    :goto_7
    move-object v15, v7

    :goto_8
    :try_start_d
    const-string v3, "com.fihtdc.UploadAgentService.upload(7.0010.05(Evenwell_s))"

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Upload fail: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 196
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 197
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_f

    .line 198
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_f
    if-eqz v5, :cond_10

    .line 200
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_10
    if-eqz v7, :cond_11

    .line 202
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_11
    if-eqz v15, :cond_12

    .line 204
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->close()V

    :cond_12
    if-eqz v6, :cond_13

    .line 206
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_9

    :catch_8
    move-exception v0

    goto/16 :goto_2

    .line 213
    :cond_13
    :goto_9
    monitor-exit p0

    return-object v2

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 196
    :goto_a
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 197
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_14

    .line 198
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_14
    if-eqz v5, :cond_15

    .line 200
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_15
    if-eqz v7, :cond_16

    .line 202
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_16
    if-eqz v15, :cond_17

    .line 204
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->close()V

    :cond_17
    if-eqz v6, :cond_18

    .line 206
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_b

    :catch_9
    move-exception v0

    .line 209
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    :cond_18
    :goto_b
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    .line 51
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uploadAPRLogsSSL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    monitor-enter p0

    .line 219
    :try_start_0
    new-instance v3, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;

    invoke-direct {v3}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;-><init>()V

    .line 226
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 227
    invoke-virtual {v3, v0}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->getIsDMCMonitoring(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v5, 0x0

    .line 229
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->setSleepPolicy(Landroid/content/Context;)V

    .line 230
    new-instance v6, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v6, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    .line 234
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 235
    :try_start_2
    new-instance v7, Ljava/net/InetSocketAddress;

    const/16 v8, 0x2254

    move-object/from16 v9, p5

    invoke-direct {v7, v9, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/4 v8, 0x1

    .line 236
    invoke-virtual {v6, v8}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    const v9, 0xea60

    .line 237
    invoke-virtual {v6, v9}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 238
    invoke-virtual {v6, v7, v9}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 239
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 240
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 242
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v10, v5

    :goto_0
    :try_start_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_7

    .line 326
    invoke-virtual {v1, v2}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType4Message(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 331
    new-instance v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 332
    :try_start_5
    invoke-static {v3}, Lcom/fihtdc/UploadAgentService/upload/StreamTool;->readLine(Ljava/io/PushbackInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {v1, v0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType4Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;

    move-result-object v0

    .line 336
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v10, :cond_3

    .line 365
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 366
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_0
    if-eqz v5, :cond_1

    .line 369
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    if-eqz v7, :cond_2

    .line 371
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 373
    :cond_2
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V

    if-eqz v6, :cond_13

    .line 375
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 378
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_9

    .line 336
    :cond_3
    :try_start_8
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 337
    iget-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    if-eqz v11, :cond_6

    .line 338
    iget-object v11, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    if-eqz v11, :cond_5

    iget-object v11, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    iget-object v13, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 340
    iget-object v11, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    iget-object v13, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    iget-object v13, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 341
    iput-boolean v8, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 342
    iget-object v11, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v10, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v11, v10}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 344
    :cond_4
    iput-boolean v12, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    goto :goto_1

    .line 347
    :cond_5
    iput-boolean v12, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    goto :goto_1

    .line 350
    :cond_6
    iput-boolean v12, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 351
    iget-object v11, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v10, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v11, v10}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v15, v3

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v15, v3

    goto/16 :goto_8

    .line 242
    :cond_7
    :try_start_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 243
    iget-object v13, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    if-nez v13, :cond_8

    goto/16 :goto_0

    .line 246
    :cond_8
    iget-object v13, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    iget-wide v14, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->CheckSum:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 249
    invoke-virtual {v1, v13, v14, v11, v3}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType3Message(Ljava/lang/String;Ljava/lang/String;Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 251
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 254
    new-instance v15, Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v15, v12}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 255
    :try_start_a
    invoke-static {v15}, Lcom/fihtdc/UploadAgentService/upload/StreamTool;->readLine(Ljava/io/PushbackInputStream;)Ljava/lang/String;

    move-result-object v10

    .line 274
    invoke-virtual {v1, v10}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType3Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;

    move-result-object v10

    const-string v12, "Y"

    .line 276
    iget-object v8, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isFinished:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    .line 277
    iput-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 278
    iget-object v8, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v12, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v8, v12}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    :cond_9
    const-string v8, "on"

    .line 281
    iget-object v12, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    .line 282
    iput-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    goto :goto_3

    :cond_a
    const-string v8, "off"

    .line 283
    iget-object v12, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    .line 284
    iput-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    .line 286
    :cond_b
    :goto_3
    iget-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    invoke-direct {v1, v0, v8, v3}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->isUpload(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    .line 291
    iput-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    .line 292
    new-instance v12, Ljava/io/RandomAccessFile;

    iget-object v11, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    const-string v8, "r"

    invoke-direct {v12, v11, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 293
    :try_start_b
    iget-wide v3, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    invoke-virtual {v12, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v3, 0x1000

    .line 294
    new-array v3, v3, [B

    .line 296
    iget-wide v4, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    const/4 v4, 0x0

    .line 300
    :goto_4
    invoke-virtual {v12, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_c

    move-object v5, v12

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 303
    invoke-virtual {v7, v3, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 304
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 307
    rem-int/lit16 v5, v4, 0x1f40

    if-nez v5, :cond_d

    .line 309
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v5, v12

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v5, v12

    goto :goto_8

    :cond_e
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    .line 317
    :try_start_c
    iput-boolean v3, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :goto_5
    move-object v10, v15

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    const/4 v8, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v15, v10

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move-object v15, v10

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v15, v5

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v15, v5

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v7, v5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    move-object v7, v6

    :goto_6
    move-object v15, v7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    :goto_7
    move-object v15, v7

    :goto_8
    :try_start_d
    const-string v3, "com.fihtdc.UploadAgentService.upload(7.0010.05(Evenwell_s))"

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Upload fail: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 365
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 366
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_f

    .line 367
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_f
    if-eqz v5, :cond_10

    .line 369
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_10
    if-eqz v7, :cond_11

    .line 371
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_11
    if-eqz v15, :cond_12

    .line 373
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->close()V

    :cond_12
    if-eqz v6, :cond_13

    .line 375
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_9

    :catch_8
    move-exception v0

    goto/16 :goto_2

    .line 382
    :cond_13
    :goto_9
    monitor-exit p0

    return-object v2

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 365
    :goto_a
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 366
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_14

    .line 367
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_14
    if-eqz v5, :cond_15

    .line 369
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_15
    if-eqz v7, :cond_16

    .line 371
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_16
    if-eqz v15, :cond_17

    .line 373
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->close()V

    :cond_17
    if-eqz v6, :cond_18

    .line 375
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_b

    :catch_9
    move-exception v0

    .line 378
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    :cond_18
    :goto_b
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    .line 218
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uploadAprLogNoThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 391
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const/4 v4, 0x0

    if-eqz v3, :cond_18

    .line 401
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->setSleepPolicy(Landroid/content/Context;)V

    .line 402
    new-instance v5, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    .line 405
    iget-object v5, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v5, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->getBindId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 407
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Type=1;Content-Length="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";filename="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";sourceid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_0

    const-string v7, ""

    goto :goto_0

    :cond_0
    move-object v7, v5

    .line 408
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 415
    :try_start_2
    new-instance v8, Ljava/net/InetSocketAddress;

    const/16 v9, 0x2253

    move-object/from16 v10, p3

    invoke-direct {v8, v10, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const v9, 0xea60

    .line 416
    invoke-virtual {v7, v8, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 417
    invoke-virtual {v7, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 418
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 419
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/OutputStream;->write([B)V

    .line 421
    new-instance v6, Ljava/io/PushbackInputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 422
    :try_start_4
    invoke-static {v6}, Lcom/fihtdc/UploadAgentService/upload/StreamTool;->readLine(Ljava/io/PushbackInputStream;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 425
    aget-object v11, v10, v4

    aget-object v12, v10, v4

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 426
    aget-object v12, v10, v13

    aget-object v10, v10, v13

    const-string v14, "="

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v13

    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    if-nez v5, :cond_1

    .line 429
    iget-object v12, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v12, v11, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->save(Ljava/lang/String;Ljava/io/File;)V

    .line 433
    :cond_1
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v14, "r"

    invoke-direct {v12, v0, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 434
    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v12, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v14, 0x1000

    .line 435
    new-array v14, v14, [B

    .line 437
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v15, v4

    .line 440
    :goto_1
    invoke-virtual {v12, v14}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_d

    int-to-long v13, v10

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v3, v13, v17

    if-nez v3, :cond_9

    const/high16 v3, 0x300000

    if-le v10, v3, :cond_2

    const-wide/32 v13, 0xea60

    .line 461
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_2
    const/high16 v3, 0x100000

    if-le v10, v3, :cond_3

    const-wide/32 v13, 0xafc8

    .line 463
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_3
    const-wide/16 v13, 0x2710

    .line 465
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 468
    :goto_2
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v9, :cond_4

    .line 473
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move-object v3, v9

    .line 478
    :goto_3
    :try_start_7
    invoke-virtual {v6}, Ljava/io/PushbackInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v7, :cond_5

    .line 483
    :try_start_8
    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    const/4 v7, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v9, v3

    goto/16 :goto_a

    :cond_5
    :goto_4
    if-nez v5, :cond_6

    move-object v5, v11

    :cond_6
    const-wide/16 v9, 0x3e8

    .line 491
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 492
    invoke-virtual {v1, v2}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getFileCRCValue(Ljava/lang/String;)J

    move-result-wide v9

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Type=2;Content-Length="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ";filename="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";sourceid="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_7

    const-string v5, ""

    .line 494
    :cond_7
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";CRC-Checksun="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 497
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v7, 0x7530

    .line 498
    :try_start_9
    invoke-virtual {v6, v8, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 499
    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 500
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 501
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 503
    new-instance v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 504
    :try_start_b
    invoke-static {v3}, Lcom/fihtdc/UploadAgentService/upload/StreamTool;->readLine(Ljava/io/PushbackInputStream;)Ljava/lang/String;

    move-result-object v5

    const-string v8, ";"

    .line 506
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 507
    aget-object v8, v5, v4

    aget-object v11, v5, v4

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    add-int/2addr v11, v13

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 508
    aget-object v11, v5, v13

    aget-object v5, v5, v13

    const-string v12, "="

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v13

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 509
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 510
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v5, "yes"

    .line 511
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 516
    iget-object v5, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v5, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    cmp-long v0, v11, v9

    if-nez v0, :cond_8

    move v4, v13

    :cond_8
    const/16 v16, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v9, v7

    const/16 v16, 0x0

    move-object v7, v6

    move-object v6, v3

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move-object v9, v7

    const/4 v3, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v9, v7

    const/16 v16, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object v9, v7

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_5
    move-object v7, v6

    goto/16 :goto_f

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto/16 :goto_c

    :catch_4
    move-exception v0

    move-object v9, v3

    goto :goto_8

    :cond_9
    move-object v3, v6

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v16, v12

    .line 545
    :goto_6
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 546
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_a

    .line 547
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_a
    if-eqz v16, :cond_b

    .line 549
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    :cond_b
    if-eqz v7, :cond_c

    .line 551
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 553
    :cond_c
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V

    if-eqz v6, :cond_18

    .line 555
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto/16 :goto_12

    :catch_5
    move-exception v0

    .line 558
    :goto_7
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto/16 :goto_12

    :cond_d
    const/4 v13, 0x1

    .line 442
    :try_start_e
    invoke-virtual {v9, v14, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 443
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v10, v3

    .line 446
    rem-int/lit16 v3, v15, 0x1f40

    if-nez v3, :cond_e

    .line 449
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v12

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object/from16 v16, v6

    move-object v3, v12

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v2, v0

    goto :goto_c

    :catch_7
    move-exception v0

    :goto_8
    move-object/from16 v16, v6

    const/4 v3, 0x0

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object v2, v0

    :goto_9
    const/4 v6, 0x0

    goto :goto_c

    :catch_8
    move-exception v0

    :goto_a
    const/4 v3, 0x0

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto :goto_b

    :catch_9
    move-exception v0

    const/4 v3, 0x0

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_b
    const/4 v9, 0x0

    :goto_c
    const/16 v16, 0x0

    goto :goto_10

    :catch_a
    move-exception v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_d
    const/4 v9, 0x0

    :goto_e
    const/16 v16, 0x0

    :goto_f
    :try_start_f
    const-string v5, "com.fihtdc.UploadAgentService.upload(7.0010.05(Evenwell_s))"

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Upload "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fail: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 545
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 546
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_f

    .line 547
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_f
    if-eqz v3, :cond_10

    .line 549
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_10
    if-eqz v9, :cond_11

    .line 551
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    :cond_11
    if-eqz v16, :cond_12

    .line 553
    invoke-virtual/range {v16 .. v16}, Ljava/io/PushbackInputStream;->close()V

    :cond_12
    if-eqz v7, :cond_18

    .line 555
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    goto :goto_12

    :catch_b
    move-exception v0

    goto/16 :goto_7

    :catchall_a
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v16

    move-object/from16 v16, v3

    .line 545
    :goto_10
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 546
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_13

    .line 547
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_13
    if-eqz v16, :cond_14

    .line 549
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    :cond_14
    if-eqz v9, :cond_15

    .line 551
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    :cond_15
    if-eqz v6, :cond_16

    .line 553
    invoke-virtual {v6}, Ljava/io/PushbackInputStream;->close()V

    :cond_16
    if-eqz v7, :cond_17

    .line 555
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_11

    :catch_c
    move-exception v0

    .line 558
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    :cond_17
    :goto_11
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 562
    :cond_18
    :goto_12
    monitor-exit p0

    return v4

    :catchall_b
    move-exception v0

    .line 389
    monitor-exit p0

    throw v0
.end method
