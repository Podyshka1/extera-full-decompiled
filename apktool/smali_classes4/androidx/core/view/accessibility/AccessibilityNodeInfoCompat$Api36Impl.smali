.class abstract Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api36Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api36Impl"
.end annotation


# direct methods
.method static synthetic access$000(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    .line 5769
    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api36Impl;->getChecked(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result p0

    return p0
.end method

.method private static getChecked(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    .line 5803
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChecked()I

    move-result p0

    return p0
.end method

.method public static getExpandedState(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 0

    .line 5776
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExpandedState()I

    move-result p0

    return p0
.end method

.method public static getSupplementalDescription(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 5793
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSupplementalDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static isFieldRequired(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    .line 5784
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFieldRequired()Z

    move-result p0

    return p0
.end method
