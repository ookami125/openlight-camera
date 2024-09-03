.class public Lopenlight/co/lib/content/CamPrefsFactory;
.super Ljava/lang/Object;
.source "CamPrefsFactory.java"


# static fields
.field private static sInstance:Lopenlight/co/lib/content/Prefs;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lopenlight/co/lib/content/Prefs;
    .registers 1

    .line 12
    sget-object v0, Lopenlight/co/lib/content/CamPrefsFactory;->sInstance:Lopenlight/co/lib/content/Prefs;

    return-object v0
.end method

.method public static set(Lopenlight/co/lib/content/Prefs;)V
    .registers 1

    .line 16
    sput-object p0, Lopenlight/co/lib/content/CamPrefsFactory;->sInstance:Lopenlight/co/lib/content/Prefs;

    return-void
.end method
