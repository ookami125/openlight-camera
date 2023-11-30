.class Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;
.super Landroid/os/Handler;
.source "SmartAFTriggerMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;


# direct methods
.method constructor <init>(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;Landroid/os/Looper;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;->this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 201
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;->this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    sget-object p1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    invoke-static {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->access$200(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;->this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-static {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->access$100(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;)V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;->this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->access$002(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;Z)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
