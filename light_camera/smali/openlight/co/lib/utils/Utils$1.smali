.class Lopenlight/co/lib/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/lib/utils/Utils;->runWithLockedState(Lopenlight/co/lib/utils/VoidCallback1;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lib/utils/Utils;

.field final synthetic val$callback:Lopenlight/co/lib/utils/VoidCallback1;

.field final synthetic val$runLockedNow:Z


# direct methods
.method constructor <init>(Lopenlight/co/lib/utils/Utils;ZLopenlight/co/lib/utils/VoidCallback1;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lopenlight/co/lib/utils/Utils$1;->this$0:Lopenlight/co/lib/utils/Utils;

    iput-boolean p2, p0, Lopenlight/co/lib/utils/Utils$1;->val$runLockedNow:Z

    iput-object p3, p0, Lopenlight/co/lib/utils/Utils$1;->val$callback:Lopenlight/co/lib/utils/VoidCallback1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 562
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils$1;->this$0:Lopenlight/co/lib/utils/Utils;

    invoke-virtual {v0}, Lopenlight/co/lib/utils/Utils;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-boolean v1, p0, Lopenlight/co/lib/utils/Utils$1;->val$runLockedNow:Z

    if-nez v1, :cond_1

    .line 564
    :cond_0
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils$1;->val$callback:Lopenlight/co/lib/utils/VoidCallback1;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lopenlight/co/lib/utils/VoidCallback1;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
