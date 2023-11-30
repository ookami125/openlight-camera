.class Lopenlight/co/touchstrip/TouchStrip$3;
.super Ljava/lang/Object;
.source "TouchStrip.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/touchstrip/TouchStrip;->initTouchDetector()Landroid/support/v4/view/GestureDetectorCompat;
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

    .line 147
    iput-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 150
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {}, Lopenlight/co/touchstrip/TouchStrip;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {}, Lopenlight/co/touchstrip/TouchStrip;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {v0, v1, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x45bb8000    # 6000.0f

    cmpl-float p1, p3, p1

    const/4 p2, 0x1

    if-lez p1, :cond_1

    .line 237
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {p1}, Lopenlight/co/touchstrip/TouchStrip;->access$300(Lopenlight/co/touchstrip/TouchStrip;)V

    .line 238
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object p1, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    return p2

    :cond_1
    const p1, -0x3a448000    # -6000.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_2

    .line 241
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {p1}, Lopenlight/co/touchstrip/TouchStrip;->access$300(Lopenlight/co/touchstrip/TouchStrip;)V

    .line 242
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object p1, Lopenlight/co/touchstrip/TouchStrip$Event;->FLING_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    return p2

    :cond_2
    return p4

    .line 231
    :cond_3
    :goto_0
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {}, Lopenlight/co/touchstrip/TouchStrip;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onFling: one of the MotionEvents null, strange"

    invoke-static {p0, p1, p2}, Lopenlight/co/touchstrip/TouchStrip;->access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 214
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {v0}, Lopenlight/co/touchstrip/TouchStrip;->access$300(Lopenlight/co/touchstrip/TouchStrip;)V

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 216
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {}, Lopenlight/co/touchstrip/TouchStrip;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLeftLongPressStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {p1, v1}, Lopenlight/co/touchstrip/TouchStrip;->access$902(Lopenlight/co/touchstrip/TouchStrip;Z)Z

    .line 218
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object p1, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_START_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {}, Lopenlight/co/touchstrip/TouchStrip;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRightLongPressStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {p1, v1}, Lopenlight/co/touchstrip/TouchStrip;->access$1002(Lopenlight/co/touchstrip/TouchStrip;Z)Z

    .line 222
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object p1, Lopenlight/co/touchstrip/TouchStrip$Event;->LONG_PRESS_START_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    :goto_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 197
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {p1, p3}, Lopenlight/co/touchstrip/TouchStrip;->access$800(Lopenlight/co/touchstrip/TouchStrip;F)V

    const/high16 p1, -0x3f600000    # -5.0f

    cmpg-float p1, p3, p1

    const/4 p2, 0x1

    if-gez p1, :cond_0

    const/high16 p1, -0x3cea0000    # -150.0f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    .line 201
    iget-object p1, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object p4, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {p1, p4}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 p4, 0x40a00000    # 5.0f

    cmpl-float p4, p3, p4

    if-lez p4, :cond_1

    const/high16 p4, 0x43160000    # 150.0f

    cmpg-float p3, p3, p4

    if-gez p3, :cond_1

    .line 206
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object p1, Lopenlight/co/touchstrip/TouchStrip$Event;->SWIPE_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    move p1, p2

    :cond_1
    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 162
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {}, Lopenlight/co/touchstrip/TouchStrip;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowPress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 167
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {}, Lopenlight/co/touchstrip/TouchStrip;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapUp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lopenlight/co/touchstrip/TouchStrip;->access$700(Lopenlight/co/touchstrip/TouchStrip;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    invoke-static {v0}, Lopenlight/co/touchstrip/TouchStrip;->access$300(Lopenlight/co/touchstrip/TouchStrip;)V

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object v2, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_CENTER:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {v0, v2}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 178
    iget-object v0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object v2, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_LEFT:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {v0, v2}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    move v0, v1

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/high16 v2, 0x442f0000    # 700.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 184
    iget-object p0, p0, Lopenlight/co/touchstrip/TouchStrip$3;->this$0:Lopenlight/co/touchstrip/TouchStrip;

    sget-object p1, Lopenlight/co/touchstrip/TouchStrip$Event;->TAP_RIGHT:Lopenlight/co/touchstrip/TouchStrip$Event;

    invoke-static {p0, p1}, Lopenlight/co/touchstrip/TouchStrip;->access$200(Lopenlight/co/touchstrip/TouchStrip;Lopenlight/co/touchstrip/TouchStrip$Event;)V

    move v0, v1

    :cond_2
    return v0
.end method
