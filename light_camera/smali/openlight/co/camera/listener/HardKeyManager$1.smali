.class Lopenlight/co/camera/listener/HardKeyManager$1;
.super Ljava/lang/Object;
.source "HardKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/HardKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/listener/HardKeyManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/listener/HardKeyManager;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lopenlight/co/camera/listener/HardKeyManager$1;->this$0:Lopenlight/co/camera/listener/HardKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 31
    iget-object v0, p0, Lopenlight/co/camera/listener/HardKeyManager$1;->this$0:Lopenlight/co/camera/listener/HardKeyManager;

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    iget-object v2, p0, Lopenlight/co/camera/listener/HardKeyManager$1;->this$0:Lopenlight/co/camera/listener/HardKeyManager;

    invoke-static {v2}, Lopenlight/co/camera/listener/HardKeyManager;->access$000(Lopenlight/co/camera/listener/HardKeyManager;)Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lopenlight/co/camera/listener/HardKeyManager;->access$100(Lopenlight/co/camera/listener/HardKeyManager;Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    .line 32
    iget-object p0, p0, Lopenlight/co/camera/listener/HardKeyManager$1;->this$0:Lopenlight/co/camera/listener/HardKeyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lopenlight/co/camera/listener/HardKeyManager;->access$202(Lopenlight/co/camera/listener/HardKeyManager;Z)Z

    return-void
.end method
