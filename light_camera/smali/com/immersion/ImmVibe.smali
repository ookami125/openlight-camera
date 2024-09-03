.class public abstract Lcom/immersion/ImmVibe;
.super Ljava/lang/Object;
.source "ImmVibe.java"

# interfaces
.implements Lcom/immersion/ImmVibeAPI;


# static fields
.field private static sInstance:Lcom/immersion/ImmVibe;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/immersion/ImmVibe;
    .registers 2

    .line 68
    sget-object v0, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    if-nez v0, :cond_18

    .line 70
    invoke-static {}, Lcom/immersion/ImmVibe;->newImmVibeInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 76
    invoke-virtual {v0}, Lcom/immersion/ImmVibe;->initialize()V

    .line 77
    sput-object v0, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    goto :goto_1a

    .line 74
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "VIBE_E_FAIL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_18
    sget-object v0, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    :goto_1a
    return-object v0
.end method

.method private static newImmVibeInstance()Lcom/immersion/ImmVibe;
    .registers 1

    const-string v0, "com.immersion.android.ImmVibe"

    .line 53
    invoke-static {v0}, Lcom/immersion/ImmVibe;->newImmVibeInstanceForName(Ljava/lang/String;)Lcom/immersion/ImmVibe;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "com.immersion.J2ME.ImmVibe"

    .line 57
    invoke-static {v0}, Lcom/immersion/ImmVibe;->newImmVibeInstanceForName(Ljava/lang/String;)Lcom/immersion/ImmVibe;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private static newImmVibeInstanceForName(Ljava/lang/String;)Lcom/immersion/ImmVibe;
    .registers 1

    .line 35
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/immersion/ImmVibe;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method


# virtual methods
.method public terminate()V
    .registers 1

    const/4 p0, 0x0

    .line 91
    sput-object p0, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    return-void
.end method
