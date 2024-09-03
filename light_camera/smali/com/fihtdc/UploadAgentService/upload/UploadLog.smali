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
    .registers 3

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
    .registers 6

    const-string p0, "none"

    .line 711
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_19

    if-eqz p2, :cond_d

    goto :goto_2b

    .line 715
    :cond_d
    new-instance p0, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;

    invoke-direct {p0}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;-><init>()V

    const-string p2, "off"

    .line 717
    invoke-virtual {p0, p1, p2}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->updateIsMonitoring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_17
    move v1, v0

    goto :goto_2b

    :cond_19
    const-string p0, "on"

    .line 719
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_2b

    :cond_22
    const-string p0, "off"

    .line 721
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_17

    :cond_2b
    :goto_2b
    return v1
.end method

.method private declared-synchronized rollbackSleepPolicy()V
    .registers 2

    monitor-enter p0

    .line 605
    :try_start_1
    iget-boolean v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->m_blPolicyChanged:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_a

    goto :goto_14

    .line 608
    :cond_a
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->m_blPolicyChanged:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 611
    monitor-exit p0

    return-void

    .line 606
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    .line 604
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setSleepPolicy(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    .line 593
    :try_start_1
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    if-nez v0, :cond_16

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
    :cond_16
    iget-object p1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->SleepPolicy:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 601
    iput-boolean v1, p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->m_blPolicyChanged:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 602
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    .line 592
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getFileCRCValue(Ljava/io/File;)J
    .registers 4

    const/4 p0, 0x0

    .line 733
    :try_start_1
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v1, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_26

    const/16 p0, 0x80

    .line 734
    :try_start_12
    new-array p0, p0, [B

    .line 735
    :cond_14
    invoke-virtual {v0, p0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result p1

    if-gez p1, :cond_14

    .line 738
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_2d

    :catch_23
    move-exception p0

    move-object p1, p0

    goto :goto_28

    :catch_26
    move-exception p1

    move-object v0, p0

    .line 741
    :goto_28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    :goto_2d
    if-eqz v0, :cond_37

    .line 745
    :try_start_2f
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    :goto_37
    return-wide p0
.end method

.method public getFileCRCValue(Ljava/lang/String;)J
    .registers 4

    const/4 p0, 0x0

    .line 571
    :try_start_1
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v1, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_26

    const/16 p0, 0x80

    .line 572
    :try_start_12
    new-array p0, p0, [B

    .line 573
    :cond_14
    invoke-virtual {v0, p0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result p1

    if-gez p1, :cond_14

    .line 576
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_2d

    :catch_23
    move-exception p0

    move-object p1, p0

    goto :goto_28

    :catch_26
    move-exception p1

    move-object v0, p0

    .line 579
    :goto_28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    :goto_2d
    if-eqz v0, :cond_37

    .line 583
    :try_start_2f
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    :goto_37
    return-wide p0
.end method

.method public declared-synchronized getType3Message(Ljava/lang/String;Ljava/lang/String;Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    monitor-enter p0

    .line 628
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "N"

    const-string v2, "none"

    .line 631
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v1, "Y"

    goto :goto_1d

    :cond_13
    const-string v2, "on"

    .line 633
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1d

    const-string v1, "Y"

    :cond_1d
    :goto_1d
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
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    monitor-exit p0

    return-object p1

    :catchall_63
    move-exception p1

    .line 627
    monitor-exit p0

    throw p1
.end method

.method public getType3Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;
    .registers 6

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
    :try_start_e
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
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception p0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v2, 0x0

    .line 653
    iput-wide v2, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    .line 656
    :goto_2c
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
    .registers 6
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
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type=4;filename="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 664
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_21

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_47

    monitor-exit p0

    return-object p1

    .line 664
    :cond_21
    :try_start_21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    if-nez v1, :cond_38

    .line 666
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 667
    iget-object v2, v2, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_38
    const-string v3, ","

    .line 669
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_47

    goto :goto_d

    :catchall_47
    move-exception p1

    .line 661
    monitor-exit p0

    throw p1
.end method

.method public getType4Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;
    .registers 9

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

    if-lez p0, :cond_66

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
    :goto_40
    array-length v3, v1

    if-lt p0, v3, :cond_46

    .line 702
    iput-object v2, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    goto :goto_66

    :cond_46
    const-wide/16 v3, 0x0

    .line 693
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 695
    :try_start_4b
    aget-object v5, p1, p0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_55} :catch_56

    goto :goto_5e

    :catch_56
    move-exception v5

    .line 697
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 698
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 700
    :goto_5e
    aget-object v3, v1, p0

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_40

    :cond_66
    :goto_66
    return-object v0
.end method

.method public declared-synchronized uploadAPRLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 24
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
    :try_start_7
    new-instance v3, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;

    invoke-direct {v3}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;-><init>()V

    .line 59
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-virtual {v3, v0}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->getIsDMCMonitoring(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_229

    const/4 v5, 0x0

    .line 62
    :try_start_16
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
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_1c0
    .catchall {:try_start_16 .. :try_end_28} :catchall_1ba

    .line 68
    :try_start_28
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
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3e} :catch_1b7
    .catchall {:try_start_28 .. :try_end_3e} :catchall_1b3

    .line 73
    :try_start_3e
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_1b0
    .catchall {:try_start_3e .. :try_end_42} :catchall_1ac

    move-object v9, v5

    :goto_43
    :try_start_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v10, :cond_e8

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
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5f} :catch_1a9
    .catchall {:try_start_43 .. :try_end_5f} :catchall_1a4

    .line 163
    :try_start_5f
    invoke-static {v3}, Lcom/fihtdc/UploadAgentService/upload/StreamTool;->readLine(Ljava/io/PushbackInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v1, v0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType4Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;

    move-result-object v0

    .line 167
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6f} :catch_e4
    .catchall {:try_start_5f .. :try_end_6f} :catchall_df

    if-nez v9, :cond_97

    .line 196
    :try_start_71
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 197
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_7d

    .line 198
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_7d
    if-eqz v5, :cond_82

    .line 200
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_82
    if-eqz v7, :cond_87

    .line 202
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 204
    :cond_87
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V

    if-eqz v6, :cond_1ff

    .line 206
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8f} :catch_91
    .catchall {:try_start_71 .. :try_end_8f} :catchall_229

    goto/16 :goto_1ff

    :catch_91
    move-exception v0

    .line 209
    :goto_92
    :try_start_92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_229

    goto/16 :goto_1ff

    .line 167
    :cond_97
    :try_start_97
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 168
    iget-boolean v10, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    if-eqz v10, :cond_d5

    .line 169
    iget-object v10, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    if-eqz v10, :cond_d2

    iget-object v10, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    iget-object v13, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d2

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

    if-eqz v10, :cond_cf

    .line 172
    iput-boolean v11, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 173
    iget-object v10, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v9, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v10, v9}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    goto :goto_6b

    .line 175
    :cond_cf
    iput-boolean v12, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    goto :goto_6b

    .line 178
    :cond_d2
    iput-boolean v12, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    goto :goto_6b

    .line 181
    :cond_d5
    iput-boolean v12, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 182
    iget-object v10, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v9, v9, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v10, v9}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_de} :catch_e4
    .catchall {:try_start_97 .. :try_end_de} :catchall_df

    goto :goto_6b

    :catchall_df
    move-exception v0

    move-object v2, v0

    move-object v15, v3

    goto/16 :goto_203

    :catch_e4
    move-exception v0

    move-object v15, v3

    goto/16 :goto_1c4

    .line 73
    :cond_e8
    :try_start_e8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 74
    iget-object v13, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    if-nez v13, :cond_f4

    goto/16 :goto_43

    .line 77
    :cond_f4
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
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_117} :catch_1a9
    .catchall {:try_start_e8 .. :try_end_117} :catchall_1a4

    .line 86
    :try_start_117
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

    if-eqz v11, :cond_133

    const/4 v11, 0x1

    .line 108
    iput-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 109
    iget-object v11, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v12, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v11, v12}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    :cond_133
    const-string v11, "on"

    .line 112
    iget-object v12, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_141

    const/4 v11, 0x1

    .line 113
    iput-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    goto :goto_14e

    :cond_141
    const-string v11, "off"

    .line 114
    iget-object v12, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14e

    const/4 v11, 0x0

    .line 115
    iput-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    .line 117
    :cond_14e
    :goto_14e
    iget-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    invoke-direct {v1, v0, v11, v3}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->isUpload(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_194

    const/4 v11, 0x1

    .line 122
    iput-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    .line 123
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v10, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v11, v10, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_162} :catch_1a2
    .catchall {:try_start_117 .. :try_end_162} :catchall_201

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 124
    :try_start_166
    iget-wide v3, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    invoke-virtual {v11, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v3, 0x1000

    .line 125
    new-array v3, v3, [B

    .line 127
    iget-wide v4, v9, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    const/4 v4, 0x0

    .line 131
    :goto_172
    invoke-virtual {v11, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_17b

    move-object v5, v11

    goto :goto_19b

    :cond_17b
    const/4 v9, 0x0

    .line 134
    invoke-virtual {v7, v3, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 138
    rem-int/lit16 v5, v4, 0x1f40

    if-nez v5, :cond_189

    .line 140
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_189} :catch_191
    .catchall {:try_start_166 .. :try_end_189} :catchall_18c

    :cond_189
    add-int/lit8 v4, v4, 0x1

    goto :goto_172

    :catchall_18c
    move-exception v0

    move-object v2, v0

    move-object v5, v11

    goto/16 :goto_203

    :catch_191
    move-exception v0

    move-object v5, v11

    goto :goto_1c4

    :cond_194
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    .line 148
    :try_start_199
    iput-boolean v3, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_19b} :catch_1a2
    .catchall {:try_start_199 .. :try_end_19b} :catchall_201

    :goto_19b
    move-object v9, v15

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto/16 :goto_43

    :catch_1a2
    move-exception v0

    goto :goto_1c4

    :catchall_1a4
    move-exception v0

    move-object v2, v0

    move-object v15, v9

    goto/16 :goto_203

    :catch_1a9
    move-exception v0

    move-object v15, v9

    goto :goto_1c4

    :catchall_1ac
    move-exception v0

    move-object v2, v0

    move-object v15, v5

    goto :goto_203

    :catch_1b0
    move-exception v0

    move-object v15, v5

    goto :goto_1c4

    :catchall_1b3
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_1be

    :catch_1b7
    move-exception v0

    move-object v7, v5

    goto :goto_1c3

    :catchall_1ba
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    move-object v7, v6

    :goto_1be
    move-object v15, v7

    goto :goto_203

    :catch_1c0
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    :goto_1c3
    move-object v15, v7

    :goto_1c4
    :try_start_1c4
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
    :try_end_1db
    .catchall {:try_start_1c4 .. :try_end_1db} :catchall_201

    .line 196
    :try_start_1db
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 197
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_1e7

    .line 198
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_1e7
    if-eqz v5, :cond_1ec

    .line 200
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_1ec
    if-eqz v7, :cond_1f1

    .line 202
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_1f1
    if-eqz v15, :cond_1f6

    .line 204
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->close()V

    :cond_1f6
    if-eqz v6, :cond_1ff

    .line 206
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1fb} :catch_1fc
    .catchall {:try_start_1db .. :try_end_1fb} :catchall_229

    goto :goto_1ff

    :catch_1fc
    move-exception v0

    goto/16 :goto_92

    .line 213
    :cond_1ff
    :goto_1ff
    monitor-exit p0

    return-object v2

    :catchall_201
    move-exception v0

    move-object v2, v0

    .line 196
    :goto_203
    :try_start_203
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 197
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_20f

    .line 198
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_20f
    if-eqz v5, :cond_214

    .line 200
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_214
    if-eqz v7, :cond_219

    .line 202
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_219
    if-eqz v15, :cond_21e

    .line 204
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->close()V

    :cond_21e
    if-eqz v6, :cond_228

    .line 206
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_223} :catch_224
    .catchall {:try_start_203 .. :try_end_223} :catchall_229

    goto :goto_228

    :catch_224
    move-exception v0

    .line 209
    :try_start_225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    :cond_228
    :goto_228
    throw v2
    :try_end_229
    .catchall {:try_start_225 .. :try_end_229} :catchall_229

    :catchall_229
    move-exception v0

    .line 51
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uploadAPRLogsSSL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 24
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
    :try_start_7
    new-instance v3, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;

    invoke-direct {v3}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;-><init>()V

    .line 226
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 227
    invoke-virtual {v3, v0}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->getIsDMCMonitoring(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_232

    const/4 v5, 0x0

    .line 229
    :try_start_16
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
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_1c9
    .catchall {:try_start_16 .. :try_end_2a} :catchall_1c3

    .line 235
    :try_start_2a
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
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_47} :catch_1c0
    .catchall {:try_start_2a .. :try_end_47} :catchall_1bc

    .line 242
    :try_start_47
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_1b9
    .catchall {:try_start_47 .. :try_end_4b} :catchall_1b5

    move-object v10, v5

    :goto_4c
    :try_start_4c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_f0

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
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_67} :catch_1b2
    .catchall {:try_start_4c .. :try_end_67} :catchall_1ad

    .line 332
    :try_start_67
    invoke-static {v3}, Lcom/fihtdc/UploadAgentService/upload/StreamTool;->readLine(Ljava/io/PushbackInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {v1, v0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getType4Response(Ljava/lang/String;)Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;

    move-result-object v0

    .line 336
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_73
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_77} :catch_ec
    .catchall {:try_start_67 .. :try_end_77} :catchall_e7

    if-nez v10, :cond_9f

    .line 365
    :try_start_79
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 366
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_85

    .line 367
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_85
    if-eqz v5, :cond_8a

    .line 369
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_8a
    if-eqz v7, :cond_8f

    .line 371
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 373
    :cond_8f
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V

    if-eqz v6, :cond_208

    .line 375
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_97} :catch_99
    .catchall {:try_start_79 .. :try_end_97} :catchall_232

    goto/16 :goto_208

    :catch_99
    move-exception v0

    .line 378
    :goto_9a
    :try_start_9a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_232

    goto/16 :goto_208

    .line 336
    :cond_9f
    :try_start_9f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 337
    iget-boolean v11, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    if-eqz v11, :cond_dd

    .line 338
    iget-object v11, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    if-eqz v11, :cond_da

    iget-object v11, v0, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type4Response;->checkSumHM:Ljava/util/HashMap;

    iget-object v13, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_da

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

    if-eqz v11, :cond_d7

    .line 341
    iput-boolean v8, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 342
    iget-object v11, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v10, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v11, v10}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    goto :goto_73

    .line 344
    :cond_d7
    iput-boolean v12, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    goto :goto_73

    .line 347
    :cond_da
    iput-boolean v12, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    goto :goto_73

    .line 350
    :cond_dd
    iput-boolean v12, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 351
    iget-object v11, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v10, v10, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v11, v10}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_e6} :catch_ec
    .catchall {:try_start_9f .. :try_end_e6} :catchall_e7

    goto :goto_73

    :catchall_e7
    move-exception v0

    move-object v2, v0

    move-object v15, v3

    goto/16 :goto_20c

    :catch_ec
    move-exception v0

    move-object v15, v3

    goto/16 :goto_1cd

    .line 242
    :cond_f0
    :try_start_f0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 243
    iget-object v13, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    if-nez v13, :cond_fc

    goto/16 :goto_4c

    .line 246
    :cond_fc
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
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_11f} :catch_1b2
    .catchall {:try_start_f0 .. :try_end_11f} :catchall_1ad

    .line 255
    :try_start_11f
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

    if-eqz v8, :cond_13b

    const/4 v8, 0x1

    .line 277
    iput-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    .line 278
    iget-object v8, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    iget-object v12, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v8, v12}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    :cond_13b
    const-string v8, "on"

    .line 281
    iget-object v12, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_149

    const/4 v8, 0x1

    .line 282
    iput-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    goto :goto_156

    :cond_149
    const-string v8, "off"

    .line 283
    iget-object v12, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->isMonitoring:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_156

    const/4 v8, 0x0

    .line 284
    iput-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    .line 286
    :cond_156
    :goto_156
    iget-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isMonitoring:Z

    invoke-direct {v1, v0, v8, v3}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->isUpload(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19c

    const/4 v8, 0x1

    .line 291
    iput-boolean v8, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    .line 292
    new-instance v12, Ljava/io/RandomAccessFile;

    iget-object v11, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    const-string v8, "r"

    invoke-direct {v12, v11, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_16a} :catch_1ab
    .catchall {:try_start_11f .. :try_end_16a} :catchall_20a

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 293
    :try_start_16e
    iget-wide v3, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    invoke-virtual {v12, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v3, 0x1000

    .line 294
    new-array v3, v3, [B

    .line 296
    iget-wide v4, v10, Lcom/fihtdc/UploadAgentService/upload/UploadLog$Type3Response;->position:J

    const/4 v4, 0x0

    .line 300
    :goto_17a
    invoke-virtual {v12, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_183

    move-object v5, v12

    goto :goto_1a3

    :cond_183
    const/4 v8, 0x0

    .line 303
    invoke-virtual {v7, v3, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 304
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 307
    rem-int/lit16 v5, v4, 0x1f40

    if-nez v5, :cond_191

    .line 309
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_191} :catch_199
    .catchall {:try_start_16e .. :try_end_191} :catchall_194

    :cond_191
    add-int/lit8 v4, v4, 0x1

    goto :goto_17a

    :catchall_194
    move-exception v0

    move-object v2, v0

    move-object v5, v12

    goto/16 :goto_20c

    :catch_199
    move-exception v0

    move-object v5, v12

    goto :goto_1cd

    :cond_19c
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    .line 317
    :try_start_1a1
    iput-boolean v3, v11, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a3} :catch_1ab
    .catchall {:try_start_1a1 .. :try_end_1a3} :catchall_20a

    :goto_1a3
    move-object v10, v15

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    const/4 v8, 0x1

    goto/16 :goto_4c

    :catch_1ab
    move-exception v0

    goto :goto_1cd

    :catchall_1ad
    move-exception v0

    move-object v2, v0

    move-object v15, v10

    goto/16 :goto_20c

    :catch_1b2
    move-exception v0

    move-object v15, v10

    goto :goto_1cd

    :catchall_1b5
    move-exception v0

    move-object v2, v0

    move-object v15, v5

    goto :goto_20c

    :catch_1b9
    move-exception v0

    move-object v15, v5

    goto :goto_1cd

    :catchall_1bc
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_1c7

    :catch_1c0
    move-exception v0

    move-object v7, v5

    goto :goto_1cc

    :catchall_1c3
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    move-object v7, v6

    :goto_1c7
    move-object v15, v7

    goto :goto_20c

    :catch_1c9
    move-exception v0

    move-object v6, v5

    move-object v7, v6

    :goto_1cc
    move-object v15, v7

    :goto_1cd
    :try_start_1cd
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
    :try_end_1e4
    .catchall {:try_start_1cd .. :try_end_1e4} :catchall_20a

    .line 365
    :try_start_1e4
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 366
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_1f0

    .line 367
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_1f0
    if-eqz v5, :cond_1f5

    .line 369
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_1f5
    if-eqz v7, :cond_1fa

    .line 371
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_1fa
    if-eqz v15, :cond_1ff

    .line 373
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->close()V

    :cond_1ff
    if-eqz v6, :cond_208

    .line 375
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_204} :catch_205
    .catchall {:try_start_1e4 .. :try_end_204} :catchall_232

    goto :goto_208

    :catch_205
    move-exception v0

    goto/16 :goto_9a

    .line 382
    :cond_208
    :goto_208
    monitor-exit p0

    return-object v2

    :catchall_20a
    move-exception v0

    move-object v2, v0

    .line 365
    :goto_20c
    :try_start_20c
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 366
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_218

    .line 367
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_218
    if-eqz v5, :cond_21d

    .line 369
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_21d
    if-eqz v7, :cond_222

    .line 371
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_222
    if-eqz v15, :cond_227

    .line 373
    invoke-virtual {v15}, Ljava/io/PushbackInputStream;->close()V

    :cond_227
    if-eqz v6, :cond_231

    .line 375
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_22c} :catch_22d
    .catchall {:try_start_20c .. :try_end_22c} :catchall_232

    goto :goto_231

    :catch_22d
    move-exception v0

    .line 378
    :try_start_22e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    :cond_231
    :goto_231
    throw v2
    :try_end_232
    .catchall {:try_start_22e .. :try_end_232} :catchall_232

    :catchall_232
    move-exception v0

    .line 218
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uploadAprLogNoThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 391
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_2dc

    const/4 v4, 0x0

    if-eqz v3, :cond_2da

    .line 401
    :try_start_11
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

    if-nez v5, :cond_47

    const-string v7, ""

    goto :goto_48

    :cond_47
    move-object v7, v5

    .line 408
    :goto_48
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
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5c} :catch_265
    .catchall {:try_start_11 .. :try_end_5c} :catchall_25d

    .line 415
    :try_start_5c
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
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_72} :catch_25a
    .catchall {:try_start_5c .. :try_end_72} :catchall_256

    .line 419
    :try_start_72
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/OutputStream;->write([B)V

    .line 421
    new-instance v6, Ljava/io/PushbackInputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_82} :catch_253
    .catchall {:try_start_72 .. :try_end_82} :catchall_24f

    .line 422
    :try_start_82
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

    if-nez v5, :cond_b2

    .line 429
    iget-object v12, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v12, v11, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->save(Ljava/lang/String;Ljava/io/File;)V

    .line 433
    :cond_b2
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v14, "r"

    invoke-direct {v12, v0, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_b9} :catch_24a
    .catchall {:try_start_82 .. :try_end_b9} :catchall_247

    .line 434
    :try_start_b9
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
    :goto_d2
    invoke-virtual {v12, v14}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_229

    int-to-long v13, v10

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v3, v13, v17

    if-nez v3, :cond_1fe

    const/high16 v3, 0x300000

    if-le v10, v3, :cond_ed

    const-wide/32 v13, 0xea60

    .line 461
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_fd

    :cond_ed
    const/high16 v3, 0x100000

    if-le v10, v3, :cond_f8

    const-wide/32 v13, 0xafc8

    .line 463
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_fd

    :cond_f8
    const-wide/16 v13, 0x2710

    .line 465
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 468
    :goto_fd
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_100} :catch_242
    .catchall {:try_start_b9 .. :try_end_100} :catchall_23c

    if-eqz v9, :cond_107

    .line 473
    :try_start_102
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_24a
    .catchall {:try_start_102 .. :try_end_105} :catchall_247

    const/4 v3, 0x0

    goto :goto_108

    :cond_107
    move-object v3, v9

    .line 478
    :goto_108
    :try_start_108
    invoke-virtual {v6}, Ljava/io/PushbackInputStream;->close()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_1fb
    .catchall {:try_start_108 .. :try_end_10b} :catchall_1f6

    if-eqz v7, :cond_11b

    .line 483
    :try_start_10d
    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    const/4 v7, 0x0

    goto :goto_11b

    :catchall_112
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto/16 :goto_251

    :catch_117
    move-exception v0

    move-object v9, v3

    goto/16 :goto_254

    :cond_11b
    :goto_11b
    if-nez v5, :cond_11e

    move-object v5, v11

    :cond_11e
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

    if-nez v5, :cond_14a

    const-string v5, ""

    .line 494
    :cond_14a
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
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_166} :catch_117
    .catchall {:try_start_10d .. :try_end_166} :catchall_112

    const/16 v7, 0x7530

    .line 498
    :try_start_168
    invoke-virtual {v6, v8, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 499
    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 500
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_172} :catch_1f1
    .catchall {:try_start_168 .. :try_end_172} :catchall_1eb

    .line 501
    :try_start_172
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 503
    new-instance v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_182} :catch_1e3
    .catchall {:try_start_172 .. :try_end_182} :catchall_1da

    .line 504
    :try_start_182
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

    if-eqz v5, :cond_1c8

    .line 516
    iget-object v5, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v5, v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1c3} :catch_1d4
    .catchall {:try_start_182 .. :try_end_1c3} :catchall_1cb

    cmp-long v0, v11, v9

    if-nez v0, :cond_1c8

    move v4, v13

    :cond_1c8
    const/16 v16, 0x0

    goto :goto_203

    :catchall_1cb
    move-exception v0

    move-object v2, v0

    move-object v9, v7

    const/16 v16, 0x0

    move-object v7, v6

    move-object v6, v3

    goto/16 :goto_2b4

    :catch_1d4
    move-exception v0

    move-object/from16 v16, v3

    move-object v9, v7

    const/4 v3, 0x0

    goto :goto_1e8

    :catchall_1da
    move-exception v0

    move-object v2, v0

    move-object v9, v7

    const/16 v16, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    goto/16 :goto_2b4

    :catch_1e3
    move-exception v0

    move-object v9, v7

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_1e8
    move-object v7, v6

    goto/16 :goto_26b

    :catchall_1eb
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_251

    :catch_1f1
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_254

    :catchall_1f6
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto/16 :goto_262

    :catch_1fb
    move-exception v0

    move-object v9, v3

    goto :goto_24b

    :cond_1fe
    move-object v3, v6

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v16, v12

    .line 545
    :goto_203
    :try_start_203
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 546
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_20f

    .line 547
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_20f
    if-eqz v16, :cond_214

    .line 549
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    :cond_214
    if-eqz v7, :cond_219

    .line 551
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 553
    :cond_219
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V

    if-eqz v6, :cond_2da

    .line 555
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_221} :catch_223
    .catchall {:try_start_203 .. :try_end_221} :catchall_2dc

    goto/16 :goto_2da

    :catch_223
    move-exception v0

    .line 558
    :goto_224
    :try_start_224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_227
    .catchall {:try_start_224 .. :try_end_227} :catchall_2dc

    goto/16 :goto_2da

    :cond_229
    const/4 v13, 0x1

    .line 442
    :try_start_22a
    invoke-virtual {v9, v14, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 443
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v10, v3

    .line 446
    rem-int/lit16 v3, v15, 0x1f40

    if-nez v3, :cond_238

    .line 449
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_238} :catch_242
    .catchall {:try_start_22a .. :try_end_238} :catchall_23c

    :cond_238
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_d2

    :catchall_23c
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v12

    goto/16 :goto_2b4

    :catch_242
    move-exception v0

    move-object/from16 v16, v6

    move-object v3, v12

    goto :goto_26b

    :catchall_247
    move-exception v0

    move-object v2, v0

    goto :goto_262

    :catch_24a
    move-exception v0

    :goto_24b
    move-object/from16 v16, v6

    const/4 v3, 0x0

    goto :goto_26b

    :catchall_24f
    move-exception v0

    move-object v2, v0

    :goto_251
    const/4 v6, 0x0

    goto :goto_262

    :catch_253
    move-exception v0

    :goto_254
    const/4 v3, 0x0

    goto :goto_269

    :catchall_256
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto :goto_261

    :catch_25a
    move-exception v0

    const/4 v3, 0x0

    goto :goto_268

    :catchall_25d
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_261
    const/4 v9, 0x0

    :goto_262
    const/16 v16, 0x0

    goto :goto_2b4

    :catch_265
    move-exception v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_268
    const/4 v9, 0x0

    :goto_269
    const/16 v16, 0x0

    :goto_26b
    :try_start_26b
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
    :try_end_28a
    .catchall {:try_start_26b .. :try_end_28a} :catchall_2ae

    .line 545
    :try_start_28a
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 546
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_296

    .line 547
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_296
    if-eqz v3, :cond_29b

    .line 549
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_29b
    if-eqz v9, :cond_2a0

    .line 551
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    :cond_2a0
    if-eqz v16, :cond_2a5

    .line 553
    invoke-virtual/range {v16 .. v16}, Ljava/io/PushbackInputStream;->close()V

    :cond_2a5
    if-eqz v7, :cond_2da

    .line 555
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_2aa
    .catch Ljava/lang/Exception; {:try_start_28a .. :try_end_2aa} :catch_2ab
    .catchall {:try_start_28a .. :try_end_2aa} :catchall_2dc

    goto :goto_2da

    :catch_2ab
    move-exception v0

    goto/16 :goto_224

    :catchall_2ae
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v16

    move-object/from16 v16, v3

    .line 545
    :goto_2b4
    :try_start_2b4
    invoke-direct/range {p0 .. p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->rollbackSleepPolicy()V

    .line 546
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    if-eqz v0, :cond_2c0

    .line 547
    iget-object v0, v1, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->dbHelper:Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    :cond_2c0
    if-eqz v16, :cond_2c5

    .line 549
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    :cond_2c5
    if-eqz v9, :cond_2ca

    .line 551
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    :cond_2ca
    if-eqz v6, :cond_2cf

    .line 553
    invoke-virtual {v6}, Ljava/io/PushbackInputStream;->close()V

    :cond_2cf
    if-eqz v7, :cond_2d9

    .line 555
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_2d4} :catch_2d5
    .catchall {:try_start_2b4 .. :try_end_2d4} :catchall_2dc

    goto :goto_2d9

    :catch_2d5
    move-exception v0

    .line 558
    :try_start_2d6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    :cond_2d9
    :goto_2d9
    throw v2
    :try_end_2da
    .catchall {:try_start_2d6 .. :try_end_2da} :catchall_2dc

    .line 562
    :cond_2da
    :goto_2da
    monitor-exit p0

    return v4

    :catchall_2dc
    move-exception v0

    .line 389
    monitor-exit p0

    throw v0
.end method
