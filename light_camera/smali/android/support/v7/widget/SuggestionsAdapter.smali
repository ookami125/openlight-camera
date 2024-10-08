.class Landroid/support/v7/widget/SuggestionsAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchManager:Landroid/app/SearchManager;

.field private final mSearchView:Landroid/support/v7/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Landroid/support/v7/widget/SearchView;->getSuggestionRowLayout()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    .line 74
    iput v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    .line 83
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    .line 84
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 85
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 86
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 87
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 97
    iput-object p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 98
    iput-object p3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 99
    invoke-virtual {p2}, Landroid/support/v7/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCommitIconResId:I

    .line 102
    iput-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 104
    iput-object p4, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 582
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 587
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10

    .line 335
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_23

    .line 337
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 338
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->textColorSearchUrl:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 339
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 342
    :cond_23
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 343
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 p0, 0x0

    .line 344
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v1, 0x21

    .line 343
    invoke-virtual {v0, v7, p0, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 646
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 649
    :try_start_9
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_d} :catch_44

    .line 654
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    if-nez v2, :cond_14

    return-object v1

    .line 656
    :cond_14
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 657
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3, v2, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_43

    const-string p0, "SuggestionsAdapter"

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid icon resource "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 659
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_43
    return-object p0

    :catch_44
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    .line 651
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 624
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 626
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 627
    iget-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p1, :cond_18

    goto :goto_22

    .line 628
    :cond_18
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_22
    return-object v2

    .line 631
    :cond_23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2a

    goto :goto_2e

    .line 633
    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 634
    :goto_2e
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 675
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 676
    invoke-static {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 605
    iget-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_d

    return-object p1

    .line 611
    :cond_d
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x0

    .line 549
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    .line 550
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_89

    if-eqz v1, :cond_29

    .line 553
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_11} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_89

    return-object p0

    .line 555
    :catch_12
    :try_start_12
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 559
    :cond_29
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_33} :catch_89

    if-eqz p0, :cond_72

    .line 564
    :try_start_35
    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_55

    .line 567
    :try_start_39
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_89

    goto :goto_54

    :catch_3d
    move-exception p0

    :try_start_3e
    const-string v2, "SuggestionsAdapter"

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing icon stream for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_54} :catch_89

    :goto_54
    return-object v1

    :catchall_55
    move-exception v1

    .line 567
    :try_start_56
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_89

    goto :goto_71

    :catch_5a
    move-exception p0

    :try_start_5b
    const-string v2, "SuggestionsAdapter"

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing icon stream for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    :goto_71
    throw v1

    .line 561
    :cond_72
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_89} :catch_89

    :catch_89
    move-exception p0

    const-string v1, "SuggestionsAdapter"

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_70

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_70

    .line 511
    :cond_12
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3c

    return-object v3

    .line 521
    :cond_3c
    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 523
    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_45} :catch_5d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_45} :catch_46

    return-object v1

    :catch_46
    const-string p0, "SuggestionsAdapter"

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Icon resource not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 527
    :catch_5d
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_64

    return-object v0

    .line 531
    :cond_64
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 532
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 533
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_70
    :goto_70
    return-object v0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 361
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 364
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_14

    return-object v0

    .line 369
    :cond_14
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 373
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 376
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return-object v0

    .line 684
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v1, "unexpected error retrieving valid column from cursor, did the remote process die?"

    .line 686
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    .line 387
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_9

    .line 390
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    :cond_9
    const/4 p0, 0x0

    .line 392
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    invoke-virtual {p2, p0, p0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 p1, 0x1

    .line 400
    invoke-virtual {p2, p1, p0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_14
    return-void
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8

    .line 354
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    :cond_f
    const/4 p0, 0x0

    .line 356
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_13
    return-void
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p2, :cond_b

    .line 592
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 194
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    if-eqz p0, :cond_13

    const-string p1, "in_progress"

    .line 203
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    return-void

    :cond_13
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 277
    iget p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_13

    .line 278
    iget p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_14

    :cond_13
    move p2, v0

    .line 280
    :goto_14
    iget-object v1, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    .line 281
    iget v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    invoke-static {p3, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-object v2, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 284
    :cond_23
    iget-object v1, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_64

    .line 286
    iget v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {p3, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 288
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3c

    .line 290
    :cond_36
    iget v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {p3, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    .line 295
    :goto_3c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 296
    iget-object v4, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_5f

    .line 297
    iget-object v4, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 298
    iget-object v4, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_5f

    .line 301
    :cond_51
    iget-object v4, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_5f

    .line 302
    iget-object v4, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 303
    iget-object v4, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 306
    :cond_5f
    :goto_5f
    iget-object v4, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 309
    :cond_64
    iget-object v1, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v1, :cond_72

    .line 310
    iget-object v1, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v1, v4, v5}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 312
    :cond_72
    iget-object v1, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz v1, :cond_81

    .line 313
    iget-object v1, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, v1, p3, v4}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 315
    :cond_81
    iget p3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-eq p3, v2, :cond_93

    iget p3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-ne p3, v3, :cond_8d

    and-int/2addr p2, v3

    if-eqz p2, :cond_8d

    goto :goto_93

    .line 322
    :cond_8d
    iget-object p0, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a8

    .line 318
    :cond_93
    :goto_93
    iget-object p2, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object p2, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    iget-object p3, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 320
    iget-object p1, p1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a8
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3

    .line 216
    iget-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    if-eqz v0, :cond_11

    const-string p0, "SuggestionsAdapter"

    const-string v0, "Tried to change cursor after adapter was closed."

    .line 217
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    .line 218
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_10
    return-void

    .line 223
    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    if-eqz p1, :cond_4f

    const-string v0, "suggest_text_1"

    .line 226
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    const-string v0, "suggest_text_2"

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    const-string v0, "suggest_text_2_url"

    .line 228
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    const-string v0, "suggest_icon_1"

    .line 229
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    const-string v0, "suggest_icon_2"

    .line 230
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    const-string v0, "suggest_flags"

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v0, "error changing cursor and caching columns"

    .line 234
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const-string v1, "suggest_intent_query"

    .line 418
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    return-object v1

    .line 423
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "suggest_intent_data"

    .line 424
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    return-object v1

    .line 430
    :cond_1e
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result p0

    if-eqz p0, :cond_2f

    const-string p0, "suggest_text_1"

    .line 431
    invoke-static {p1, p0}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    return-object p0

    :cond_2f
    return-object v0
.end method

.method getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 698
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 704
    :try_start_a
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_a3

    .line 709
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 713
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_44

    .line 717
    :try_start_22
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_57

    .line 719
    :catch_2d
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Single path segment is not a resource ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    const/4 v5, 0x2

    if-ne v2, v5, :cond_75

    .line 722
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_57
    if-eqz v0, :cond_5e

    .line 729
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 727
    :cond_5e
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No resource found for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 724
    :cond_75
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More than two path segments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 711
    :cond_8c
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 706
    :catch_a3
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package found for authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 701
    :cond_ba
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 472
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    .line 474
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    iget-object p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 479
    iget-object p2, p2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 480
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-object p0
.end method

.method public getQueryRefinement()I
    .registers 1

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    return p0
.end method

.method getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 740
    :cond_4
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    .line 745
    :cond_b
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 746
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 747
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    .line 748
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    .line 749
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 752
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 754
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2f
    const-string v2, "search_suggest_query"

    .line 758
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 761
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_42

    const/4 p1, 0x1

    .line 765
    new-array v0, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v0, p1

    :goto_40
    move-object v7, v0

    goto :goto_46

    .line 767
    :cond_42
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_40

    :goto_46
    if-lez p3, :cond_51

    const-string p1, "limit"

    .line 771
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 774
    :cond_51
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 777
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 449
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    .line 451
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    iget-object p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 456
    iget-object p2, p2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 457
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-object p0
.end method

.method public hasStableIds()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 243
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 244
    new-instance p2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {p2, p1}, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 247
    sget p2, Landroid/support/v7/appcompat/R$id;->edit_query:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 248
    iget p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCommitIconResId:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .line 180
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 182
    invoke-virtual {p0}, Landroid/support/v7/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 2

    .line 188
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 190
    invoke-virtual {p0}, Landroid/support/v7/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 329
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 330
    iget-object p0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    .line 145
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_32

    .line 156
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v2, 0x32

    invoke-virtual {p0, v0, p1, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 160
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v0, "Search suggestions query threw an exception."

    .line 164
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    return-object v1

    :cond_32
    :goto_32
    return-object v1
.end method

.method public setQueryRefinement(I)V
    .registers 2

    .line 117
    iput p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    return-void
.end method
