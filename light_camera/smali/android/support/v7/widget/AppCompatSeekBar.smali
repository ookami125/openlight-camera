.class public Landroid/support/v7/widget/AppCompatSeekBar;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private final mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 43
    sget v0, Landroid/support/v7/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p1, Landroid/support/v7/widget/AppCompatSeekBarHelper;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;-><init>(Landroid/widget/SeekBar;)V

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    .line 50
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .line 61
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 62
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->drawableStateChanged()V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .line 68
    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    .line 69
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    monitor-enter p0

    .line 55
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->drawTickMarks(Landroid/graphics/Canvas;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 57
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    .line 54
    monitor-exit p0

    throw p1
.end method
