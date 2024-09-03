.class public Lnet/hockeyapp/android/adapters/MessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessagesAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lnet/hockeyapp/android/objects/FeedbackMessage;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 63
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 64
    iget-object p0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public clear()V
    .registers 2

    .line 57
    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 58
    iget-object p0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    return-void
.end method

.method public getCount()I
    .registers 1

    .line 23
    iget-object p0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 48
    iget-object p0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 28
    iget-object p3, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/hockeyapp/android/objects/FeedbackMessage;

    if-nez p2, :cond_13

    .line 32
    new-instance p2, Lnet/hockeyapp/android/views/FeedbackMessageView;

    iget-object p0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_15

    .line 34
    :cond_13
    check-cast p2, Lnet/hockeyapp/android/views/FeedbackMessageView;

    :goto_15
    if-eqz p3, :cond_1a

    .line 38
    invoke-virtual {p2, p3}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setFeedbackMessage(Lnet/hockeyapp/android/objects/FeedbackMessage;)V

    .line 41
    :cond_1a
    invoke-virtual {p2, p1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setIndex(I)V

    return-object p2
.end method
