.class Lcom/fihtdc/UploadAgentService/UploadAgent$LongComparator;
.super Ljava/lang/Object;
.source "UploadAgent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fihtdc/UploadAgentService/UploadAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;


# direct methods
.method public constructor <init>(Lcom/fihtdc/UploadAgentService/UploadAgent;)V
    .registers 2

    .line 863
    iput-object p1, p0, Lcom/fihtdc/UploadAgentService/UploadAgent$LongComparator;->this$0:Lcom/fihtdc/UploadAgentService/UploadAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Long;Ljava/lang/Long;)I
    .registers 5

    if-ne p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 870
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/fihtdc/UploadAgentService/UploadAgent$LongComparator;->compare(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p0

    return p0
.end method
