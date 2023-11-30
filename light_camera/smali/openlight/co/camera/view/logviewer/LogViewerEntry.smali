.class public Lopenlight/co/camera/view/logviewer/LogViewerEntry;
.super Landroid/widget/RelativeLayout;
.source "LogViewerEntry.java"


# static fields
.field private static final sDateFormat:Ljava/text/DateFormat;

.field private static final sLevelStrings:[Ljava/lang/String;


# instance fields
.field private mLevel:Landroid/widget/TextView;

.field private mMessage:Landroid/widget/TextView;

.field private mStack:Landroid/widget/TextView;

.field private mTag:Landroid/widget/TextView;

.field private mTimestamp:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->sDateFormat:Ljava/text/DateFormat;

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "V"

    const-string v5, "D"

    const-string v6, "I"

    const-string v7, "W"

    const-string v8, "E"

    const-string v9, "A"

    .line 28
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->sLevelStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private static stackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 96
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 98
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 99
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(ILopenlight/co/lib/utils/LogUtil$Entry;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mTimestamp:Landroid/widget/TextView;

    sget-object v1, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->sDateFormat:Ljava/text/DateFormat;

    iget-wide v2, p2, Lopenlight/co/lib/utils/LogUtil$Entry;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mLevel:Landroid/widget/TextView;

    sget-object v1, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->sLevelStrings:[Ljava/lang/String;

    iget v2, p2, Lopenlight/co/lib/utils/LogUtil$Entry;->level:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mTag:Landroid/widget/TextView;

    iget-object v1, p2, Lopenlight/co/lib/utils/LogUtil$Entry;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mMessage:Landroid/widget/TextView;

    iget-object v1, p2, Lopenlight/co/lib/utils/LogUtil$Entry;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p2, Lopenlight/co/lib/utils/LogUtil$Entry;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 67
    iget-object p2, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mStack:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mStack:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mStack:Landroid/widget/TextView;

    iget-object p2, p2, Lopenlight/co/lib/utils/LogUtil$Entry;->exception:Ljava/lang/Exception;

    invoke-static {p2}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->stackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 73
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const p1, -0x222223

    .line 75
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09016c

    .line 82
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mTimestamp:Landroid/widget/TextView;

    const v0, 0x7f0900e4

    .line 83
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mLevel:Landroid/widget/TextView;

    const v0, 0x7f090156

    .line 84
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mTag:Landroid/widget/TextView;

    const v0, 0x7f0900f4

    .line 85
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f09014b

    .line 86
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/logviewer/LogViewerEntry;->mStack:Landroid/widget/TextView;

    return-void
.end method
