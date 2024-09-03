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
    .registers 3

    .line 198
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;->this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 201
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_1c

    goto :goto_1a

    .line 213
    :pswitch_6
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;->this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    sget-object p1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    # invokes: Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocusAtCenter(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V
    invoke-static {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->access$200(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V

    goto :goto_1a

    .line 210
    :pswitch_e
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;->this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    # invokes: Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->initSignificantMotionDetector()V
    invoke-static {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->access$100(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;)V

    goto :goto_1a

    .line 205
    :pswitch_14
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;->this$0:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    const/4 p1, 0x0

    # setter for: Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mPauseFaceProcessingPostFaceFocusTrigger:Z
    invoke-static {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->access$002(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;Z)Z

    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
