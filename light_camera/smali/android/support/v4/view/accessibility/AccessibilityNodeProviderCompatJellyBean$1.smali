.class final Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompatJellyBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean;->newAccessibilityNodeProviderBridge(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)V
    .registers 2

    .line 41
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 44
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;

    invoke-interface {p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;->createAccessibilityNodeInfo(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;

    .line 53
    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 4

    .line 58
    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
