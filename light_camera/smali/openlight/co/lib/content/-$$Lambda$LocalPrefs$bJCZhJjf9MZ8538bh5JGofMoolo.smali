.class public final synthetic Lopenlight/co/lib/content/-$$Lambda$LocalPrefs$bJCZhJjf9MZ8538bh5JGofMoolo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lopenlight/co/lib/content/LocalPrefs;


# direct methods
.method public synthetic constructor <init>(Lopenlight/co/lib/content/LocalPrefs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopenlight/co/lib/content/-$$Lambda$LocalPrefs$bJCZhJjf9MZ8538bh5JGofMoolo;->f$0:Lopenlight/co/lib/content/LocalPrefs;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lopenlight/co/lib/content/-$$Lambda$LocalPrefs$bJCZhJjf9MZ8538bh5JGofMoolo;->f$0:Lopenlight/co/lib/content/LocalPrefs;

    invoke-static {p0, p1, p2}, Lopenlight/co/lib/content/LocalPrefs;->lambda$new$0(Lopenlight/co/lib/content/LocalPrefs;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
