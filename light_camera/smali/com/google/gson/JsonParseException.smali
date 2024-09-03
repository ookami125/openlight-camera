.class public Lcom/google/gson/JsonParseException;
.super Ljava/lang/RuntimeException;
.source "JsonParseException.java"


# static fields
.field static final serialVersionUID:J = -0x38b6fb4247878edeL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
