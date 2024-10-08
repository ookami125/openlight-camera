.class public Landroid/support/v7/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/SupportMenuInflater$MenuState;,
        Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field final mActionViewConstructorArguments:[Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 80
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 82
    sget-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 98
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 99
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 228
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-object p1

    .line 231
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_14

    .line 232
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    return-object p1
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater$MenuState;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/view/SupportMenuInflater$MenuState;-><init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :cond_9
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p3, v1, :cond_35

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "menu"

    .line 153
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_3b

    .line 159
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expecting menu, got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    if-ne p3, v2, :cond_9

    :goto_3b
    const/4 v1, 0x0

    const/4 v3, 0x0

    move v4, p3

    move-object v6, v1

    move p3, v3

    move v5, p3

    :goto_41
    if-nez p3, :cond_d1

    packed-switch v4, :pswitch_data_d2

    goto/16 :goto_cb

    .line 190
    :pswitch_48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_58

    .line 191
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    move-object v6, v1

    move v5, v3

    goto/16 :goto_cb

    :cond_58
    const-string v7, "group"

    .line 194
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 195
    invoke-virtual {v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    goto/16 :goto_cb

    :cond_65
    const-string v7, "item"

    .line 196
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->hasAddedItem()Z

    move-result v4

    if-nez v4, :cond_cb

    .line 200
    iget-object v4, v0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v4, :cond_83

    iget-object v4, v0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 201
    invoke-virtual {v4}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 202
    invoke-virtual {v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    goto :goto_cb

    .line 204
    :cond_83
    invoke-virtual {v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addItem()V

    goto :goto_cb

    :cond_87
    const-string v7, "menu"

    .line 207
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cb

    move p3, v2

    goto :goto_cb

    :pswitch_91
    if-eqz v5, :cond_94

    goto :goto_cb

    .line 172
    :cond_94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "group"

    .line 173
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 174
    invoke-virtual {v0, p2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_cb

    :cond_a4
    const-string v7, "item"

    .line 175
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 176
    invoke-virtual {v0, p2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_cb

    :cond_b0
    const-string v7, "menu"

    .line 177
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 179
    invoke-virtual {v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v4

    .line 182
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_cb

    :cond_c0
    move v5, v2

    move-object v6, v4

    goto :goto_cb

    .line 213
    :pswitch_c3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected end of document"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_cb
    :goto_cb
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto/16 :goto_41

    :cond_d1
    return-void

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_91
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method getRealOwner()Ljava/lang/Object;
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 222
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 224
    :cond_c
    iget-object p0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object p0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 5

    .line 116
    instance-of v0, p2, Landroid/support/v4/internal/view/SupportMenu;

    if-nez v0, :cond_8

    .line 117
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 123
    :try_start_9
    iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_13} :catch_34
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_2b
    .catchall {:try_start_9 .. :try_end_13} :catchall_29

    .line 124
    :try_start_13
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 126
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_1a} :catch_26
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_23
    .catchall {:try_start_13 .. :try_end_1a} :catchall_20

    if-eqz p1, :cond_1f

    .line 132
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1f
    return-void

    :catchall_20
    move-exception p0

    move-object v0, p1

    goto :goto_3d

    :catch_23
    move-exception p0

    move-object v0, p1

    goto :goto_2c

    :catch_26
    move-exception p0

    move-object v0, p1

    goto :goto_35

    :catchall_29
    move-exception p0

    goto :goto_3d

    :catch_2b
    move-exception p0

    .line 130
    :goto_2c
    :try_start_2c
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "Error inflating menu XML"

    invoke-direct {p1, p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_34
    move-exception p0

    .line 128
    :goto_35
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "Error inflating menu XML"

    invoke-direct {p1, p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_29

    :goto_3d
    if-eqz v0, :cond_42

    .line 132
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_42
    throw p0
.end method
