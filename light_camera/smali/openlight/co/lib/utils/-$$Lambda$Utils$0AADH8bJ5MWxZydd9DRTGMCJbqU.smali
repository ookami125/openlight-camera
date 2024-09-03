.class public final synthetic Lopenlight/co/lib/utils/-$$Lambda$Utils$0AADH8bJ5MWxZydd9DRTGMCJbqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lopenlight/co/lib/content/Prefs;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/lib/content/Prefs;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/lib/utils/-$$Lambda$Utils$0AADH8bJ5MWxZydd9DRTGMCJbqU;->f$0:Lopenlight/co/lib/content/Prefs;

    iput-object p2, p0, Lopenlight/co/lib/utils/-$$Lambda$Utils$0AADH8bJ5MWxZydd9DRTGMCJbqU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lopenlight/co/lib/utils/-$$Lambda$Utils$0AADH8bJ5MWxZydd9DRTGMCJbqU;->f$0:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/lib/utils/-$$Lambda$Utils$0AADH8bJ5MWxZydd9DRTGMCJbqU;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/Utils;->lambda$updateLockedState$0(Lopenlight/co/lib/content/Prefs;Ljava/lang/String;)V

    return-void
.end method
