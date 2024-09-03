.class Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 65
    new-array v0, v3, [I

    const v1, 0x101026f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    const-string v0, "android.widget."

    const-string v1, "android.view."

    const-string v2, "android.webkit."

    .line 67
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 5

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 196
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_15

    .line 197
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2e

    .line 204
    :cond_15
    sget-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x0

    .line 205
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2a

    .line 207
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_2a
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2e
    :goto_2e
    return-void
.end method

.method private createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 214
    sget-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_36

    .line 219
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-eqz p3, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_21

    :cond_20
    move-object p3, p2

    :goto_21
    invoke-virtual {p1, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroid/view/View;

    .line 220
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 222
    sget-object p3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 223
    sget-object p1, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    const/4 p1, 0x1

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 226
    iget-object p0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_43

    return-object p0

    :catch_43
    const/4 p0, 0x0

    return-object p0
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 8

    const-string v0, "view"

    .line 158
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p2, "class"

    .line 159
    invoke-interface {p3, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_f
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 163
    :try_start_11
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 164
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p3, v3, v0

    const/4 p3, -0x1

    const/16 v3, 0x2e

    .line 166
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne p3, v3, :cond_47

    move p3, v2

    .line 167
    :goto_23
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v3, v3

    if-ge p3, v3, :cond_3e

    .line 168
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_30} :catch_5e
    .catchall {:try_start_11 .. :try_end_30} :catchall_54

    if-eqz v3, :cond_3b

    .line 183
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 184
    iget-object p0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p0, v0

    return-object v3

    :cond_3b
    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    .line 183
    :cond_3e
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 184
    iget-object p0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p0, v0

    return-object v1

    .line 175
    :cond_47
    :try_start_47
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_5e
    .catchall {:try_start_47 .. :try_end_4b} :catchall_54

    .line 183
    iget-object p2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 184
    iget-object p0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p0, v0

    return-object p1

    :catchall_54
    move-exception p1

    .line 183
    iget-object p2, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 184
    iget-object p0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p0, v0

    throw p1

    .line 183
    :catch_5e
    iget-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 184
    iget-object p0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p0, v0

    return-object v1
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .registers 6

    .line 239
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->View:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p2, :cond_10

    .line 243
    sget p2, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    goto :goto_11

    :cond_10
    move p2, v1

    :goto_11
    if-eqz p3, :cond_24

    if-nez p2, :cond_24

    .line 247
    sget p2, Landroid/support/v7/appcompat/R$styleable;->View_theme:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_24

    const-string p3, "AppCompatViewInflater"

    const-string v0, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 250
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_3c

    .line 256
    instance-of p1, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz p1, :cond_36

    move-object p1, p0

    check-cast p1, Landroid/support/v7/view/ContextThemeWrapper;

    .line 257
    invoke-virtual {p1}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I

    move-result p1

    if-eq p1, p2, :cond_3c

    .line 260
    :cond_36
    new-instance p1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {p1, p0, p2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, p1

    :cond_3c
    return-object p0
.end method


# virtual methods
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .registers 9
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p5, :cond_9

    if-eqz p1, :cond_9

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_a

    :cond_9
    move-object p1, p3

    :goto_a
    if-nez p6, :cond_e

    if-eqz p7, :cond_12

    .line 92
    :cond_e
    invoke-static {p1, p4, p6, p7}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p1

    :cond_12
    if-eqz p8, :cond_18

    .line 95
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_18
    const/4 p5, 0x0

    const/4 p6, -0x1

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p7

    sparse-switch p7, :sswitch_data_10c

    goto/16 :goto_ac

    :sswitch_23
    const-string p7, "Button"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/4 p6, 0x2

    goto/16 :goto_ac

    :sswitch_2e
    const-string p7, "EditText"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/4 p6, 0x3

    goto/16 :goto_ac

    :sswitch_39
    const-string p7, "CheckBox"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/4 p6, 0x6

    goto/16 :goto_ac

    :sswitch_44
    const-string p7, "AutoCompleteTextView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/16 p6, 0x9

    goto :goto_ac

    :sswitch_4f
    const-string p7, "ImageView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/4 p6, 0x1

    goto :goto_ac

    :sswitch_59
    const-string p7, "RadioButton"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/4 p6, 0x7

    goto :goto_ac

    :sswitch_63
    const-string p7, "Spinner"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/4 p6, 0x4

    goto :goto_ac

    :sswitch_6d
    const-string p7, "SeekBar"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/16 p6, 0xc

    goto :goto_ac

    :sswitch_78
    const-string p7, "ImageButton"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/4 p6, 0x5

    goto :goto_ac

    :sswitch_82
    const-string p7, "TextView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/4 p6, 0x0

    goto :goto_ac

    :sswitch_8c
    const-string p7, "MultiAutoCompleteTextView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/16 p6, 0xa

    goto :goto_ac

    :sswitch_97
    const-string p7, "CheckedTextView"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/16 p6, 0x8

    goto :goto_ac

    :sswitch_a2
    const-string p7, "RatingBar"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_ac

    const/16 p6, 0xb

    :cond_ac
    :goto_ac
    packed-switch p6, :pswitch_data_142

    goto :goto_fd

    .line 139
    :pswitch_b0
    new-instance p5, Landroid/support/v7/widget/AppCompatSeekBar;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 136
    :pswitch_b6
    new-instance p5, Landroid/support/v7/widget/AppCompatRatingBar;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 133
    :pswitch_bc
    new-instance p5, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 130
    :pswitch_c2
    new-instance p5, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 127
    :pswitch_c8
    new-instance p5, Landroid/support/v7/widget/AppCompatCheckedTextView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 124
    :pswitch_ce
    new-instance p5, Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 121
    :pswitch_d4
    new-instance p5, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 118
    :pswitch_da
    new-instance p5, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 115
    :pswitch_e0
    new-instance p5, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 112
    :pswitch_e6
    new-instance p5, Landroid/support/v7/widget/AppCompatEditText;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 109
    :pswitch_ec
    new-instance p5, Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 106
    :pswitch_f2
    new-instance p5, Landroid/support/v7/widget/AppCompatImageView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_fd

    .line 103
    :pswitch_f8
    new-instance p5, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {p5, p1, p4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_fd
    if-nez p5, :cond_105

    if-eq p3, p1, :cond_105

    .line 146
    invoke-direct {p0, p1, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p5

    :cond_105
    if-eqz p5, :cond_10a

    .line 151
    invoke-direct {p0, p5, p4}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    :cond_10a
    return-object p5

    nop

    :sswitch_data_10c
    .sparse-switch
        -0x7404ceea -> :sswitch_a2
        -0x56c015e7 -> :sswitch_97
        -0x503aa7ad -> :sswitch_8c
        -0x37f7066e -> :sswitch_82
        -0x37e04bb3 -> :sswitch_78
        -0x274065a5 -> :sswitch_6d
        -0x1440b607 -> :sswitch_63
        0x2e46a6ed -> :sswitch_59
        0x431b5280 -> :sswitch_4f
        0x5445f9ba -> :sswitch_44
        0x5f7507c3 -> :sswitch_39
        0x63577677 -> :sswitch_2e
        0x77471352 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_f2
        :pswitch_ec
        :pswitch_e6
        :pswitch_e0
        :pswitch_da
        :pswitch_d4
        :pswitch_ce
        :pswitch_c8
        :pswitch_c2
        :pswitch_bc
        :pswitch_b6
        :pswitch_b0
    .end packed-switch
.end method
