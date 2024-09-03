.class final enum Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId$7;
.super Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;
.source "StatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZLjava/lang/String;IFI)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 110
    invoke-direct/range {v0 .. v8}, Lopenlight/co/camera/view/statusbar/StatusAdapter$StatusBadgeId;-><init>(Ljava/lang/String;IZLjava/lang/String;IFILopenlight/co/camera/view/statusbar/StatusAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .registers 1

    .line 114
    invoke-static {}, Lopenlight/co/camera/utils/CipherManager;->get()Lopenlight/co/camera/utils/CipherManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CipherManager;->isEncryptionEnabled()Z

    move-result p0

    if-eqz p0, :cond_e

    const p0, 0x7f08013f

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
