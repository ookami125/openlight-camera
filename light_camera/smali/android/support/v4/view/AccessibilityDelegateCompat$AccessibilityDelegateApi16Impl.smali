.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateApi16Impl;
.super Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 171
    new-instance p1, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {p1, p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Landroid/view/View$AccessibilityDelegate;
    .registers 3

    .line 111
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateApi16Impl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateApi16Impl$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateApi16Impl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-object v0
.end method

.method public performAccessibilityAction(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .line 179
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
