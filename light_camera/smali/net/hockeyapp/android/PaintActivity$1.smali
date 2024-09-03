.class Lnet/hockeyapp/android/PaintActivity$1;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/PaintActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/PaintActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/PaintActivity;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lnet/hockeyapp/android/PaintActivity$1;->this$0:Lnet/hockeyapp/android/PaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    packed-switch p2, :pswitch_data_10

    goto :goto_f

    .line 140
    :pswitch_4
    iget-object p0, p0, Lnet/hockeyapp/android/PaintActivity$1;->this$0:Lnet/hockeyapp/android/PaintActivity;

    # invokes: Lnet/hockeyapp/android/PaintActivity;->makeResult()V
    invoke-static {p0}, Lnet/hockeyapp/android/PaintActivity;->access$000(Lnet/hockeyapp/android/PaintActivity;)V

    goto :goto_f

    .line 144
    :pswitch_a
    iget-object p0, p0, Lnet/hockeyapp/android/PaintActivity$1;->this$0:Lnet/hockeyapp/android/PaintActivity;

    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->finish()V

    :goto_f
    return-void

    :pswitch_data_10
    .packed-switch -0x2
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method
