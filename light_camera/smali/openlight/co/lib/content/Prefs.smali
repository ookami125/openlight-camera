.class public interface abstract Lopenlight/co/lib/content/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;
    }
.end annotation


# virtual methods
.method public abstract getBooleanValue(Ljava/lang/String;)Z
.end method

.method public abstract getFloatValue(Ljava/lang/String;)F
.end method

.method public abstract getIntValue(Ljava/lang/String;)I
.end method

.method public abstract getLongValue(Ljava/lang/String;)J
.end method

.method public abstract getStringValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract putValue(Ljava/lang/String;F)V
.end method

.method public abstract putValue(Ljava/lang/String;I)V
.end method

.method public abstract putValue(Ljava/lang/String;J)V
.end method

.method public abstract putValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract putValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putValue(Ljava/lang/String;Z)V
.end method

.method public abstract registerChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V
.end method

.method public abstract removeValue(Ljava/lang/String;)V
.end method

.method public abstract unregisterChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V
.end method

.method public abstract withBroadcast(Ljava/lang/Runnable;)V
.end method
