.class Lcom/fihtdc/UploadAgentService/UploadAgentHelper;
.super Landroid/content/ContextWrapper;
.source "UploadAgentHelper.java"

# interfaces
.implements Lcom/fihtdc/UploadAgentService/IUploadAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fihtdc/UploadAgentService/UploadAgentHelper$LongComparator;
    }
.end annotation


# static fields
.field private static final AGENT_INFO:Ljava/lang/String; = "agentInfo"

.field private static final AGENT_LABEL:Ljava/lang/String; = "agent_label"

.field private static final APR_SERVICE_STATUS:Ljava/lang/String; = "upload_service_status"

.field public static final DEFAULT_DMS_PROP:Ljava/lang/String; = "noset"

.field public static final PROP_IS_AGREE_UPLOAD:Ljava/lang/String; = "persist.sys.agree.upload"

.field public static final PROP_IS_WIFI_ONLY:Ljava/lang/String; = "persist.sys.wifi.only"

.field private static final SERVICE_CLASS_NAME:Ljava/lang/String; = "service_class_name"

.field private static UPLOAD_BUFFERED_SIZE:I = 0xbebc200

.field private static final UPLOAD_FOLDER:Ljava/lang/String; = "upload_folder"


# instance fields
.field private final AUTHORITY:Ljava/lang/String;

.field private final CONTENT_DUTINFO_URI:Landroid/net/Uri;

.field private final CONTENT_URI:Landroid/net/Uri;

.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string p1, "com.fihtdc.UploadAgentService.UploadAgentHelper(7.0010.05(Evenwell_s))"

    .line 54
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    const-string p1, "com.fihtdc.AprUploadService.provider.settingprovider"

    .line 55
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->AUTHORITY:Ljava/lang/String;

    const-string p1, "content://com.fihtdc.AprUploadService.provider.settingprovider/RecordSet/1"

    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "content://com.fihtdc.AprUploadService.provider.settingprovider/DutInfoSet/1"

    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->CONTENT_DUTINFO_URI:Landroid/net/Uri;

    return-void
.end method

.method private checkBufferedSize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 16

    .line 574
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_fd

    .line 577
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 579
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    array-length v2, p2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_1e
    if-lt v3, v2, :cond_b3

    .line 598
    new-instance p2, Lcom/fihtdc/UploadAgentService/UploadAgentHelper$LongComparator;

    invoke-direct {p2, p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper$LongComparator;-><init>(Lcom/fihtdc/UploadAgentService/UploadAgentHelper;)V

    .line 600
    sget v2, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->UPLOAD_BUFFERED_SIZE:I

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gtz v2, :cond_2e

    goto/16 :goto_fd

    .line 603
    :cond_2e
    new-instance v8, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v8, p1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    .line 604
    sget p1, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->UPLOAD_BUFFERED_SIZE:I

    int-to-long v2, p1

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 607
    :try_start_3b
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_57

    :catch_3f
    move-exception p1

    .line 609
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Collections.sort(timeList, longComparator): "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_57
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_66

    goto :goto_af

    :cond_66
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 614
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    .line 615
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_7d

    goto :goto_a3

    :cond_7d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 616
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_a3

    .line 617
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 621
    :try_start_9c
    invoke-virtual {v8, p2}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_9f

    .line 626
    :catch_9f
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_76

    .line 631
    :cond_a3
    :goto_a3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-lez p1, :cond_5f

    .line 636
    :goto_af
    invoke-virtual {v8}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    goto :goto_fd

    .line 582
    :cond_b3
    aget-object v8, p2, v3

    .line 583
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    .line 584
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c6

    .line 585
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_c6
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v6, v11

    .line 588
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ea

    .line 589
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedList;

    .line 590
    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f9

    .line 593
    :cond_ea
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 594
    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    :cond_fd
    :goto_fd
    return-void
.end method

.method private checkPeriodBuffered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 16

    .line 645
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 648
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "STB"

    .line 649
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_134

    .line 652
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 654
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 655
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 657
    array-length v5, v0

    const/4 v6, 0x0

    :goto_2e
    if-lt v6, v5, :cond_ec

    .line 673
    new-instance v0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper$LongComparator;

    invoke-direct {v0, p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper$LongComparator;-><init>(Lcom/fihtdc/UploadAgentService/UploadAgentHelper;)V

    .line 675
    new-instance v7, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v7, p1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    .line 677
    :try_start_3a
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_56

    :catch_3e
    move-exception p1

    .line 679
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Collections.sort(timeList, longComparator): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    const-wide/16 v5, 0x0

    .line 682
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 683
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 710
    invoke-virtual {v7}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    goto/16 :goto_134

    .line 683
    :cond_6a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 684
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 685
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 686
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_84
    :goto_84
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_8b

    goto :goto_5f

    :cond_8b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 687
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v11, 0x1cf7c5800L

    cmp-long v0, v4, v11

    if-lez v0, :cond_84

    .line 688
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a2
    :goto_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a9

    goto :goto_84

    :cond_a9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 690
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 694
    :try_start_b9
    invoke-virtual {v7, p1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->delete(Ljava/io/File;)V

    .line 695
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFile(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c3} :catch_c4

    goto :goto_e8

    :catch_c4
    move-exception v4

    .line 697
    iget-object v5, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "checkBufferedSize:dbHelper.deleteForceUploadFile("

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") Msg: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_e8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_a2

    .line 657
    :cond_ec
    aget-object v7, v0, v6

    .line 658
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 659
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ff

    .line 660
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_ff
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 663
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_121

    .line 664
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedList;

    .line 665
    invoke-virtual {v10, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_130

    .line 668
    :cond_121
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 669
    invoke-virtual {v10, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_130
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2e

    :cond_134
    :goto_134
    return-void
.end method

.method private getFileInformation([Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 287
    array-length p0, p1

    if-lez p0, :cond_93

    .line 288
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 289
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 290
    array-length v2, p1

    const/4 v3, 0x0

    :goto_13
    if-lt v3, v2, :cond_17

    goto/16 :goto_94

    :cond_17
    aget-object v4, p1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 296
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 298
    :cond_6b
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 299
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_90
    :goto_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_93
    const/4 p0, 0x0

    :goto_94
    return-object p0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 10

    const-string v0, ""

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    .line 784
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 785
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 786
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_2e

    :catch_29
    move-exception p0

    .line 788
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_2e
    return-object p0
.end method

.method private getUploadFileInformation([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 308
    array-length p0, p1

    if-lez p0, :cond_8b

    .line 309
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 310
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 311
    array-length v2, p1

    const/4 v3, 0x0

    :goto_13
    if-lt v3, v2, :cond_17

    goto/16 :goto_8c

    :cond_17
    aget-object v4, p1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 313
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 317
    invoke-virtual {p0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 319
    :cond_6f
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 320
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_88
    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_8b
    const/4 p0, 0x0

    :goto_8c
    return-object p0
.end method

.method private insertFileInfo(Landroid/content/Context;Ljava/util/Set;ZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v0, p1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_13

    .line 280
    invoke-virtual {v0}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->close()V

    return-void

    .line 271
    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 273
    :try_start_19
    invoke-virtual {v0, p2, p3, p4}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->insertUploadFileInfo(Ljava/lang/String;ZZ)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_9

    :catch_1d
    move-exception v1

    .line 275
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception Happen in UploadAgentHelper.insertFileInfo("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") Message: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private updateAgentInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string p0, "agentInfo"

    const/4 v0, 0x4

    .line 740
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 741
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "upload_folder"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "agent_label"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "service_class_name"

    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public check3GStatus(Landroid/content/Context;)Z
    .registers 7

    const-string p0, "connectivity"

    .line 409
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 408
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 410
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    .line 411
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-lt v0, p1, :cond_12

    return v1

    :cond_12
    aget-object v2, p0, v0

    .line 412
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MOBILE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 413
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public checkConnectedStatus(Landroid/content/Context;)Z
    .registers 11

    const-string p0, "connectivity"

    .line 428
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 427
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 429
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    .line 430
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_12
    const/4 v5, 0x1

    if-lt v1, p1, :cond_1d

    if-nez v2, :cond_1c

    if-nez v3, :cond_1c

    if-nez v4, :cond_1c

    return v0

    :cond_1c
    return v5

    :cond_1d
    aget-object v6, p0, v1

    .line 431
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WIFI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 432
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_32

    move v2, v5

    .line 436
    :cond_32
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MOBILE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 437
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_45

    move v3, v5

    .line 441
    :cond_45
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ETHERNET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 442
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ETH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 443
    :cond_5d
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_64

    move v4, v5

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public declared-synchronized checkUploadFiles(Landroid/content/Context;[Ljava/io/File;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 747
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 749
    array-length v0, p2
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_24

    const/4 v1, 0x0

    :goto_8
    if-lt v1, v0, :cond_c

    .line 757
    monitor-exit p0

    return-object p1

    .line 749
    :cond_c
    :try_start_c
    aget-object v2, p2, v1

    .line 750
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_21

    .line 751
    :cond_15
    invoke-virtual {p0, v2}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getUploadFileInfo(Ljava/io/File;)Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    const-wide/16 v2, 0x12c

    .line 753
    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_24

    :catch_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_24
    move-exception p1

    .line 746
    monitor-exit p0

    throw p1
.end method

.method public checkWifiStatus(Landroid/content/Context;)Z
    .registers 7

    const-string p0, "connectivity"

    .line 392
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 391
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 393
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    .line 394
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-lt v0, p1, :cond_12

    return v1

    :cond_12
    aget-object v2, p0, v0

    .line 395
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 396
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public createSelfUploadFile(Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;)V
    .registers 11

    if-eqz p2, :cond_63

    .line 101
    array-length v0, p2

    if-lez v0, :cond_63

    .line 102
    new-instance v0, Lcom/fihtdc/UploadAgentService/util/Util;

    invoke-direct {v0}, Lcom/fihtdc/UploadAgentService/util/Util;-><init>()V

    const/4 v1, 0x0

    .line 103
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-static {p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getUploadFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 107
    invoke-direct {p0, p2, v3, v4, p3}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getUploadFileInformation([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_25
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_33

    .line 118
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->checkBufferedSize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_63

    .line 108
    :cond_33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 109
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getDUTInfoString()Ljava/lang/String;

    move-result-object v3

    .line 110
    new-instance v4, Ljava/io/File;

    const-string v6, "DUTInfo.txt"

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v3, v4}, Lcom/fihtdc/UploadAgentService/util/Util;->convertStringToFile(Ljava/lang/String;Ljava/io/File;)V

    const/4 v3, 0x1

    .line 112
    new-array v3, v3, [Ljava/io/File;

    aput-object v4, v3, v1

    .line 114
    invoke-virtual {v0, p3, v3}, Lcom/fihtdc/UploadAgentService/util/Util;->addFilesToZip(Ljava/io/File;[Ljava/io/File;)V

    .line 115
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 116
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_25

    :cond_63
    :goto_63
    return-void
.end method

.method public createSelfUploadFile(Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;Z)V
    .registers 12

    if-eqz p2, :cond_65

    .line 123
    array-length v0, p2

    if-lez v0, :cond_65

    .line 124
    new-instance v0, Lcom/fihtdc/UploadAgentService/util/Util;

    invoke-direct {v0}, Lcom/fihtdc/UploadAgentService/util/Util;-><init>()V

    const/4 v1, 0x0

    .line 125
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getUploadFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 129
    invoke-direct {p0, p2, v3, v4, p3}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getUploadFileInformation([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p2

    .line 130
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_25
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_35

    if-eqz p4, :cond_65

    .line 141
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->checkBufferedSize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_65

    .line 130
    :cond_35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 131
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getDUTInfoString()Ljava/lang/String;

    move-result-object v3

    .line 132
    new-instance v4, Ljava/io/File;

    const-string v6, "DUTInfo.txt"

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v3, v4}, Lcom/fihtdc/UploadAgentService/util/Util;->convertStringToFile(Ljava/lang/String;Ljava/io/File;)V

    const/4 v3, 0x1

    .line 134
    new-array v3, v3, [Ljava/io/File;

    aput-object v4, v3, v1

    .line 136
    invoke-virtual {v0, p3, v3}, Lcom/fihtdc/UploadAgentService/util/Util;->addFilesToZip(Ljava/io/File;[Ljava/io/File;)V

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 138
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_25

    :cond_65
    :goto_65
    return-void
.end method

.method public filesToZip([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 11

    .line 335
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    const-string p0, ".zip"

    .line 336
    invoke-virtual {p3, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_22

    .line 337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ".zip"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_22
    const/4 p0, 0x0

    .line 340
    :try_start_23
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_b9

    if-eqz p1, :cond_b9

    .line 342
    array-length p2, p1

    if-lez p2, :cond_b9

    .line 343
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 344
    new-instance p3, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p3, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_57} :catch_e0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_57} :catch_d5
    .catchall {:try_start_23 .. :try_end_57} :catchall_d2

    const/16 p2, 0x2800

    .line 346
    :try_start_59
    new-array v1, p2, [B
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5b} :catch_b7
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5b} :catch_b5
    .catchall {:try_start_59 .. :try_end_5b} :catchall_eb

    const/4 v2, 0x0

    move-object v3, p0

    move p0, v2

    .line 347
    :goto_5e
    :try_start_5e
    array-length v4, p1

    if-lt p0, v4, :cond_64

    move-object p0, v3

    goto/16 :goto_ba

    .line 348
    :cond_64
    aget-object v4, p1, p0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 349
    new-instance v4, Ljava/util/zip/ZipEntry;

    aget-object v5, p1, p0

    .line 350
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 352
    new-instance v4, Ljava/io/FileInputStream;

    aget-object v5, p1, p0

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 353
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_86
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_86} :catch_b1
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_86} :catch_ad
    .catchall {:try_start_5e .. :try_end_86} :catchall_a9

    .line 355
    :goto_86
    :try_start_86
    invoke-virtual {v5, v1, v2, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_95

    .line 358
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 359
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    move-object v3, v5

    goto :goto_a6

    .line 356
    :cond_95
    invoke-virtual {p3, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_98
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_98} :catch_a2
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_98} :catch_9e
    .catchall {:try_start_86 .. :try_end_98} :catchall_99

    goto :goto_86

    :catchall_99
    move-exception p0

    move-object p1, p0

    move-object p0, v5

    goto/16 :goto_ec

    :catch_9e
    move-exception p0

    move-object p1, p0

    move-object p0, v5

    goto :goto_d7

    :catch_a2
    move-exception p0

    move-object p1, p0

    move-object p0, v5

    goto :goto_e2

    :cond_a6
    :goto_a6
    add-int/lit8 p0, p0, 0x1

    goto :goto_5e

    :catchall_a9
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    goto :goto_ec

    :catch_ad
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    goto :goto_d7

    :catch_b1
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    goto :goto_e2

    :catch_b5
    move-exception p1

    goto :goto_d7

    :catch_b7
    move-exception p1

    goto :goto_e2

    :cond_b9
    move-object p3, p0

    :goto_ba
    if-eqz p0, :cond_c2

    .line 374
    :try_start_bc
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_c2

    :catch_c0
    move-exception p0

    goto :goto_c8

    :cond_c2
    :goto_c2
    if-eqz p3, :cond_d1

    .line 376
    invoke-virtual {p3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c7} :catch_c0

    goto :goto_d1

    .line 378
    :goto_c8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_d1
    :goto_d1
    return-object v0

    :catchall_d2
    move-exception p1

    move-object p3, p0

    goto :goto_ec

    :catch_d5
    move-exception p1

    move-object p3, p0

    .line 369
    :goto_d7
    :try_start_d7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 370
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_e0
    move-exception p1

    move-object p3, p0

    .line 366
    :goto_e2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 367
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_eb
    .catchall {:try_start_d7 .. :try_end_eb} :catchall_eb

    :catchall_eb
    move-exception p1

    :goto_ec
    if-eqz p0, :cond_f4

    .line 374
    :try_start_ee
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_f4

    :catch_f2
    move-exception p0

    goto :goto_fa

    :cond_f4
    :goto_f4
    if-eqz p3, :cond_103

    .line 376
    invoke-virtual {p3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f9} :catch_f2

    goto :goto_103

    .line 378
    :goto_fa
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 381
    :cond_103
    :goto_103
    throw p1
.end method

.method public getAPRServerURL()Ljava/lang/String;
    .registers 10

    const-string v0, "apr.c2dms.com"

    const/4 v1, 0x0

    .line 527
    :try_start_3
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_42
    .catchall {:try_start_3 .. :try_end_11} :catchall_3f

    .line 528
    :try_start_11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 529
    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_37

    const-string v3, "aprServerUrl"

    .line 531
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    const-string v3, "null"

    const-string v4, "aprServerUrl"

    .line 532
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "aprServerUrl"

    .line 533
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_3d
    .catchall {:try_start_11 .. :try_end_36} :catchall_53

    move-object v0, v1

    :cond_37
    if-eqz v2, :cond_52

    .line 542
    :goto_39
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_52

    :catch_3d
    move-exception v1

    goto :goto_46

    :catchall_3f
    move-exception p0

    move-object v2, v1

    goto :goto_54

    :catch_42
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 539
    :goto_46
    :try_start_46
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_53

    if-eqz v2, :cond_52

    goto :goto_39

    :cond_52
    :goto_52
    return-object v0

    :catchall_53
    move-exception p0

    :goto_54
    if-eqz v2, :cond_59

    .line 542
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_59
    throw p0
.end method

.method public getDUTInfoString()Ljava/lang/String;
    .registers 10

    const-string v0, ""

    const/4 v1, 0x0

    .line 554
    :try_start_3
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->CONTENT_DUTINFO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_2c
    .catchall {:try_start_3 .. :try_end_11} :catchall_29

    .line 555
    :try_start_11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 556
    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_21

    const-string v3, "stringDUT"

    .line 558
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_27
    .catchall {:try_start_11 .. :try_end_20} :catchall_3d

    move-object v0, v1

    :cond_21
    if-eqz v2, :cond_3c

    .line 565
    :goto_23
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    :catch_27
    move-exception v1

    goto :goto_30

    :catchall_29
    move-exception p0

    move-object v2, v1

    goto :goto_3e

    :catch_2c
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 562
    :goto_30
    :try_start_30
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3d

    if-eqz v2, :cond_3c

    goto :goto_23

    :cond_3c
    :goto_3c
    return-object v0

    :catchall_3d
    move-exception p0

    :goto_3e
    if-eqz v2, :cond_43

    .line 565
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_43
    throw p0
.end method

.method public getUploadFileInfo(Ljava/io/File;)Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;
    .registers 5

    .line 761
    new-instance p0, Lcom/fihtdc/UploadAgentService/upload/UploadLog;

    invoke-direct {p0}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;-><init>()V

    .line 762
    new-instance v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    invoke-direct {v0}, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;-><init>()V

    .line 763
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    .line 764
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->oriFileName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 766
    iput-boolean v1, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isResend:Z

    .line 767
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->ContentLength:J

    .line 768
    invoke-virtual {p0, p1}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->getFileCRCValue(Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->CheckSum:J

    .line 769
    iput-object p1, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public isUserAgreeUpload()Z
    .registers 11

    const-string v0, "persist.sys.agree.upload"

    const-string v1, "noset"

    .line 492
    invoke-static {v0, v1}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAgreeUploadStr["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "noset"

    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7e

    const/4 v0, 0x0

    .line 496
    :try_start_2a
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_53
    .catchall {:try_start_2a .. :try_end_38} :catchall_50

    .line 497
    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_48

    const-string v3, "service_on"

    .line 500
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_4e
    .catchall {:try_start_38 .. :try_end_47} :catchall_77

    move v2, v0

    :cond_48
    if-eqz v1, :cond_63

    .line 507
    :goto_4a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_63

    :catch_4e
    move-exception v0

    goto :goto_57

    :catchall_50
    move-exception p0

    move-object v1, v0

    goto :goto_78

    :catch_53
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 504
    :goto_57
    :try_start_57
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_77

    if-eqz v1, :cond_63

    goto :goto_4a

    .line 511
    :cond_63
    :goto_63
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAgreeUpload get from provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :catchall_77
    move-exception p0

    :goto_78
    if-eqz v1, :cond_7d

    .line 507
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 510
    :cond_7d
    throw p0

    .line 514
    :cond_7e
    :try_start_7e
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_82} :catch_83

    move v2, v0

    .line 518
    :catch_83
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAgreeUpload get from property: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    return v2
.end method

.method public isWifiOnly()Z
    .registers 11

    const-string v0, "persist.sys.wifi.only"

    const-string v1, "noset"

    .line 457
    invoke-static {v0, v1}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isWifiOnlyStr["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "noset"

    .line 459
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7e

    const/4 v0, 0x0

    .line 461
    :try_start_2a
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_53
    .catchall {:try_start_2a .. :try_end_38} :catchall_50

    .line 462
    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 463
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_48

    const-string v3, "wifi_only"

    .line 465
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_4e
    .catchall {:try_start_38 .. :try_end_47} :catchall_77

    move v2, v0

    :cond_48
    if-eqz v1, :cond_63

    .line 472
    :goto_4a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_63

    :catch_4e
    move-exception v0

    goto :goto_57

    :catchall_50
    move-exception p0

    move-object v1, v0

    goto :goto_78

    :catch_53
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 469
    :goto_57
    :try_start_57
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_77

    if-eqz v1, :cond_63

    goto :goto_4a

    .line 476
    :cond_63
    :goto_63
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isWifiOnly get from provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :catchall_77
    move-exception p0

    :goto_78
    if-eqz v1, :cond_7d

    .line 472
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_7d
    throw p0

    .line 479
    :cond_7e
    :try_start_7e
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_82} :catch_83

    move v2, v0

    .line 483
    :catch_83
    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isWifiOnly get from property: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    return v2
.end method

.method public startAgentUpload(Landroid/content/Context;Ljava/lang/Class;[Ljava/io/File;Ljava/lang/String;Z)V
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 76
    invoke-virtual/range {v0 .. v7}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->startAgentUpload(Landroid/content/Context;Ljava/lang/Class;[Ljava/io/File;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public startAgentUpload(Landroid/content/Context;Ljava/lang/Class;[Ljava/io/File;Ljava/lang/String;ZZ)V
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 80
    invoke-virtual/range {v0 .. v7}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->startAgentUpload(Landroid/content/Context;Ljava/lang/Class;[Ljava/io/File;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public startAgentUpload(Landroid/content/Context;Ljava/lang/Class;[Ljava/io/File;Ljava/lang/String;ZZZ)V
    .registers 12

    .line 84
    array-length v0, p3

    if-lez v0, :cond_54

    const/4 v0, 0x0

    .line 85
    aget-object v0, p3, v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-direct {p0, p3, p4}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getFileInformation([Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    .line 87
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start Agent FileHM:size()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v1, p6, p7}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->insertFileInfo(Landroid/content/Context;Ljava/util/Set;ZZ)V

    .line 89
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->updateAgentInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "uploadFiles"

    .line 91
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "uploadFolder"

    .line 92
    invoke-virtual {p4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deleteAftComplete"

    .line 93
    invoke-virtual {p4, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isForceUpload"

    .line 94
    invoke-virtual {p4, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isResend"

    .line 95
    invoke-virtual {p4, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, p4}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_54
    return-void
.end method

.method public startSelfUpload(Landroid/content/Context;)V
    .registers 10

    .line 148
    iget-object v0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    const-string v1, "startSelfUpload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getUploadFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->checkPeriodBuffered(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1f1

    .line 153
    array-length v1, v0

    if-lez v1, :cond_1f1

    if-eqz v0, :cond_23

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->checkUploadFiles(Landroid/content/Context;[Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_21
    move-object v6, v1

    goto :goto_29

    .line 158
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_21

    :goto_29
    if-eqz v6, :cond_42

    .line 161
    iget-object v1, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkUploadFiles Size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_42
    new-instance v1, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;

    invoke-direct {v1}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;-><init>()V

    .line 164
    invoke-virtual {v1, p1}, Lcom/fihtdc/UploadAgentService/sharedPref/SharedPrefHelper;->getIsMonitoring(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_182

    .line 166
    new-instance v1, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v1, p1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1f1

    if-eqz v6, :cond_1f1

    .line 167
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f1

    .line 168
    new-instance v0, Lcom/fihtdc/UploadAgentService/util/Util;

    invoke-direct {v0}, Lcom/fihtdc/UploadAgentService/util/Util;-><init>()V

    .line 169
    invoke-virtual {v0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-static {}, Lcom/fihtdc/UploadAgentService/util/Util;->getSWVerInfo()Ljava/lang/String;

    move-result-object v5

    .line 171
    new-instance v2, Lcom/fihtdc/UploadAgentService/upload/UploadLog;

    invoke-direct {v2}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;-><init>()V

    .line 172
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getAPRServerURL()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    .line 174
    invoke-virtual/range {v2 .. v7}, Lcom/fihtdc/UploadAgentService/upload/UploadLog;->uploadAPRLogsSSL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_81
    :goto_81
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_1f1

    :cond_89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 176
    iget-boolean v2, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isNeedUpload:Z

    if-eqz v2, :cond_132

    .line 177
    iget-boolean v2, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isUploadSuccess:Z

    if-eqz v2, :cond_de

    .line 178
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is upload success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_b0
    iget-object v2, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFile(Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_b6

    goto :goto_d8

    :catch_b6
    move-exception v2

    .line 182
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UploadFileHandler: dbHelper.deleteForceUploadFile("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_d8
    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_81

    .line 187
    :cond_de
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is upload fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-boolean v2, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->isResend:Z

    if-nez v2, :cond_81

    .line 190
    :try_start_fb
    iget-object v2, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFile(Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_104} :catch_105

    goto :goto_12b

    :catch_105
    move-exception v2

    .line 192
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UploadFileHandler: dbHelper.deleteForceUploadFile("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_12b
    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_81

    .line 198
    :cond_132
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " don\'t need to be uploaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_14b
    iget-object v2, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFile(Ljava/lang/String;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_154} :catch_155

    goto :goto_17b

    :catch_155
    move-exception v2

    .line 202
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UploadFileHandler: dbHelper.deleteForceUploadFile("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_17b
    iget-object v0, v0, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_81

    :cond_182
    if-eqz v0, :cond_1f1

    if-eqz v6, :cond_1f1

    .line 209
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f1

    .line 210
    new-instance v0, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;

    invoke-direct {v0, p1}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_195
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_19c

    goto :goto_1f1

    :cond_19c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;

    .line 212
    iget-object v2, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->uploadFileName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is monitoring off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :try_start_1bb
    iget-object v2, v1, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fihtdc/UploadAgentService/database/UploadLogDBHelper;->deleteUploadFile(Ljava/lang/String;)V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c4} :catch_1c5

    goto :goto_1eb

    :catch_1c5
    move-exception v2

    .line 216
    iget-object v3, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UploadFileHandler: dbHelper.deleteForceUploadFile("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_1eb
    iget-object v1, v1, Lcom/fihtdc/UploadAgentService/data/UploadFileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_195

    :cond_1f1
    :goto_1f1
    return-void
.end method

.method public updateUploadServiceStatus(Z)V
    .registers 4

    .line 776
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "upload_service_status"

    .line 777
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 778
    invoke-virtual {p0}, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/fihtdc/UploadAgentService/UploadAgentHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
