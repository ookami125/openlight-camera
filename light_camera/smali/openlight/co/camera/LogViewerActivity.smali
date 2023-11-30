.class public Lopenlight/co/camera/LogViewerActivity;
.super Landroid/app/ListActivity;
.source "LogViewerActivity.java"

# interfaces
.implements Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;


# static fields
.field private static final MAX_ENTRIES:I = 0xc350

.field private static final MSG_FILTER_CHANGED:I = 0x2

.field private static final MSG_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LogViewerActivity"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lopenlight/co/lib/utils/LogUtil$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lopenlight/co/lib/utils/LogUtil$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMessageFilter:Landroid/widget/EditText;

.field private mMessagePattern:Ljava/util/regex/Pattern;

.field private mTagFilter:Landroid/widget/EditText;

.field private mTagPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    new-instance v0, Lopenlight/co/camera/LogViewerActivity$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/LogViewerActivity$1;-><init>(Lopenlight/co/camera/LogViewerActivity;)V

    iput-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mEntries:Ljava/util/ArrayList;

    return-void
.end method

.method private createAdapter()V
    .locals 3

    .line 121
    new-instance v0, Lopenlight/co/camera/LogViewerActivity$3;

    iget-object v1, p0, Lopenlight/co/camera/LogViewerActivity;->mEntries:Ljava/util/ArrayList;

    const v2, 0x7f0b004c

    invoke-direct {v0, p0, p0, v2, v1}, Lopenlight/co/camera/LogViewerActivity$3;-><init>(Lopenlight/co/camera/LogViewerActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 65
    invoke-virtual {p0, p1}, Lopenlight/co/camera/LogViewerActivity;->setContentView(I)V

    const p1, 0x7f090157

    .line 67
    invoke-virtual {p0, p1}, Lopenlight/co/camera/LogViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lopenlight/co/camera/LogViewerActivity;->mTagFilter:Landroid/widget/EditText;

    const p1, 0x7f0900f5

    .line 68
    invoke-virtual {p0, p1}, Lopenlight/co/camera/LogViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lopenlight/co/camera/LogViewerActivity;->mMessageFilter:Landroid/widget/EditText;

    .line 69
    new-instance p1, Lopenlight/co/camera/LogViewerActivity$2;

    invoke-direct {p1, p0}, Lopenlight/co/camera/LogViewerActivity$2;-><init>(Lopenlight/co/camera/LogViewerActivity;)V

    .line 85
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mTagFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mMessageFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    invoke-direct {p0}, Lopenlight/co/camera/LogViewerActivity;->createAdapter()V

    .line 89
    iget-object p1, p0, Lopenlight/co/camera/LogViewerActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/LogViewerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method onFilterChanged()V
    .locals 4

    .line 115
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object p0, p0, Lopenlight/co/camera/LogViewerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onLogChanged()V
    .locals 4

    .line 108
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object p0, p0, Lopenlight/co/camera/LogViewerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 102
    invoke-static {p0}, Lopenlight/co/lib/utils/LogUtil;->removeOnLogChangedListener(Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;)Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Lopenlight/co/camera/LogViewerActivity;->refresh(Z)V

    .line 96
    invoke-static {p0}, Lopenlight/co/lib/utils/LogUtil;->addOnLogChangedListener(Lopenlight/co/lib/utils/LogUtil$OnLogChangedListener;)Z

    return-void
.end method

.method refresh(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 149
    iget-object v1, p0, Lopenlight/co/camera/LogViewerActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 150
    iget-object v1, p0, Lopenlight/co/camera/LogViewerActivity;->mTagFilter:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lopenlight/co/camera/LogViewerActivity;->mTagPattern:Ljava/util/regex/Pattern;

    .line 154
    iget-object v1, p0, Lopenlight/co/camera/LogViewerActivity;->mMessageFilter:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 157
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lopenlight/co/camera/LogViewerActivity;->mMessagePattern:Ljava/util/regex/Pattern;

    .line 161
    :cond_2
    iget-object v1, p0, Lopenlight/co/camera/LogViewerActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 162
    :cond_3
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/utils/LogUtil$Entry;

    :goto_2
    const/4 v1, -0x1

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    .line 163
    :cond_4
    iget v0, v0, Lopenlight/co/lib/utils/LogUtil$Entry;->id:I

    .line 164
    :goto_3
    invoke-static {v0}, Lopenlight/co/lib/utils/LogUtil;->getEntries(I)[Lopenlight/co/lib/utils/LogUtil$Entry;

    move-result-object v0

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    array-length v3, v0

    :cond_5
    add-int/2addr v3, v1

    const/4 v4, 0x0

    const v5, 0xc350

    if-ltz v3, :cond_8

    .line 169
    aget-object v6, v0, v3

    .line 170
    iget-object v7, p0, Lopenlight/co/camera/LogViewerActivity;->mTagPattern:Ljava/util/regex/Pattern;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lopenlight/co/camera/LogViewerActivity;->mTagPattern:Ljava/util/regex/Pattern;

    iget-object v8, v6, Lopenlight/co/lib/utils/LogUtil$Entry;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_6
    iget-object v7, p0, Lopenlight/co/camera/LogViewerActivity;->mMessagePattern:Ljava/util/regex/Pattern;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lopenlight/co/camera/LogViewerActivity;->mMessagePattern:Ljava/util/regex/Pattern;

    iget-object v8, v6, Lopenlight/co/lib/utils/LogUtil$Entry;->message:Ljava/lang/String;

    .line 171
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 172
    :cond_7
    invoke-virtual {v2, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_5

    .line 180
    :cond_8
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v5

    if-lt v0, v5, :cond_9

    .line 183
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    :cond_9
    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_a

    .line 187
    iget-object v3, p0, Lopenlight/co/camera/LogViewerActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 190
    :cond_a
    :goto_5
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    iget-object v0, p0, Lopenlight/co/camera/LogViewerActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_b

    .line 195
    invoke-virtual {p0}, Lopenlight/co/camera/LogViewerActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lopenlight/co/camera/LogViewerActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_b
    return-void
.end method
