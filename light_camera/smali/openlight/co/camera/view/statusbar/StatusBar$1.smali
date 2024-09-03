.class Lopenlight/co/camera/view/statusbar/StatusBar$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/statusbar/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/statusbar/StatusBar;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/statusbar/StatusBar;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lopenlight/co/camera/view/statusbar/StatusBar$1;->this$0:Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChanged(Lopenlight/co/lib/content/Prefs;Ljava/lang/String;)V
    .registers 4

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, 0x644afe00

    if-eq p1, v0, :cond_a

    goto :goto_14

    :cond_a
    const-string p1, "shutter_index"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, -0x1

    :goto_15
    if-eqz p1, :cond_18

    goto :goto_21

    .line 165
    :cond_18
    iget-object p0, p0, Lopenlight/co/camera/view/statusbar/StatusBar$1;->this$0:Lopenlight/co/camera/view/statusbar/StatusBar;

    # getter for: Lopenlight/co/camera/view/statusbar/StatusBar;->mStatusAdapter:Lopenlight/co/camera/view/statusbar/StatusAdapter;
    invoke-static {p0}, Lopenlight/co/camera/view/statusbar/StatusBar;->access$000(Lopenlight/co/camera/view/statusbar/StatusBar;)Lopenlight/co/camera/view/statusbar/StatusAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusAdapter;->updateBadge()V

    :goto_21
    return-void
.end method
