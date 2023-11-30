.class Lopenlight/co/camera/view/level/Leveler$2;
.super Ljava/lang/Object;
.source "Leveler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/level/Leveler;->setShowLevelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/level/Leveler;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/level/Leveler;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lopenlight/co/camera/view/level/Leveler$2;->this$0:Lopenlight/co/camera/view/level/Leveler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 134
    iget-object p0, p0, Lopenlight/co/camera/view/level/Leveler$2;->this$0:Lopenlight/co/camera/view/level/Leveler;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lopenlight/co/camera/view/level/Leveler;->access$1202(Lopenlight/co/camera/view/level/Leveler;Z)Z

    return-void
.end method
