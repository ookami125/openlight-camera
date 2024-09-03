.class public Lopenlight/co/lib/widget/TextViewSemiBold;
.super Lopenlight/co/lib/widget/TextViewCustom;
.source "TextViewSemiBold.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Lopenlight/co/lib/widget/TextViewCustom;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewSemiBold;->setSemiBoldTypeFace()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/widget/TextViewCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewSemiBold;->setSemiBoldTypeFace()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/lib/widget/TextViewCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0}, Lopenlight/co/lib/widget/TextViewSemiBold;->setSemiBoldTypeFace()V

    return-void
.end method
