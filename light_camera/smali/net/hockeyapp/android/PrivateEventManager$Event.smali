.class public final Lnet/hockeyapp/android/PrivateEventManager$Event;
.super Ljava/lang/Object;
.source "PrivateEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/PrivateEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# instance fields
.field private final mType:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lnet/hockeyapp/android/PrivateEventManager$Event;->mType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 37
    iget p0, p0, Lnet/hockeyapp/android/PrivateEventManager$Event;->mType:I

    return p0
.end method
