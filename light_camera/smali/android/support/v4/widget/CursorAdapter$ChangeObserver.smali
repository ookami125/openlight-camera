.class Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .registers 2

    .line 475
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    .line 476
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .registers 2

    .line 486
    iget-object p0, p0, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {p0}, Landroid/support/v4/widget/CursorAdapter;->onContentChanged()V

    return-void
.end method
