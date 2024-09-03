.class final Landroid/support/v4/provider/FontsContractCompat$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/widget/TextView;III)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 261
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroid/graphics/Typeface;)V
    .registers 5

    .line 265
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 266
    :try_start_5
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$300()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 267
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$300()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    iget-object p0, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2f

    const/4 p0, 0x0

    .line 269
    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_2e

    .line 270
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;

    invoke-interface {v0, p1}, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :cond_2e
    return-void

    :catchall_2f
    move-exception p0

    .line 268
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    .line 261
    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/support/v4/provider/FontsContractCompat$3;->onReply(Landroid/graphics/Typeface;)V

    return-void
.end method
