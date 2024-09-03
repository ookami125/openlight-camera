.class Lopenlight/co/camera/utils/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/utils/SoundManager;->initSoundPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/SoundManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/SoundManager;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lopenlight/co/camera/utils/SoundManager$1;->this$0:Lopenlight/co/camera/utils/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 4

    .line 261
    iget-object p1, p0, Lopenlight/co/camera/utils/SoundManager$1;->this$0:Lopenlight/co/camera/utils/SoundManager;

    # operator++ for: Lopenlight/co/camera/utils/SoundManager;->mNumSoundsLoaded:I
    invoke-static {p1}, Lopenlight/co/camera/utils/SoundManager;->access$008(Lopenlight/co/camera/utils/SoundManager;)I

    .line 262
    invoke-static {}, Lopenlight/co/camera/utils/SoundManager$Sound;->values()[Lopenlight/co/camera/utils/SoundManager$Sound;

    move-result-object p1

    array-length p1, p1

    iget-object p2, p0, Lopenlight/co/camera/utils/SoundManager$1;->this$0:Lopenlight/co/camera/utils/SoundManager;

    # getter for: Lopenlight/co/camera/utils/SoundManager;->mNumSoundsLoaded:I
    invoke-static {p2}, Lopenlight/co/camera/utils/SoundManager;->access$000(Lopenlight/co/camera/utils/SoundManager;)I

    move-result p2

    if-ne p1, p2, :cond_21

    .line 263
    # getter for: Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/SoundManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Loading of all sounds to sound pool completed"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Lopenlight/co/camera/utils/SoundManager$1;->this$0:Lopenlight/co/camera/utils/SoundManager;

    const/4 p1, 0x1

    # setter for: Lopenlight/co/camera/utils/SoundManager;->mSoundPoolLoaded:Z
    invoke-static {p0, p1}, Lopenlight/co/camera/utils/SoundManager;->access$202(Lopenlight/co/camera/utils/SoundManager;Z)Z

    :cond_21
    return-void
.end method
