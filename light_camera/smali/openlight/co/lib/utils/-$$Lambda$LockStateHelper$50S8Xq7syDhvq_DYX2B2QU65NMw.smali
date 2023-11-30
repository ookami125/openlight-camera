.class public final synthetic Lopenlight/co/lib/utils/-$$Lambda$LockStateHelper$50S8Xq7syDhvq_DYX2B2QU65NMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/lib/utils/LockStateHelper;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/lib/utils/LockStateHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/lib/utils/-$$Lambda$LockStateHelper$50S8Xq7syDhvq_DYX2B2QU65NMw;->f$0:Lopenlight/co/lib/utils/LockStateHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lopenlight/co/lib/utils/-$$Lambda$LockStateHelper$50S8Xq7syDhvq_DYX2B2QU65NMw;->f$0:Lopenlight/co/lib/utils/LockStateHelper;

    invoke-static {p0}, Lopenlight/co/lib/utils/LockStateHelper;->lambda$onReceive$0(Lopenlight/co/lib/utils/LockStateHelper;)V

    return-void
.end method
