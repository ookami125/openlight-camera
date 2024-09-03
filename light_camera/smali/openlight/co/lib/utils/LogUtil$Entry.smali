.class public Lopenlight/co/lib/utils/LogUtil$Entry;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lib/utils/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final exception:Ljava/lang/Exception;

.field public final id:I

.field public final level:I

.field public final message:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lopenlight/co/lib/utils/LogUtil$Entry;->id:I

    .line 46
    iput-wide p2, p0, Lopenlight/co/lib/utils/LogUtil$Entry;->timestamp:J

    .line 47
    iput p4, p0, Lopenlight/co/lib/utils/LogUtil$Entry;->level:I

    .line 48
    iput-object p5, p0, Lopenlight/co/lib/utils/LogUtil$Entry;->tag:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lopenlight/co/lib/utils/LogUtil$Entry;->message:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lopenlight/co/lib/utils/LogUtil$Entry;->exception:Ljava/lang/Exception;

    return-void
.end method
