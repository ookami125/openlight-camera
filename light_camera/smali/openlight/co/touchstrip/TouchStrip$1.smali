.class Lopenlight/co/touchstrip/TouchStrip$1;
.super Ljava/lang/Object;
.source "TouchStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/touchstrip/TouchStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/touchstrip/TouchStrip;


# direct methods
.method constructor <init>(Lopenlight/co/touchstrip/TouchStrip;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$1;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 69
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$1;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {v0}, Lopenlight/co/touchstrip/TouchStrip;->access$000(Lopenlight/co/touchstrip/TouchStrip;)Lopenlight/co/touchstrip/TouchStrip$Event;

    move-result-object v0

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$1;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    .line 70
    invoke-static {v0}, Lopenlight/co/touchstrip/TouchStrip;->access$000(Lopenlight/co/touchstrip/TouchStrip;)Lopenlight/co/touchstrip/TouchStrip$Event;

    move-result-object v0

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$1;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    .line 71
    invoke-static {v0}, Lopenlight/co/touchstrip/TouchStrip;->access$100(Lopenlight/co/touchstrip/TouchStrip;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$1;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    .line 73
    invoke-static {v0}, Lopenlight/co/touchstrip/TouchStrip;->access$100(Lopenlight/co/touchstrip/TouchStrip;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x15e

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 75
    :cond_1
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$1;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    iget-object v1, p0, Lopenlight/co/touchstrip/TouchStrip$1;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {v1}, Lopenlight/co/touchstrip/TouchStrip;->access$000(Lopenlight/co/touchstrip/TouchStrip;)Lopenlight/co/touchstrip/TouchStrip$Event;

    move-result-object v1

    sget-object v2, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    if-ne v1, v2, :cond_2

    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    goto :goto_0

    :cond_2
    sget-object v1, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    :goto_0
    invoke-static {v0, v1}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    .line 79
    :cond_3
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$1;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {p0}, Lopenlight/co/touchstrip/TouchStrip;->access$300(Lopenlight/co/touchstrip/TouchStrip;)V

    return-void
.end method
